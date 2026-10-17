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
import Seq.B000.C011
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
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
# A321301: Lexicographically last sequence of positive integers whose terms can be grouped and summed to produce the natural numbers as well as the prime numbers.

The programs for A321301, the canonical program `A321301.P11310815353529762310` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321301 has offset 1).

The definition of A321301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321301.P11689276233555648173

`Δ[∪[∑[n], A007504(n)]]`
-/

namespace A321301.P11689276233555648173
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A321301.P11689276233555648173

namespace A321301

/-- `Δ[∪[∑[n], A007504(n)]]` -/
def P11689276233555648173.Spec : Prop :=
  ∀ n, P11689276233555648173.a n = A321301 (n + 1)

end A321301

/-! ## A321301.P12181993578901606162

`Δ[∪[A014284(n+1)-1, ∑[n]]]`
-/

namespace A321301.P12181993578901606162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A321301.P12181993578901606162

namespace A321301

/-- `Δ[∪[A014284(n+1)-1, ∑[n]]]` -/
def P12181993578901606162.Spec : Prop :=
  ∀ n, P12181993578901606162.a n = A321301 (n + 1)

end A321301

/-! ## A321301.P11310815353529762310

`Δ[∪[A036439(n+1)-2, ∑[n]]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321301

/-- `Δ[∪[A036439(n+1)-2, ∑[n]]]` -/
def P11310815353529762310.Spec : Prop :=
  ∀ n, P11310815353529762310.a n = A321301 (n + 1)

theorem P11310815353529762310.correct : P11310815353529762310.Spec := by
  intro n
  simp only [A321301, Nat.add_sub_cancel]

end A321301

/-! ## A321301.P4737988022859884733

`Δ[∪[A175965(n+2)-2, ∑[n]]]`
-/

namespace A321301.P4737988022859884733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 2) - 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A321301.P4737988022859884733

namespace A321301

/-- `Δ[∪[A175965(n+2)-2, ∑[n]]]` -/
def P4737988022859884733.Spec : Prop :=
  ∀ n, P4737988022859884733.a n = A321301 (n + 1)

end A321301

/-! ## A321301.P12203989582391086352

`Δ[∪[A007504(n), A000217(n)]]`
-/

namespace A321301.P12203989582391086352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A321301.P12203989582391086352

namespace A321301

/-- `Δ[∪[A007504(n), A000217(n)]]` -/
def P12203989582391086352.Spec : Prop :=
  ∀ n, P12203989582391086352.a n = A321301 (n + 1)

end A321301

/-!
# A321303: a(n) = floor(d(n) * n^(11/2)) where d(n) is the number of divisors of n.

The programs for A321303, the canonical program `A321303.P1336627139751283311` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321303 has offset 1).

The definition of A321303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321303.P1336627139751283311

`floor(sqrt((n+1)^11)*A000005(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321303

/-- `floor(sqrt((n+1)^11)*A000005(n+1))` -/
def P1336627139751283311.Spec : Prop :=
  ∀ n, P1336627139751283311.a n = A321303 (n + 1)

theorem P1336627139751283311.correct : P1336627139751283311.Spec := by
  intro n
  simp only [A321303, Nat.add_sub_cancel]

end A321303

/-!
# A321307: The number of connected weighted cubic graphs with weight n on 8 vertices.

The programs for A321307, there is no canonical definition to state claims against.
-/

/-! ## A321307.P8583080826388547703

`A202308(A202308(n)!)+2`
-/

namespace A321307.P8583080826388547703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 (Nat.factorial (A202308 n).toNat) + 2

end

end A321307.P8583080826388547703

/-!
# A321308: Practical numbers k such that k^4 + 2 is also practical.

The programs for A321308, there is no canonical definition to state claims against.
-/

/-! ## A321308.P1708778413248015781

`A087086(A382647(n+1))`
-/

namespace A321308.P1708778413248015781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A382647 (n + 1)).toNat

end

end A321308.P1708778413248015781

/-!
# A321309: Coefficients of the power series expansion at p=1 of the growth rate C(p) of the length of the longest increasing path in an Erdös-Rényi graph with edge probability p.

The programs for A321309, there is no canonical definition to state claims against.
-/

/-! ## A321309.P6316075736016298464

`A004526(2*A373091(n))`
-/

namespace A321309.P6316075736016298464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A373091 n).toNat

end

end A321309.P6316075736016298464

/-! ## A321309.P15346677109815268158

`A006370(2*A373091(n))`
-/

namespace A321309.P15346677109815268158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A373091 n).toNat

end

end A321309.P15346677109815268158

/-! ## A321309.P13681219370426460486

`A065033(2*A373091(n))`
-/

namespace A321309.P13681219370426460486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A373091 n).toNat

end

end A321309.P13681219370426460486

/-! ## A321309.P15552397060918332919

`A289440(2*A373091(n))`
-/

namespace A321309.P15552397060918332919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (2 * A373091 n).toNat

end

end A321309.P15552397060918332919

/-! ## A321309.P15925034610060960075

`A373091(n)%A074841(n+1)`
-/

namespace A321309.P15925034610060960075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373091 n) (A074841 (n + 1))

end

end A321309.P15925034610060960075

/-!
# A321311: Number of linear chord diagrams having n+2 chords and minimal chord length n.

The programs for A321311, the canonical program `A321311.P15851712544406314478` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321311 has offset 1).

The definition of A321311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321311.P15851712544406314478

`A293156(n+1)-5*2^n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A321311

/-- `A293156(n+1)-5*2^n` -/
def P15851712544406314478.Spec : Prop :=
  ∀ n, P15851712544406314478.a n = A321311 (n + 1)

theorem P15851712544406314478.correct : P15851712544406314478.Spec := by
  intro n
  simp only [A321311, Nat.add_sub_cancel]

end A321311

/-! ## A321311.P2638923448611813109

`5*a(n-1)-6*a(n-2)` with `a(0)=10, a(1)=26, a(2)=79, a(3)=252, a(4)=796`
-/

namespace A321311.P2638923448611813109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 26, 79, 252, 796] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A321311.P2638923448611813109

namespace A321311

/-- `5*a(n-1)-6*a(n-2)` -/
def P2638923448611813109.Spec : Prop :=
  ∀ n, P2638923448611813109.a n = A321311 (n + 1)

end A321311

/-! ## A321311.P12769958498351420452

`A293881((n+2)*(n+7)/2)`
-/

namespace A321311.P12769958498351420452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((n + 7 : ℚ) / 2))).toNat

end

end A321311.P12769958498351420452

namespace A321311

/-- `A293881((n+2)*(n+7)/2)` -/
def P12769958498351420452.Spec : Prop :=
  ∀ n, P12769958498351420452.a n = A321311 (n + 1)

end A321311

/-!
# A321312: A(n,k) = n^^k is the k-th tetration of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A321312, there is no canonical definition to state claims against.
-/

/-! ## A321312.P236481301876233989

`A171882(∑[2*n]%comp[∑[n]])`
-/

namespace A321312.P236481301876233989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171882 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A321312.P236481301876233989

/-! ## A321312.P2355597096391407240

`A171882(∑[char[∑[n]]]²-(n+1))`
-/

namespace A321312.P2355597096391407240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171882 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A321312.P2355597096391407240

/-! ## A321312.P9445572158330381646

`lcm((-1)^n, A171882(A061579(n)))`
-/

namespace A321312.P9445572158330381646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A171882 (A061579 n).toNat)

end

end A321312.P9445572158330381646

/-! ## A321312.P13758765167260694315

`A185284(n)+A171882(A061579(n))`
-/

namespace A321312.P13758765167260694315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A171882 (A061579 n).toNat

end

end A321312.P13758765167260694315

/-! ## A321312.P3811555458603005630

`A171882(A061579(n))^A178334(n)`
-/

namespace A321312.P3811555458603005630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171882 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A321312.P3811555458603005630

/-!
# A321313: Number of permutations of [n] with equal lengths of the longest increasing subsequence and the longest decreasing subsequence.

The programs for A321313, there is no canonical definition to state claims against.
-/

/-! ## A321313.P1440339391992150559

`A321315(n+1)-A321314(n+1)`
-/

namespace A321313.P1440339391992150559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321315 (n + 1) - A321314 (n + 1)

end

end A321313.P1440339391992150559

/-! ## A321313.P7705563481902140875

`A321316(∑[2*n]+1)`
-/

namespace A321313.P7705563481902140875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A321313.P7705563481902140875

/-! ## A321313.P3144586444100455333

`2*A321315(n+1)-record[A047920(n)]`
-/

namespace A321313.P3144586444100455333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321315 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321313.P3144586444100455333

/-! ## A321313.P8136935124730766657

`record[A047920(n)]-2*A321314(n+1)`
-/

namespace A321313.P8136935124730766657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A321314 (n + 1)

end

end A321313.P8136935124730766657

/-! ## A321313.P10435433934716384278

`2*A321315(n+1)-record[A094587(n)]`
-/

namespace A321313.P10435433934716384278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321315 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321313.P10435433934716384278

/-! ## A321313.P4679341273458595577

`record[A094587(n)]-2*A321314(n+1)`
-/

namespace A321313.P4679341273458595577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A321314 (n + 1)

end

end A321313.P4679341273458595577

/-! ## A321313.P17377852799358220647

`2*A321315(n+1)-record[A098361(n)]`
-/

namespace A321313.P17377852799358220647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321315 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321313.P17377852799358220647

/-! ## A321313.P9141086586210206867

`record[A098361(n)]-2*A321314(n+1)`
-/

namespace A321313.P9141086586210206867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A321314 (n + 1)

end

end A321313.P9141086586210206867

/-! ## A321313.P6553472103599728949

`A000142(n+1)-(A321314(n+1)+A321314(n+1))`
-/

namespace A321313.P6553472103599728949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - (A321314 (n + 1) + A321314 (n + 1))

end

end A321313.P6553472103599728949

/-! ## A321313.P4560823387185528452

`A321315(n+1)+A321315(n+1)-A000142(n+1)`
-/

namespace A321313.P4560823387185528452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321315 (n + 1) + (A321315 (n + 1) - A000142 (n + 1))

end

end A321313.P4560823387185528452

/-!
# A321314: Number of permutations of [n] where the length of the longest increasing subsequence is larger than the length of the longest decreasing subsequence.

The programs for A321314, there is no canonical definition to state claims against.
-/

/-! ## A321314.P15540547490350539969

`A321315(n+1)-A321313(n+1)`
-/

namespace A321314.P15540547490350539969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321315 (n + 1) - A321313 (n + 1)

end

end A321314.P15540547490350539969

/-! ## A321314.P1893602264386310709

`record[A047920(n)]-A321315(n+1)`
-/

namespace A321314.P1893602264386310709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A321315 (n + 1)

end

end A321314.P1893602264386310709

/-! ## A321314.P4922832307600256593

`record[A094587(n)]-A321315(n+1)`
-/

namespace A321314.P4922832307600256593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A321315 (n + 1)

end

end A321314.P4922832307600256593

/-! ## A321314.P17155582313381074886

`record[A098361(n)]-A321315(n+1)`
-/

namespace A321314.P17155582313381074886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A321315 (n + 1)

end

end A321314.P17155582313381074886

/-! ## A321314.P10766539434430373883

`A000142(n+1)-A321315(n+1)`
-/

namespace A321314.P10766539434430373883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A321315 (n + 1)

end

end A321314.P10766539434430373883

/-!
# A321315: Number of permutations of [n] where the length of the longest increasing subsequence is larger than or equal to the length of the longest decreasing subsequence.

The programs for A321315, there is no canonical definition to state claims against.
-/

/-! ## A321315.P16472915367244422061

`A321313(n+1)+A321314(n+1)`
-/

namespace A321315.P16472915367244422061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321313 (n + 1) + A321314 (n + 1)

end

end A321315.P16472915367244422061

/-! ## A321315.P1801166450036930109

`record[A047920(n)]-A321314(n+1)`
-/

namespace A321315.P1801166450036930109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A321314 (n + 1)

end

end A321315.P1801166450036930109

/-! ## A321315.P6152821478072341994

`record[A094587(n)]-A321314(n+1)`
-/

namespace A321315.P6152821478072341994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A321314 (n + 1)

end

end A321315.P6152821478072341994

/-! ## A321315.P5606704165757479387

`record[A098361(n)]-A321314(n+1)`
-/

namespace A321315.P5606704165757479387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A321314 (n + 1)

end

end A321315.P5606704165757479387

/-! ## A321315.P10269504286718388427

`A000142(n+1)-A321314(n+1)`
-/

namespace A321315.P10269504286718388427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A321314 (n + 1)

end

end A321315.P10269504286718388427

/-! ## A321315.P1457432905157596997

`A038722(A038722(n+1))!-A321314(n+1)`
-/

namespace A321315.P1457432905157596997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A038722 (A038722 (n + 1)).toNat).toNat : ℤ) - A321314 (n + 1)

end

end A321315.P1457432905157596997

/-!
# A321316: Number T(n,k) of permutations of [n] whose difference between the length of the longest increasing subsequence and the length of the longest decreasing subsequence equals k; triangle T(n,k), n >= 1, 1-n <= k <= n-1, read by rows.

The programs for A321316, there is no canonical definition to state claims against.
-/

/-! ## A321316.P8961204104217007339

`A051903(A130321(A113206(n)²²))`
-/

namespace A321316.P8961204104217007339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A130321 ((A113206 n ^ 2) ^ 2).toNat).toNat

end

end A321316.P8961204104217007339

/-! ## A321316.P16903223941408766124

`and(A094528(A272867(n)), A322193(n))`
-/

namespace A321316.P16903223941408766124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094528 (A272867 n).toNat) (A322193 n)

end

end A321316.P16903223941408766124

/-! ## A321316.P16059290132220514921

`(A260492(n)+A185044(A099608(n)))²`
-/

namespace A321316.P16059290132220514921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260492 n + A185044 (A099608 n).toNat) ^ 2

end

end A321316.P16059290132220514921

/-! ## A321316.P4326260075382610765

`A070435(A385165(n+1)-A260492(n))`
-/

namespace A321316.P4326260075382610765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070435 (A385165 (n + 1) - A260492 n).toNat

end

end A321316.P4326260075382610765

/-! ## A321316.P11493328087229796250

`and(A171692(n), A356706(A000217(n+1)))`
-/

namespace A321316.P11493328087229796250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171692 n) (A356706 (A000217 (n + 1)).toNat)

end

end A321316.P11493328087229796250

/-!
# A321318: Number of distinct values obtained by partitioning the binary representation of n into consecutive blocks, and then summing the numbers represented by the blocks.

The programs for A321318, there is no canonical definition to state claims against.
-/

/-! ## A321318.P8064073473332439344

`A348674(A007088(n+1))`
-/

namespace A321318.P8064073473332439344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 (A007088 (n + 1)).toNat

end

end A321318.P8064073473332439344

/-! ## A321318.P8431209783209899826

`A348674(A353728(n+1))`
-/

namespace A321318.P8431209783209899826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 (A353728 (n + 1)).toNat

end

end A321318.P8431209783209899826

/-! ## A321318.P17620236195436573694

`A348674(∑[A138342(n+1)])`
-/

namespace A321318.P17620236195436573694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321318.P17620236195436573694

/-! ## A321318.P12383800909477801723

`A348674(record[A182620(n+1)])`
-/

namespace A321318.P12383800909477801723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321318.P12383800909477801723

/-!
# A321319: Smallest power of 2 obtainable by partitioning the binary representation of n into consecutive blocks and then summing.

The programs for A321319, there is no canonical definition to state claims against.
-/

/-! ## A321319.P13767263367869508887

`gcd(A048896(n), A081445(A053148(n+1)))`
-/

namespace A321319.P13767263367869508887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048896 n) (A081445 (A053148 (n + 1)).toNat)

end

end A321319.P13767263367869508887

/-! ## A321319.P1989437980493946112

`A061142(A203254(A048896(n))%A001248(n+1))`
-/

namespace A321319.P1989437980493946112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (Int.tmod (A203254 (A048896 n).toNat) (A001248 (n + 1))).toNat

end

end A321319.P1989437980493946112

/-! ## A321319.P5023946969153780253

`gcd(A001405(n), A231746(A347050(2*n+3)))`
-/

namespace A321319.P5023946969153780253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 n) (A231746 (A347050 (2 * n + 3)).toNat)

end

end A321319.P5023946969153780253

/-! ## A321319.P17238762093976862821

`gcd(A048896(n), A120359(A133687(n)))`
-/

namespace A321319.P17238762093976862821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048896 n) (A120359 (A133687 n).toNat)

end

end A321319.P17238762093976862821

/-! ## A321319.P15699047788269071856

`A003557(∑{d}[A160721(2*n+3), #])`
-/

namespace A321319.P15699047788269071856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160721 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A321319.P15699047788269071856

/-!
# A321320: Largest power of 2 obtainable by partitioning the binary representation of n into consecutive blocks and then summing.

The programs for A321320, there is no canonical definition to state claims against.
-/

/-! ## A321320.P4208175480676628163

`A006519(A163382(n+1))*A006519(A089408(n))`
-/

namespace A321320.P4208175480676628163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A163382 (n + 1)).toNat * A006519 (A089408 n).toNat

end

end A321320.P4208175480676628163

/-! ## A321320.P2217081804326918765

`gcd(A000196(A102376(n)), A064126(4*(n+1)))`
-/

namespace A321320.P2217081804326918765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A102376 n).toNat) (A064126 (4 * (n + 1)))

end

end A321320.P2217081804326918765

/-! ## A321320.P16419378280485758015

`A048896(n*A000034(A217283(n)))`
-/

namespace A321320.P16419378280485758015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 ((n : ℤ) * A000034 (A217283 n).toNat).toNat

end

end A321320.P16419378280485758015

/-! ## A321320.P14068854224471394068

`A048896(A059009(n)%A140260(2*n+3))`
-/

namespace A321320.P14068854224471394068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (Int.tmod (A059009 n) (A140260 (2 * n + 3))).toNat

end

end A321320.P14068854224471394068

/-! ## A321320.P15567049522902125778

`A304649(A283908(n+1))`
-/

namespace A321320.P15567049522902125778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304649 (A283908 (n + 1)).toNat

end

end A321320.P15567049522902125778

/-!
# A321321: Numbers n for which the "partition-and-add" operation applied to the binary representation of n results in only one power of 2.

The programs for A321321, there is no canonical definition to state claims against.
-/

/-! ## A321321.P1211149914996022098

`eq[1, A306922(n+1)]+1`
-/

namespace A321321.P1211149914996022098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A321321.P1211149914996022098

/-! ## A321321.P18117502143436753423

`record[A000027(n+1)/A306922(n+1)]`
-/

namespace A321321.P18117502143436753423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A306922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321321.P18117502143436753423

/-! ## A321321.P8120069492795335336

`record[A038722(A038722(n+1))/A306922(n+1)]`
-/

namespace A321321.P8120069492795335336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A038722 (n + 1)).toNat : ℚ) / (A306922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321321.P8120069492795335336

/-! ## A321321.P16326363119644039535

`record[A028242(2*n)/A306922(n+1)]`
-/

namespace A321321.P16326363119644039535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A306922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321321.P16326363119644039535

/-! ## A321321.P6871864629590679673

`record[A008619(n)/A306922(A008619(n))]`
-/

namespace A321321.P6871864629590679673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A306922 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321321.P6871864629590679673

/-! ## A321321.P17667672420240420188

`record[A194272(n+1)/A306922(A194272(n+1))]`
-/

namespace A321321.P17667672420240420188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194272 (n + 1) : ℚ) / (A306922 (A194272 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321321.P17667672420240420188

/-!
# A321322: a(n) = Sum_{d|n} mu(n/d)*J_2(d), where J_2() is the Jordan function (A007434).

The programs for A321322, the canonical program `A321322.P14680156201706380527` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321322 has offset 1).

The definition of A321322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321322.P14680156201706380527

`∑{d}[n+1, A000290(#)*A007427((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A321322

/-- `∑{d}[n+1, A000290(#)*A007427((n+1)/#)]` -/
def P14680156201706380527.Spec : Prop :=
  ∀ n, P14680156201706380527.a n = A321322 (n + 1)

theorem P14680156201706380527.correct : P14680156201706380527.Spec := by
  intro n
  simp only [A321322, Nat.add_sub_cancel]

end A321322

/-! ## A321322.P190663689250846884

`∑{d}[n+1, A001157(#)*A007428((n+1)/#)]`
-/

namespace A321322.P190663689250846884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P190663689250846884

namespace A321322

/-- `∑{d}[n+1, A001157(#)*A007428((n+1)/#)]` -/
def P190663689250846884.Spec : Prop :=
  ∀ n, P190663689250846884.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P10434530599551124773

`∑{d}[n+1, A002618(#)*A007431((n+1)/#)]`
-/

namespace A321322.P10434530599551124773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P10434530599551124773

namespace A321322

/-- `∑{d}[n+1, A002618(#)*A007431((n+1)/#)]` -/
def P10434530599551124773.Spec : Prop :=
  ∀ n, P10434530599551124773.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P6390356936771929672

`∑{d}[n+1, A007434(#)*A008683((n+1)/#)]`
-/

namespace A321322.P6390356936771929672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P6390356936771929672

namespace A321322

/-- `∑{d}[n+1, A007434(#)*A008683((n+1)/#)]` -/
def P6390356936771929672.Spec : Prop :=
  ∀ n, P6390356936771929672.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P15923686302447646391

`∑{d}[n+1, A000010(#)*A063445((n+1)/#)]`
-/

namespace A321322.P15923686302447646391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P15923686302447646391

namespace A321322

/-- `∑{d}[n+1, A000010(#)*A063445((n+1)/#)]` -/
def P15923686302447646391.Spec : Prop :=
  ∀ n, P15923686302447646391.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P10817798784080125539

`∑{d}[n+1, A007432(#)*A057660((n+1)/#)]`
-/

namespace A321322.P10817798784080125539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P10817798784080125539

namespace A321322

/-- `∑{d}[n+1, A007432(#)*A057660((n+1)/#)]` -/
def P10817798784080125539.Spec : Prop :=
  ∀ n, P10817798784080125539.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P16787801715361117652

`∑{d}[n+1, A046692(#)*A069097((n+1)/#)]`
-/

namespace A321322.P16787801715361117652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P16787801715361117652

namespace A321322

/-- `∑{d}[n+1, A046692(#)*A069097((n+1)/#)]` -/
def P16787801715361117652.Spec : Prop :=
  ∀ n, P16787801715361117652.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P302391775123806550

`∑{d}[n+1, A007433(#)*A247343((n+1)/#)]`
-/

namespace A321322.P302391775123806550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P302391775123806550

namespace A321322

/-- `∑{d}[n+1, A007433(#)*A247343((n+1)/#)]` -/
def P302391775123806550.Spec : Prop :=
  ∀ n, P302391775123806550.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P15949530010701400238

`∑{d}[n+1, A140697(#)*A158523((n+1)/#)]`
-/

namespace A321322.P15949530010701400238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140697 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P15949530010701400238

namespace A321322

/-- `∑{d}[n+1, A140697(#)*A158523((n+1)/#)]` -/
def P15949530010701400238.Spec : Prop :=
  ∀ n, P15949530010701400238.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P11327185029654782910

`∑{d}[n+1, A065958(#)*A326415((n+1)/#)]`
-/

namespace A321322.P11327185029654782910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P11327185029654782910

namespace A321322

/-- `∑{d}[n+1, A065958(#)*A326415((n+1)/#)]` -/
def P11327185029654782910.Spec : Prop :=
  ∀ n, P11327185029654782910.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P6513234807109158881

`∑{d}[n+1, A055615(#)*A341772((n+1)/#)]`
-/

namespace A321322.P6513234807109158881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P6513234807109158881

namespace A321322

/-- `∑{d}[n+1, A055615(#)*A341772((n+1)/#)]` -/
def P6513234807109158881.Spec : Prop :=
  ∀ n, P6513234807109158881.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P4124499936615378163

`∑{d}[n+1, A053822(#)*A360428((n+1)/#)]`
-/

namespace A321322.P4124499936615378163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P4124499936615378163

namespace A321322

/-- `∑{d}[n+1, A053822(#)*A360428((n+1)/#)]` -/
def P4124499936615378163.Spec : Prop :=
  ∀ n, P4124499936615378163.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P17575772822333140962

`∑{d}[n+1, A053825(#)*A368743((n+1)/#)]`
-/

namespace A321322.P17575772822333140962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P17575772822333140962

namespace A321322

/-- `∑{d}[n+1, A053825(#)*A368743((n+1)/#)]` -/
def P17575772822333140962.Spec : Prop :=
  ∀ n, P17575772822333140962.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P15964200252621744410

`∑{d}[n+1, A053826(#)*A372926((n+1)/#)]`
-/

namespace A321322.P15964200252621744410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053826 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P15964200252621744410

namespace A321322

/-- `∑{d}[n+1, A053826(#)*A372926((n+1)/#)]` -/
def P15964200252621744410.Spec : Prop :=
  ∀ n, P15964200252621744410.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P11397677515543633174

`∑{d}[n+1, A143275(#)*A340850((n+1)/#)]`
-/

namespace A321322.P11397677515543633174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P11397677515543633174

namespace A321322

/-- `∑{d}[n+1, A143275(#)*A340850((n+1)/#)]` -/
def P11397677515543633174.Spec : Prop :=
  ∀ n, P11397677515543633174.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P13564701908915956944

`∑{d}[n+1, A178448(#)*A372927((n+1)/#)]`
-/

namespace A321322.P13564701908915956944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178448 d * A372927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P13564701908915956944

namespace A321322

/-- `∑{d}[n+1, A178448(#)*A372927((n+1)/#)]` -/
def P13564701908915956944.Spec : Prop :=
  ∀ n, P13564701908915956944.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P1796044388779949799

`∑{d}[n+1, A308422(#)*A327276((n+1)/#)]`
-/

namespace A321322.P1796044388779949799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308422 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P1796044388779949799

namespace A321322

/-- `∑{d}[n+1, A308422(#)*A327276((n+1)/#)]` -/
def P1796044388779949799.Spec : Prop :=
  ∀ n, P1796044388779949799.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P5403157795409731397

`∑{d}[n+1, A334657(#)*A338164((n+1)/#)]`
-/

namespace A321322.P5403157795409731397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A338164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P5403157795409731397

namespace A321322

/-- `∑{d}[n+1, A334657(#)*A338164((n+1)/#)]` -/
def P5403157795409731397.Spec : Prop :=
  ∀ n, P5403157795409731397.a n = A321322 (n + 1)

end A321322

/-! ## A321322.P5787507427175836428

`A326828(n+1)+A326828(n+1)-A007431(n+1)`
-/

namespace A321322.P5787507427175836428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326828 (n + 1) + (A326828 (n + 1) - A007431 (n + 1))

end

end A321322.P5787507427175836428

namespace A321322

/-- `A326828(n+1)+A326828(n+1)-A007431(n+1)` -/
def P5787507427175836428.Spec : Prop :=
  ∀ n, P5787507427175836428.a n = A321322 (n + 1)

end A321322

/-!
# A321324: a(n) = (n^2 - c(n)) / 7 + 1 where c(n) = c(-n) = c(n+7) for all n in Z and a(n) = 1 if 0 <= n <=3 except a(1) = 0.

The programs for A321324, the canonical program `A321324.P8873558422711522564` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321324 has offset 0).

The definition of A321324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321324.P9317857391613156268

`char[7*n]+round(n²/7)`
-/

namespace A321324.P9317857391613156268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 7)

end

end A321324.P9317857391613156268

namespace A321324

/-- `char[7*n]+round(n²/7)` -/
def P9317857391613156268.Spec : Prop :=
  ∀ n, P9317857391613156268.a n = A321324 n

end A321324

/-! ## A321324.P9940030448964210844

`abs(A082784(n)+ceil((tan(2)+n²)/7))`
-/

namespace A321324.P9940030448964210844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082784 n + ⌈(Real.tan (2 : ℝ) + (n ^ 2 : ℝ)) / 7⌉|

end

end A321324.P9940030448964210844

namespace A321324

/-- `abs(A082784(n)+ceil((tan(2)+n²)/7))` -/
def P9940030448964210844.Spec : Prop :=
  ∀ n, P9940030448964210844.a n = A321324 n

end A321324

/-! ## A321324.P2272909620555173263

`floor(A056833(n)+tan(A082784(n)))`
-/

namespace A321324.P2272909620555173263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056833 n : ℝ) + Real.tan (A082784 n : ℝ)⌋

end

end A321324.P2272909620555173263

namespace A321324

/-- `floor(A056833(n)+tan(A082784(n)))` -/
def P2272909620555173263.Spec : Prop :=
  ∀ n, P2272909620555173263.a n = A321324 n

end A321324

/-! ## A321324.P8873558422711522564

`abs(A082784(n)+Δ[A173721(abs(1-n))])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A321324

/-- `abs(A082784(n)+Δ[A173721(abs(1-n))])` -/
def P8873558422711522564.Spec : Prop :=
  ∀ n, P8873558422711522564.a n = A321324 n

theorem P8873558422711522564.correct : P8873558422711522564.Spec := by
  intro n
  simp only [A321324]

end A321324

/-! ## A321324.P11156568926554087556

`∑[Δ[floor((n²-n)/7)]-A131372(2*n+1)]`
-/

namespace A321324.P11156568926554087556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 7⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A131372 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321324.P11156568926554087556

namespace A321324

/-- `∑[Δ[floor((n²-n)/7)]-A131372(2*n+1)]` -/
def P11156568926554087556.Spec : Prop :=
  ∀ n, P11156568926554087556.a n = A321324 n

end A321324

/-! ## A321324.P12194230068028156849

`abs(A082784(n)+∑[A083120(n+1)-A057359(2*n+1)])`
-/

namespace A321324.P12194230068028156849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 1) - A057359 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082784 n + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A321324.P12194230068028156849

namespace A321324

/-- `abs(A082784(n)+∑[A083120(n+1)-A057359(2*n+1)])` -/
def P12194230068028156849.Spec : Prop :=
  ∀ n, P12194230068028156849.a n = A321324 n

end A321324

/-! ## A321324.P13522581790300447449

`A057358(A082784(n)+A033638(n))`
-/

namespace A321324.P13522581790300447449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A082784 n + A033638 n).toNat

end

end A321324.P13522581790300447449

namespace A321324

/-- `A057358(A082784(n)+A033638(n))` -/
def P13522581790300447449.Spec : Prop :=
  ∀ n, P13522581790300447449.a n = A321324 n

end A321324

/-! ## A321324.P3177223616200799327

`A008611(round(A005918(n)/7))`
-/

namespace A321324.P3177223616200799327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A005918 n : ℚ) / 7)).toNat

end

end A321324.P3177223616200799327

namespace A321324

/-- `A008611(round(A005918(n)/7))` -/
def P3177223616200799327.Spec : Prop :=
  ∀ n, P3177223616200799327.a n = A321324 n

end A321324

/-! ## A321324.P91300986859150259

`A008611(A000124(n)-ceil(∑[(n+3)/7]))`
-/

namespace A321324.P91300986859150259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000124 n - ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉).toNat

end

end A321324.P91300986859150259

namespace A321324

/-- `A008611(A000124(n)-ceil(∑[(n+3)/7]))` -/
def P91300986859150259.Spec : Prop :=
  ∀ n, P91300986859150259.a n = A321324 n

end A321324

/-! ## A321324.P10153523067744489813

`A008611(A057358(A084684(n)))`
-/

namespace A321324.P10153523067744489813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A057358 (A084684 n).toNat).toNat

end

end A321324.P10153523067744489813

namespace A321324

/-- `A008611(A057358(A084684(n)))` -/
def P10153523067744489813.Spec : Prop :=
  ∀ n, P10153523067744489813.a n = A321324 n

end A321324

/-! ## A321324.P1836102338882191141

`A242062(n²+1)`
-/

namespace A321324.P1836102338882191141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (n ^ 2 + 1)

end

end A321324.P1836102338882191141

namespace A321324

/-- `A242062(n²+1)` -/
def P1836102338882191141.Spec : Prop :=
  ∀ n, P1836102338882191141.a n = A321324 n

end A321324

/-! ## A321324.P15835418643784902354

`A008612(A145569(n²))`
-/

namespace A321324.P15835418643784902354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A145569 (n ^ 2)).toNat

end

end A321324.P15835418643784902354

namespace A321324

/-- `A008612(A145569(n²))` -/
def P15835418643784902354.Spec : Prop :=
  ∀ n, P15835418643784902354.a n = A321324 n

end A321324

/-! ## A321324.P18084073013338759435

`A008611(A057357(n²+2))`
-/

namespace A321324.P18084073013338759435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A057357 (n ^ 2 + 2)).toNat

end

end A321324.P18084073013338759435

namespace A321324

/-- `A008611(A057357(n²+2))` -/
def P18084073013338759435.Spec : Prop :=
  ∀ n, P18084073013338759435.a n = A321324 n

end A321324

/-!
# A321327: Expansion of Product_{k>=0} (1 - x^(2^k))^(2^k).

The programs for A321327, there is no canonical definition to state claims against.
-/

/-! ## A321327.P12590366928699842969

`(-1)^n*A321336(floor(n/2))`
-/

namespace A321327.P12590366928699842969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A321336 ⌊(n : ℚ) / 2⌋.toNat

end

end A321327.P12590366928699842969

/-! ## A321327.P4680714871615627054

`A321336(floor(n/2))/A033999(n)`
-/

namespace A321327.P4680714871615627054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321336 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (A033999 n : ℚ)

end

end A321327.P4680714871615627054

/-! ## A321327.P1452026574862068435

`A321336(floor(n/2))/A062157(n+1)`
-/

namespace A321327.P1452026574862068435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321336 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (A062157 (n + 1) : ℚ)

end

end A321327.P1452026574862068435

/-! ## A321327.P6615662231170734254

`A321336(floor(n/2))/(A004442(n)-n)`
-/

namespace A321327.P6615662231170734254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321336 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A321327.P6615662231170734254

/-! ## A321327.P7761293435806940965

`Δ[A000035(n)*A321336(floor(n/2))]`
-/

namespace A321327.P7761293435806940965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A321336 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321327.P7761293435806940965

/-! ## A321327.P8041828410951993073

`A321336(floor(n/2))/A253414(2*n)`
-/

namespace A321327.P8041828410951993073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321336 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (A253414 (2 * n) : ℚ)

end

end A321327.P8041828410951993073

/-! ## A321327.P2993651310816691936

`A321336(floor(n/2))/A309873(n²+1)`
-/

namespace A321327.P2993651310816691936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321336 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (A309873 (n ^ 2 + 1) : ℚ)

end

end A321327.P2993651310816691936

/-!
# A321331: Triangle read by rows: T(n, k) = (k+1)*S2(n+1, k+1), for n >= k >= 0, and S2 = A048993 (Stirling2).

The programs for A321331, there is no canonical definition to state claims against.
-/

/-! ## A321331.P1641216450322781463

`(n-C(round(sqrt(2*n+1)), 2)+1)*A008277(n+1)`
-/

namespace A321331.P1641216450322781463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ) + 1) * A008277 (n + 1)

end

end A321331.P1641216450322781463

/-! ## A321331.P2956527806336177840

`A069138(n+1)-A008277(n+1)`
-/

namespace A321331.P2956527806336177840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069138 (n + 1) - A008277 (n + 1)

end

end A321331.P2956527806336177840

/-! ## A321331.P1053389123408552111

`A002260(n+1)*A008277(n+1)`
-/

namespace A321331.P1053389123408552111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008277 (n + 1)

end

end A321331.P1053389123408552111

/-! ## A321331.P7541809612189145386

`(A002262(n)+1)*A008277(n+1)`
-/

namespace A321331.P7541809612189145386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008277 (n + 1)

end

end A321331.P7541809612189145386

/-! ## A321331.P3969209857365121755

`A002260(n+1)*A048993(comp[∑[n]])`
-/

namespace A321331.P3969209857365121755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A321331.P3969209857365121755

/-! ## A321331.P800492361748753195

`(A002262(n)+1)*A048993(comp[∑[n]])`
-/

namespace A321331.P800492361748753195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A321331.P800492361748753195

/-! ## A321331.P6760402749464046480

`(1-A057944(n)+n)*A008277(n+1)`
-/

namespace A321331.P6760402749464046480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A008277 (n + 1)

end

end A321331.P6760402749464046480

/-! ## A321331.P2118661353390377216

`A002260(n+1)*A008278(A038722(n+1))`
-/

namespace A321331.P2118661353390377216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008278 (A038722 (n + 1)).toNat

end

end A321331.P2118661353390377216

/-! ## A321331.P18171722685957836320

`A002260(n+1)*A008278(A061579(n)+1)`
-/

namespace A321331.P18171722685957836320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008278 (A061579 n + 1).toNat

end

end A321331.P18171722685957836320

/-! ## A321331.P9966758418443716404

`A002260(n+1)*A285012(A064801(n+1))`
-/

namespace A321331.P9966758418443716404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A285012 (A064801 (n + 1)).toNat

end

end A321331.P9966758418443716404

/-! ## A321331.P15047481547577266028

`A002260(n+1)/A130321(n)*A075497(n+1)`
-/

namespace A321331.P15047481547577266028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A130321 n : ℚ) * (A075497 (n + 1) : ℚ)

end

end A321331.P15047481547577266028

/-! ## A321331.P12287109769445268597

`A002260(n+1)/A140303(n)*A075498(n+1)`
-/

namespace A321331.P12287109769445268597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A140303 n : ℚ) * (A075498 (n + 1) : ℚ)

end

end A321331.P12287109769445268597

/-! ## A321331.P11299433204156192645

`A008277(n+1)/A008279(n)*A121757(n)`
-/

namespace A321331.P11299433204156192645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A008279 n : ℚ) * (A121757 n : ℚ)

end

end A321331.P11299433204156192645

/-! ## A321331.P7211030395504520462

`A008277(n+1)/A130534(n)*A028421(n)`
-/

namespace A321331.P7211030395504520462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A130534 n : ℚ) * (A028421 n : ℚ)

end

end A321331.P7211030395504520462

/-! ## A321331.P13277782510024737715

`A002260(n+1)/A130321(n)²*A075499(n+1)`
-/

namespace A321331.P13277782510024737715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ) * (A075499 (n + 1) : ℚ)

end

end A321331.P13277782510024737715

/-! ## A321331.P13525406190175795797

`A002260(n+1)/A233543(n)*A028246(n+1)`
-/

namespace A321331.P13525406190175795797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A233543 n : ℚ) * (A028246 (n + 1) : ℚ)

end

end A321331.P13525406190175795797

/-! ## A321331.P15166818385449579192

`gcd(A075499(n+1), A075500(n+1))*A002260(n+1)`
-/

namespace A321331.P15166818385449579192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A075499 (n + 1)) (A075500 (n + 1)) : ℤ) * A002260 (n + 1)

end

end A321331.P15166818385449579192

/-! ## A321331.P13629167918430929588

`A019538(n+1)/A233543(n)`
-/

namespace A321331.P13629167918430929588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A321331.P13629167918430929588

/-! ## A321331.P3324214958615035025

`A019538(n+1)/A002262(n)!`
-/

namespace A321331.P3324214958615035025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A321331.P3324214958615035025

/-! ## A321331.P12675497350859772862

`A019538(n+1)/(A002260(n+1)-1)!`
-/

namespace A321331.P12675497350859772862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1) - 1).toNat : ℚ)

end

end A321331.P12675497350859772862

/-!
# A321333: Compound sequence with a(n) = A319198(A278040(n)), for n >= 0.

The programs for A321333, the canonical program `A321333.P13591099547563932162` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321333 has offset 0).

The definition of A321333 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, A319198, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321333.P13591099547563932162

`A319198(A278040(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A321333

/-- `A319198(A278040(n))` -/
def P13591099547563932162.Spec : Prop :=
  ∀ n, P13591099547563932162.a n = A321333 n

theorem P13591099547563932162.correct : P13591099547563932162.Spec := by
  intro n
  simp only [A321333]

end A321333

/-! ## A321333.P11164316039049749541

`∑[gcd(3, A278045(n))]`
-/

namespace A321333.P11164316039049749541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A278045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321333.P11164316039049749541

namespace A321333

/-- `∑[gcd(3, A278045(n))]` -/
def P11164316039049749541.Spec : Prop :=
  ∀ n, (P11164316039049749541.a n : ℤ) = A321333 n

end A321333

/-! ## A321333.P8218639844601203441

`∑[C(p?[A059832(n)], 2)]`
-/

namespace A321333.P8218639844601203441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321333.P8218639844601203441

namespace A321333

/-- `∑[C(p?[A059832(n)], 2)]` -/
def P8218639844601203441.Spec : Prop :=
  ∀ n, (P8218639844601203441.a n : ℤ) = A321333 n

end A321333

/-! ## A321333.P8730451100385308281

`2*A276796(n)+1+n`
-/

namespace A321333.P8730451100385308281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276796 n + 1 + (n : ℤ)

end

end A321333.P8730451100385308281

namespace A321333

/-- `2*A276796(n)+1+n` -/
def P8730451100385308281.Spec : Prop :=
  ∀ n, P8730451100385308281.a n = A321333 n

end A321333

/-! ## A321333.P11226891135728804237

`∑[C(p?[A059835(n)+1], 2)]`
-/

namespace A321333.P11226891135728804237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321333.P11226891135728804237

namespace A321333

/-- `∑[C(p?[A059835(n)+1], 2)]` -/
def P11226891135728804237.Spec : Prop :=
  ∀ n, (P11226891135728804237.a n : ℤ) = A321333 n

end A321333

/-! ## A321333.P7438290517998672089

`∑[3^(A003796(n+1)%2)]`
-/

namespace A321333.P7438290517998672089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod (A003796 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321333.P7438290517998672089

namespace A321333

/-- `∑[3^(A003796(n+1)%2)]` -/
def P7438290517998672089.Spec : Prop :=
  ∀ n, P7438290517998672089.a n = (A321333 n : ℚ)

end A321333

/-! ## A321333.P3700841303634932330

`∑[3^val(A275925(n+1), 2)]`
-/

namespace A321333.P3700841303634932330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A275925 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321333.P3700841303634932330

namespace A321333

/-- `∑[3^val(A275925(n+1), 2)]` -/
def P3700841303634932330.Spec : Prop :=
  ∀ n, (P3700841303634932330.a n : ℤ) = A321333 n

end A321333

/-! ## A321333.P13994026455374013653

`2*comp[A140101(n)]-(n+1)`
-/

namespace A321333.P13994026455374013653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A321333.P13994026455374013653

namespace A321333

/-- `2*comp[A140101(n)]-(n+1)` -/
def P13994026455374013653.Spec : Prop :=
  ∀ n, P13994026455374013653.a n = A321333 n

end A321333

/-! ## A321333.P4607190659674281921

`2*A140100(n+1)-(n+1)`
-/

namespace A321333.P4607190659674281921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140100 (n + 1) - (n + 1 : ℤ)

end

end A321333.P4607190659674281921

namespace A321333

/-- `2*A140100(n+1)-(n+1)` -/
def P4607190659674281921.Spec : Prop :=
  ∀ n, P4607190659674281921.a n = A321333 n

end A321333

/-! ## A321333.P18099086409603159921

`∑[or(1, char[A003144(n+1)]+1)]`
-/

namespace A321333.P18099086409603159921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321333.P18099086409603159921

namespace A321333

/-- `∑[or(1, char[A003144(n+1)]+1)]` -/
def P18099086409603159921.Spec : Prop :=
  ∀ n, (P18099086409603159921.a n : ℤ) = A321333 n

end A321333

/-!
# A321334: n such that all n - s are squarefree numbers where s is a squarefree number in range n/2 <= s < n.

The programs for A321334, there is no canonical definition to state claims against.
-/

/-! ## A321334.P2309437299327409571

`lt[A294233(n+2), 1]+2`
-/

namespace A321334.P2309437299327409571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A321334.P2309437299327409571

/-! ## A321334.P6622685696910215092

`eq[20, 21-a(A294233(n+1))]+1` with `a(0)=1`
-/

namespace A321334.P6622685696910215092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  21 - f2 (A294233 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A321334.P6622685696910215092

/-! ## A321334.P12598494496090978480

`record[A028920(A280663(n))]`
-/

namespace A321334.P12598494496090978480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A280663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321334.P12598494496090978480

/-! ## A321334.P8452044174652885448

`∑[A194636(A075003(n))]+1`
-/

namespace A321334.P8452044174652885448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A075003 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321334.P8452044174652885448

/-! ## A321334.P1794900841458012239

`∑[A322115(A001522(n))]+1`
-/

namespace A321334.P1794900841458012239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 (A001522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321334.P1794900841458012239

/-!
# A321335: Expansion of 1/(1 - x) * Product_{k>=0} 1/(1 - x^(2^k))^(2^(k+1)).

The programs for A321335, there is no canonical definition to state claims against.
-/

/-! ## A321335.P601555828827807108

`A073709(2*n)`
-/

namespace A321335.P601555828827807108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073709 (2 * n)

end

end A321335.P601555828827807108

/-! ## A321335.P9156291299664874917

`∑[A073710(n)]`
-/

namespace A321335.P9156291299664874917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321335.P9156291299664874917

/-! ## A321335.P17045042838604098850

`record[A073709(lcm(3, n)/3)]`
-/

namespace A321335.P17045042838604098850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073709 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321335.P17045042838604098850

/-! ## A321335.P17412274514109127431

`record[A073709(n)-n%2]`
-/

namespace A321335.P17412274514109127431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073709 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321335.P17412274514109127431

/-! ## A321335.P14446002370136050927

`record[A073709(A062157(n)+n)]`
-/

namespace A321335.P14446002370136050927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073709 (A062157 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321335.P14446002370136050927

/-! ## A321335.P9340099156672728075

`A073708(2*n+1)-A073708(2*n)`
-/

namespace A321335.P9340099156672728075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073708 (2 * n + 1) - A073708 (2 * n)

end

end A321335.P9340099156672728075

/-! ## A321335.P2058626692535235747

`record[Δ[Δ[A073707(n)]]]`
-/

namespace A321335.P2058626692535235747
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321335.P2058626692535235747

/-!
# A321336: Expansion of Product_{k>=0} (1 - x^(2^k))^(2^(k+1)).

The programs for A321336, there is no canonical definition to state claims against.
-/

/-! ## A321336.P11115522700509436884

`A321327(2*n)`
-/

namespace A321336.P11115522700509436884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321327 (2 * n)

end

end A321336.P11115522700509436884

/-! ## A321336.P336922540144498931

`-A321327(Δ[n²])`
-/

namespace A321336.P336922540144498931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A321327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321336.P336922540144498931

/-! ## A321336.P17115078251139726210

`A321327(A005843(n))^ceil(acot(n))`
-/

namespace A321336.P17115078251139726210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321327 (A005843 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A321336.P17115078251139726210

/-! ## A321336.P4088787541095227878

`A001222(gcd(n, n+1))-A321327(Δ[n²])`
-/

namespace A321336.P4088787541095227878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) - A321327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321336.P4088787541095227878

/-! ## A321336.P16368339137745735297

`A321327(A005843(n))%A073708(n+2)`
-/

namespace A321336.P16368339137745735297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321327 (A005843 n).toNat) (A073708 (n + 2))

end

end A321336.P16368339137745735297

/-!
# A321338: Number of solutions to dft(a)^2 + dft(b)^2 + dft(c)^2 + dft(d)^2 = 4n, where a,b,c,d are even +1,-1 sequences of length n and dft(x) denotes the discrete Fourier transform of x.

The programs for A321338, there is no canonical definition to state claims against.
-/

/-! ## A321338.P3662440279681358737

`16*A000005(A163448(n))`
-/

namespace A321338.P3662440279681358737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000005 (A163448 n).toNat

end

end A321338.P3662440279681358737

/-!
# A321341: An unbounded sequence which is 1 infinitely often, with the property that for any four consecutive terms the maximum term is the sum of the two minimum terms.

The programs for A321341, the canonical program `A321341.P17519375806666714139` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321341 has offset 0).

The definition of A321341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321341.P17519375806666714139

`A008619(A293990(n)%A037915(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A321341

/-- `A008619(A293990(n)%A037915(n))` -/
def P17519375806666714139.Spec : Prop :=
  ∀ n, P17519375806666714139.a n = A321341 n

theorem P17519375806666714139.correct : P17519375806666714139.Spec := by
  intro n
  simp only [A321341]

end A321341

/-! ## A321341.P1506007077492657485

`gcd(and(3, n^3)%3, A008621(A047255(n+1)))`
-/

namespace A321341.P1506007077492657485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.land 3 (n ^ 3) % 3 : ℕ) : ℤ) (A008621 (A047255 (n + 1)).toNat)

end

end A321341.P1506007077492657485

namespace A321341

/-- `gcd(and(3, n^3)%3, A008621(A047255(n+1)))` -/
def P1506007077492657485.Spec : Prop :=
  ∀ n, (P1506007077492657485.a n : ℤ) = A321341 n

end A321341

/-! ## A321341.P2298938065572746137

`A008624(Δ[A066530(n)²])`
-/

namespace A321341.P2298938065572746137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f1 (n + 1) - f1 n).toNat

end

end A321341.P2298938065572746137

namespace A321341

/-- `A008624(Δ[A066530(n)²])` -/
def P2298938065572746137.Spec : Prop :=
  ∀ n, P2298938065572746137.a n = A321341 n

end A321341

/-! ## A321341.P14074840796325203548

`A008621(Δ[A008794(A007494(n))])`
-/

namespace A321341.P14074840796325203548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A007494 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A321341.P14074840796325203548

namespace A321341

/-- `A008621(Δ[A008794(A007494(n))])` -/
def P14074840796325203548.Spec : Prop :=
  ∀ n, P14074840796325203548.a n = A321341 n

end A321341

/-! ## A321341.P14876122526128841620

`A008621(A047229(n+1)%A110654(3*n+1))`
-/

namespace A321341.P14876122526128841620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.tmod (A047229 (n + 1)) (A110654 (3 * n + 1))).toNat

end

end A321341.P14876122526128841620

namespace A321341

/-- `A008621(A047229(n+1)%A110654(3*n+1))` -/
def P14876122526128841620.Spec : Prop :=
  ∀ n, P14876122526128841620.a n = A321341 n

end A321341

/-! ## A321341.P4449800687470183518

`ceil(A296786(3*(n+1))/8)`
-/

namespace A321341.P4449800687470183518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A296786 (3 * (n + 1)) : ℚ) / 8⌉

end

end A321341.P4449800687470183518

namespace A321341

/-- `ceil(A296786(3*(n+1))/8)` -/
def P4449800687470183518.Spec : Prop :=
  ∀ n, P4449800687470183518.a n = A321341 n

end A321341

/-! ## A321341.P3922960492766076552

`A008621(A004524(3*n+1)%A110654(3*n+1))`
-/

namespace A321341.P3922960492766076552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.tmod (A004524 (3 * n + 1)) (A110654 (3 * n + 1))).toNat

end

end A321341.P3922960492766076552

namespace A321341

/-- `A008621(A004524(3*n+1)%A110654(3*n+1))` -/
def P3922960492766076552.Spec : Prop :=
  ∀ n, P3922960492766076552.a n = A321341 n

end A321341

/-!
# A321343: Primes p such that if k is the sum of the first p primes then the sum of the first k primes is prime.

The programs for A321343, there is no canonical definition to state claims against.
-/

/-! ## A321343.P14347453703863271708

`p?[A321342(n+1)]`
-/

namespace A321343.P14347453703863271708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321343.P14347453703863271708

/-! ## A321343.P15785692186657168382

`p?[record[A321342(A328477(n))]]`
-/

namespace A321343.P15785692186657168382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (A328477 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321343.P15785692186657168382

/-! ## A321343.P10858216443526673377

`∩[A348283(n+1), A321342(n+1)]`
-/

namespace A321343.P10858216443526673377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P10858216443526673377

/-! ## A321343.P15423685266706396426

`∩[A216285(n+1), A321342(n+1)]`
-/

namespace A321343.P15423685266706396426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P15423685266706396426

/-! ## A321343.P16042968133913496831

`A000040(A321439(n+1))`
-/

namespace A321343.P16042968133913496831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A321439 (n + 1)).toNat

end

end A321343.P16042968133913496831

/-! ## A321343.P11287240538068534195

`A008578(A321439(n+1)+1)`
-/

namespace A321343.P11287240538068534195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A321439 (n + 1) + 1).toNat

end

end A321343.P11287240538068534195

/-! ## A321343.P7937265115663922193

`A065091(A321439(n+1)-1)`
-/

namespace A321343.P7937265115663922193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A321439 (n + 1) - 1).toNat

end

end A321343.P7937265115663922193

/-! ## A321343.P9116147752886337065

`∩[A000040(n+1), A321342(n+1)]`
-/

namespace A321343.P9116147752886337065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P9116147752886337065

/-! ## A321343.P12377133624675726571

`∩[A004139(n+1), A321342(n+1)]`
-/

namespace A321343.P12377133624675726571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P12377133624675726571

/-! ## A321343.P13503632321887614177

`∩[A045319(n+1), A321342(n+1)]`
-/

namespace A321343.P13503632321887614177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P13503632321887614177

/-! ## A321343.P16205998222848728985

`∩[A045344(n+1), A321342(n+1)]`
-/

namespace A321343.P16205998222848728985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P16205998222848728985

/-! ## A321343.P669719514614884089

`∩[A051948(n+1), A321342(n+1)]`
-/

namespace A321343.P669719514614884089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P669719514614884089

/-! ## A321343.P4880380535205412735

`∩[A053813(n+1), A321342(n+1)]`
-/

namespace A321343.P4880380535205412735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P4880380535205412735

/-! ## A321343.P16198583007495569486

`∩[A064728(n+1), A321342(n+1)]`
-/

namespace A321343.P16198583007495569486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P16198583007495569486

/-! ## A321343.P1114195868160247609

`∩[A065091(n+1), A321342(n+1)]`
-/

namespace A321343.P1114195868160247609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P1114195868160247609

/-! ## A321343.P2899776642703060982

`∩[A065396(n+1), A321342(n+1)]`
-/

namespace A321343.P2899776642703060982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P2899776642703060982

/-! ## A321343.P8958328651870683746

`∩[A066542(n+1), A321342(n+1)]`
-/

namespace A321343.P8958328651870683746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P8958328651870683746

/-! ## A321343.P11860848333178427819

`∩[A071621(n+1), A321342(n+1)]`
-/

namespace A321343.P11860848333178427819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P11860848333178427819

/-! ## A321343.P2291493778383730885

`∩[A106118(n+1), A321342(n+1)]`
-/

namespace A321343.P2291493778383730885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P2291493778383730885

/-! ## A321343.P997716273200199696

`∩[A116974(n+1), A321342(n+1)]`
-/

namespace A321343.P997716273200199696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321343.P997716273200199696

/-!
# A321344: Expansion of 1/(1 - x) * Product_{k>=0} 1/(1 - x^(3^k))^(3^(k+1)).

The programs for A321344, there is no canonical definition to state claims against.
-/

/-! ## A321344.P15317580901992554

`∑[A320226(A007671(n+1))]`
-/

namespace A321344.P15317580901992554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 (A007671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321344.P15317580901992554

/-! ## A321344.P16355421332530625260

`A094193(A022811(3*n+1))+A038698(n+1)`
-/

namespace A321344.P16355421332530625260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094193 (A022811 (3 * n + 1)).toNat + A038698 (n + 1)

end

end A321344.P16355421332530625260

/-!
# A321345: Expansion of 1/(1 - x) * Product_{k>=0} 1/(1 - x^(4^k))^(4^(k+1)).

The programs for A321345, there is no canonical definition to state claims against.
-/

/-! ## A321345.P413352162167776007

`A004523(A330045(n))+A000332(n+4)`
-/

namespace A321345.P413352162167776007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A330045 n).toNat + A000332 (n + 4)

end

end A321345.P413352162167776007

/-! ## A321345.P6608120226609305466

`xor(n, A265370(A124947(n)))`
-/

namespace A321345.P6608120226609305466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A265370 (A124947 n).toNat)

end

end A321345.P6608120226609305466

/-!
# A321346: Number of integer partitions of n containing no prime powers > 1.

The programs for A321346, there is no canonical definition to state claims against.
-/

/-! ## A321346.P9009055466479893164

`∑[A321378(n)]`
-/

namespace A321346.P9009055466479893164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321346.P9009055466479893164

/-! ## A321346.P12415297184693924745

`A321378(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A321346.P12415297184693924745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321378 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A321346.P12415297184693924745

/-! ## A321346.P17531144093186836219

`a(n-1)+A178334(n)*A321378(n)` with `a(0)=1`
-/

namespace A321346.P17531144093186836219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A178334 n * A321378 n

end

end A321346.P17531144093186836219

/-! ## A321346.P16611898002613503857

`a(n-1)+A321378(n)%A000041(n)` with `a(0)=1`
-/

namespace A321346.P16611898002613503857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A321378 n) (A000041 n)

end

end A321346.P16611898002613503857

/-! ## A321346.P2628461231982521728

`A285798(n)+A011593(A185255(n))`
-/

namespace A321346.P2628461231982521728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285798 n + A011593 (A185255 n).toNat

end

end A321346.P2628461231982521728

/-!
# A321347: Number of strict integer partitions of n containing no prime powers (including 1).

The programs for A321347, there is no canonical definition to state claims against.
-/

/-! ## A321347.P1808117530421634602

`A321665(abs(1-n))+A321665(n)`
-/

namespace A321347.P1808117530421634602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321665 |1 - (n : ℤ)|.toNat + A321665 n

end

end A321347.P1808117530421634602

/-! ## A321347.P15852306437060793357

`A286221(A011593(A185255(n))+n)`
-/

namespace A321347.P15852306437060793357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286221 (A011593 (A185255 n).toNat + (n : ℤ)).toNat

end

end A321347.P15852306437060793357

/-! ## A321347.P11193762450134950755

`A286221(A057427(A185255(n))+n)`
-/

namespace A321347.P11193762450134950755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286221 (A057427 (A185255 n).toNat + (n : ℤ)).toNat

end

end A321347.P11193762450134950755

/-! ## A321347.P12575477719009411715

`A286221(A240857(A185255(n))+n)`
-/

namespace A321347.P12575477719009411715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286221 (A240857 (A185255 n).toNat + (n : ℤ)).toNat

end

end A321347.P12575477719009411715

/-! ## A321347.P10473154079616177208

`A286221(n-A096661(A185255(n)))`
-/

namespace A321347.P10473154079616177208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286221 ((n : ℤ) - A096661 (A185255 n).toNat).toNat

end

end A321347.P10473154079616177208

/-!
# A321349: a(n) = Sum_{d|n} phi(d^n), where phi() is the Euler totient function (A000010).

The programs for A321349, there is no canonical definition to state claims against.
-/

/-! ## A321349.P15703127272995869806

`∑{d}[n+1, #^n*A000010(#)]`
-/

namespace A321349.P15703127272995869806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ n : ℤ) * A000010 d

end

end A321349.P15703127272995869806

/-! ## A321349.P5090395626327725574

`∑{d}[n+1, A000010(#^(n+1))]`
-/

namespace A321349.P5090395626327725574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (d ^ (n + 1))

end

end A321349.P5090395626327725574

/-!
# A321352: Triangle T(n,k) giving the number of permutations pi of {1,2,...,n} such that for all i, pi(i) is not in {i, i+1, ..., i+k-1} (mod n), with 0 <= k <= n - 1.

The programs for A321352, there is no canonical definition to state claims against.
-/

/-! ## A321352.P7344537906871361947

`A008305(A038722(n+1))`
-/

namespace A321352.P7344537906871361947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A038722 (n + 1)).toNat

end

end A321352.P7344537906871361947

/-! ## A321352.P5749295337747770300

`A008305(A061579(n)+1)`
-/

namespace A321352.P5749295337747770300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A061579 n + 1).toNat

end

end A321352.P5749295337747770300

/-! ## A321352.P6320684690757613351

`A008305(A114327(n)+1+n)`
-/

namespace A321352.P6320684690757613351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A114327 n + 1 + (n : ℤ)).toNat

end

end A321352.P6320684690757613351

/-! ## A321352.P4653608481346746699

`A008305(A002024(n+1)²-n)`
-/

namespace A321352.P4653608481346746699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A321352.P4653608481346746699

/-! ## A321352.P1700899381544472654

`A008305(A057944(n)+A004736(n+1))`
-/

namespace A321352.P1700899381544472654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A057944 n + A004736 (n + 1)).toNat

end

end A321352.P1700899381544472654

/-! ## A321352.P1767256714365029076

`A306714(A130328(n))`
-/

namespace A321352.P1767256714365029076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306714 (A130328 n).toNat

end

end A321352.P1767256714365029076

/-!
# A321353: Numbers k such that 3*2^k - 25 is prime.

The programs for A321353, there is no canonical definition to state claims against.
-/

/-! ## A321353.P9104185146691354134

`val(Δ[A321356(n+1)], 2)`
-/

namespace A321353.P9104185146691354134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A321353.P9104185146691354134

/-!
# A321356: Primes of the form 3*2^k - 25.

The programs for A321356, there is no canonical definition to state claims against.
-/

/-! ## A321356.P11068686085220334708

`A248877(A321353(n+1)-3)`
-/

namespace A321356.P11068686085220334708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248877 (A321353 (n + 1) - 3).toNat

end

end A321356.P11068686085220334708

/-! ## A321356.P12022046900306174334

`p?[3*2^n-25]`
-/

namespace A321356.P12022046900306174334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321356.P12022046900306174334

/-! ## A321356.P8926953043413654597

`record[∑{p}[∑[24*2^n]-1, #]]`
-/

namespace A321356.P8926953043413654597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * 2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321356.P8926953043413654597

/-! ## A321356.P16839585008188155817

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=-1, a(1)=24`
-/

namespace A321356.P16839585008188155817
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1, 24] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A321356.P16839585008188155817

/-! ## A321356.P12507041064452116507

`or(1, p?[A248877(n+1)])`
-/

namespace A321356.P12507041064452116507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A321356.P12507041064452116507

/-!
# A321358: a(n) = (2*4^n + 7)/3.

The programs for A321358, the canonical program `A321358.P3446411409430386847` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321358 has offset 0).

The definition of A321358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321358.P3446411409430386847

`4*a(n-1)-7` with `a(0)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A321358

/-- `4*a(n-1)-7` -/
def P3446411409430386847.Spec : Prop :=
  ∀ n, P3446411409430386847.a n = A321358 n

theorem P3446411409430386847.correct : P3446411409430386847.Spec := by
  intro n
  simp only [A321358]

end A321358

/-! ## A321358.P17000746739090618775

`A007583(n)+2`
-/

namespace A321358.P17000746739090618775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n + 2

end

end A321358.P17000746739090618775

namespace A321358

/-- `A007583(n)+2` -/
def P17000746739090618775.Spec : Prop :=
  ∀ n, P17000746739090618775.a n = A321358 n

end A321358

/-! ## A321358.P7552896372593195043

`A171382(2*n)`
-/

namespace A321358.P7552896372593195043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171382 (2 * n)

end

end A321358.P7552896372593195043

namespace A321358

/-- `A171382(2*n)` -/
def P7552896372593195043.Spec : Prop :=
  ∀ n, P7552896372593195043.a n = A321358 n

end A321358

/-! ## A321358.P15598919603171433630

`A001045(2*n+1)+2`
-/

namespace A321358.P15598919603171433630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1) + 2

end

end A321358.P15598919603171433630

namespace A321358

/-- `A001045(2*n+1)+2` -/
def P15598919603171433630.Spec : Prop :=
  ∀ n, P15598919603171433630.a n = A321358 n

end A321358

/-! ## A321358.P2016517276867502770

`(2*4^n+7)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A321358.P2016517276867502770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n + 7 : ℚ) / 3

end

end A321358.P2016517276867502770

namespace A321358

/-- `(2*4^n+7)/3` -/
def P2016517276867502770.Spec : Prop :=
  ∀ n, P2016517276867502770.a n = (A321358 n : ℚ)

end A321358

/-! ## A321358.P14862864813428018149

`record[∑[(-2)^n]+2]`
-/

namespace A321358.P14862864813428018149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321358.P14862864813428018149

namespace A321358

/-- `record[∑[(-2)^n]+2]` -/
def P14862864813428018149.Spec : Prop :=
  ∀ n, P14862864813428018149.a n = A321358 n

end A321358

/-! ## A321358.P7181385989637755592

`lcm(4, a(n-1))-7` with `a(0)=3`
-/

namespace A321358.P7181385989637755592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - 7

end

end A321358.P7181385989637755592

namespace A321358

/-- `lcm(4, a(n-1))-7` -/
def P7181385989637755592.Spec : Prop :=
  ∀ n, P7181385989637755592.a n = A321358 n

end A321358

/-! ## A321358.P4144296620776004755

`a(n-1)+4^n/2` with `a(0)=3`
-/

namespace A321358.P4144296620776004755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (4 ^ n : ℚ) / 2

end

end A321358.P4144296620776004755

namespace A321358

/-- `a(n-1)+4^n/2` -/
def P4144296620776004755.Spec : Prop :=
  ∀ n, P4144296620776004755.a n = (A321358 n : ℚ)

end A321358

/-! ## A321358.P7033771845887823979

`a(n-1)/(1/2)²-7` with `a(0)=3`
-/

namespace A321358.P7033771845887823979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 7

end

end A321358.P7033771845887823979

namespace A321358

/-- `a(n-1)/(1/2)²-7` -/
def P7033771845887823979.Spec : Prop :=
  ∀ n, P7033771845887823979.a n = (A321358 n : ℚ)

end A321358

/-! ## A321358.P1344055314724260188

`∑[a(n-1)/(1-3/4)]` with `a(0)=3, a(1)=2`
-/

namespace A321358.P1344055314724260188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) / (1 - (3 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321358.P1344055314724260188

namespace A321358

/-- `∑[a(n-1)/(1-3/4)]` -/
def P1344055314724260188.Spec : Prop :=
  ∀ n, P1344055314724260188.a n = (A321358 n : ℚ)

end A321358

/-! ## A321358.P5991562919525284307

`A020988(n)+3`
-/

namespace A321358.P5991562919525284307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + 3

end

end A321358.P5991562919525284307

namespace A321358

/-- `A020988(n)+3` -/
def P5991562919525284307.Spec : Prop :=
  ∀ n, P5991562919525284307.a n = A321358 n

end A321358

/-! ## A321358.P16347551106959334212

`A153643(Δ[n²])`
-/

namespace A321358.P16347551106959334212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321358.P16347551106959334212

namespace A321358

/-- `A153643(Δ[n²])` -/
def P16347551106959334212.Spec : Prop :=
  ∀ n, P16347551106959334212.a n = A321358 n

end A321358

/-! ## A321358.P3372789559504971407

`∑[A081294(n)]+2`
-/

namespace A321358.P3372789559504971407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A321358.P3372789559504971407

namespace A321358

/-- `∑[A081294(n)]+2` -/
def P3372789559504971407.Spec : Prop :=
  ∀ n, P3372789559504971407.a n = A321358 n

end A321358

/-! ## A321358.P40604309110948153

`Δ[A210985(n)]+1`
-/

namespace A321358.P40604309110948153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A321358.P40604309110948153

namespace A321358

/-- `Δ[A210985(n)]+1` -/
def P40604309110948153.Spec : Prop :=
  ∀ n, P40604309110948153.a n = A321358 n

end A321358

/-! ## A321358.P10321889807141731325

`Δ[A350717(n)]+2`
-/

namespace A321358.P10321889807141731325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A321358.P10321889807141731325

namespace A321358

/-- `Δ[A350717(n)]+2` -/
def P10321889807141731325.Spec : Prop :=
  ∀ n, P10321889807141731325.a n = A321358 n

end A321358

/-! ## A321358.P13325068215763992569

`A039301(n+1)+1`
-/

namespace A321358.P13325068215763992569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 (n + 1) + 1

end

end A321358.P13325068215763992569

namespace A321358

/-- `A039301(n+1)+1` -/
def P13325068215763992569.Spec : Prop :=
  ∀ n, P13325068215763992569.a n = A321358 n

end A321358

/-! ## A321358.P14935833748836783506

`2*A047849(n)+1`
-/

namespace A321358.P14935833748836783506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047849 n + 1

end

end A321358.P14935833748836783506

namespace A321358

/-- `2*A047849(n)+1` -/
def P14935833748836783506.Spec : Prop :=
  ∀ n, P14935833748836783506.a n = A321358 n

end A321358

/-! ## A321358.P8968979330278484177

`A052953(2*n)+1`
-/

namespace A321358.P8968979330278484177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052953 (2 * n) + 1

end

end A321358.P8968979330278484177

namespace A321358

/-- `A052953(2*n)+1` -/
def P8968979330278484177.Spec : Prop :=
  ∀ n, P8968979330278484177.a n = A321358 n

end A321358

/-! ## A321358.P15045790304954137500

`A140505(2*n)+1`
-/

namespace A321358.P15045790304954137500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140505 (2 * n) + 1

end

end A321358.P15045790304954137500

namespace A321358

/-- `A140505(2*n)+1` -/
def P15045790304954137500.Spec : Prop :=
  ∀ n, P15045790304954137500.a n = A321358 n

end A321358

/-!
# A321359: Expansion of Product_{1 <= i <= j <= k} (1 + x^(i*j*k)).

The programs for A321359, there is no canonical definition to state claims against.
-/

/-! ## A321359.P15696173230583877597

`A066806(n)-A185284(A047236(n+1))`
-/

namespace A321359.P15696173230583877597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A185284 (A047236 (n + 1)).toNat

end

end A321359.P15696173230583877597

/-! ## A321359.P5846687721747251182

`A066806(n)-A102683(A000383(n))`
-/

namespace A321359.P5846687721747251182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A102683 (A000383 n).toNat

end

end A321359.P5846687721747251182

/-! ## A321359.P5069584572484769773

`A066806(n)-A055641(A060455(n))`
-/

namespace A321359.P5069584572484769773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A055641 (A060455 n).toNat

end

end A321359.P5069584572484769773

/-! ## A321359.P10140011634205284599

`A066806(n)-A112765(A038214(n))`
-/

namespace A321359.P10140011634205284599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066806 n - A112765 (A038214 n).toNat

end

end A321359.P10140011634205284599

/-!
# A321360: Expansion of Product_{1 <= i <= j <= k} 1/(1 - x^(i*j*k)).

The programs for A321360, there is no canonical definition to state claims against.
-/

/-! ## A321360.P3547953330973727458

`A066739(n)-A046080(A038214(n))`
-/

namespace A321360.P3547953330973727458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - A046080 (A038214 n).toNat

end

end A321360.P3547953330973727458

/-! ## A321360.P1226896736847915808

`A066739(n)-A055641(A060455(n))`
-/

namespace A321360.P1226896736847915808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - A055641 (A060455 n).toNat

end

end A321360.P1226896736847915808

/-! ## A321360.P2236224335330783770

`A066739(n)-A118682(A213003(n))`
-/

namespace A321360.P2236224335330783770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066739 n - A118682 (A213003 n).toNat

end

end A321360.P2236224335330783770

/-! ## A321360.P14204975787844833093

`A321566(n)-A046080(A038214(n))`
-/

namespace A321360.P14204975787844833093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321566 n - A046080 (A038214 n).toNat

end

end A321360.P14204975787844833093

/-! ## A321360.P13541646052457340259

`A321566(n)-A055641(A060455(n))`
-/

namespace A321360.P13541646052457340259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321566 n - A055641 (A060455 n).toNat

end

end A321360.P13541646052457340259

/-!
# A321361: Expansion of Product_{1 <= i <= j <= k} (1 - x^(i*j*k)).

The programs for A321361, there is no canonical definition to state claims against.
-/

/-! ## A321361.P17526052184097127820

`A321460(lt[A321457(n+1), 3])`
-/

namespace A321361.P17526052184097127820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321457 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321460 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A321361.P17526052184097127820

/-! ## A321361.P7817260281890758008

`A321460(n)+A240329(A048577(n))`
-/

namespace A321361.P7817260281890758008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321460 n + A240329 (A048577 n).toNat

end

end A321361.P7817260281890758008

/-! ## A321361.P4967044032291043430

`xor(-A058343(A146607(n+1)), A321460(n))`
-/

namespace A321361.P4967044032291043430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A058343 (A146607 (n + 1)).toNat) (A321460 n)

end

end A321361.P4967044032291043430

/-! ## A321361.P9002445838941476407

`A319517(lt[A319493(n+1), A319528(3*n+1)])`
-/

namespace A321361.P9002445838941476407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319528 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321361.P9002445838941476407

/-! ## A321361.P4548476132729489232

`A321460(lt[A077161(n+2), A008586(3*n+4)])`
-/

namespace A321361.P4548476132729489232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077161 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321460 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321361.P4548476132729489232

/-!
# A321363: Single-digit odd primes and primes whose decimal expansion has the form iii...ij, where i and j are distinct odd digits.

The programs for A321363, there is no canonical definition to state claims against.
-/

/-! ## A321363.P189592893154632645

`∩[A030096(n+1), A183106(n+1)]`
-/

namespace A321363.P189592893154632645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321363.P189592893154632645

/-!
# A321366: a(n) is the least integer k greater than 1 such that n divides binomial(k, 2) = A000217(k-1).

The programs for A321366, there is no canonical definition to state claims against.
-/

/-! ## A321366.P12748603924976179214

`A011772(n+1)+1`
-/

namespace A321366.P12748603924976179214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + 1

end

end A321366.P12748603924976179214

/-! ## A321366.P15591001172732809790

`A081467(n+1)-n`
-/

namespace A321366.P15591001172732809790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081467 (n + 1) - (n : ℤ)

end

end A321366.P15591001172732809790

/-! ## A321366.P15609137348959691773

`2-A344763(n+1)+n`
-/

namespace A321366.P15609137348959691773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A344763 (n + 1) + (n : ℤ)

end

end A321366.P15609137348959691773

/-! ## A321366.P4376104000261494141

`A379676(n)-A061782(n+1)`
-/

namespace A321366.P4376104000261494141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379676 n - A061782 (n + 1)

end

end A321366.P4376104000261494141

/-! ## A321366.P2018969870684510123

`A343999(n+1)+A343996(n+1)`
-/

namespace A321366.P2018969870684510123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343999 (n + 1) + A343996 (n + 1)

end

end A321366.P2018969870684510123

/-! ## A321366.P2691014467624400341

`A088580(n+1)-A344765(n+1)`
-/

namespace A321366.P2691014467624400341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A344765 (n + 1)

end

end A321366.P2691014467624400341

/-! ## A321366.P16010975958097934804

`A000203(n+1)+1-A344765(n+1)`
-/

namespace A321366.P16010975958097934804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A344765 (n + 1))

end

end A321366.P16010975958097934804

/-! ## A321366.P11178677898186655852

`A047994(n+1)+1-A344874(n+1)`
-/

namespace A321366.P11178677898186655852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + (1 - A344874 (n + 1))

end

end A321366.P11178677898186655852

/-! ## A321366.P3448321076703737960

`A343997(n+1)+1-A343999(n+1)`
-/

namespace A321366.P3448321076703737960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1) + (1 - A343999 (n + 1))

end

end A321366.P3448321076703737960

/-! ## A321366.P11218757176226215718

`A344875(n+1)+1-A344876(n+1)`
-/

namespace A321366.P11218757176226215718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) + (1 - A344876 (n + 1))

end

end A321366.P11218757176226215718

/-! ## A321366.P11983286311216961082

`A344878(n+1)+1-A344976(n+1)`
-/

namespace A321366.P11983286311216961082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) + (1 - A344976 (n + 1))

end

end A321366.P11983286311216961082

/-! ## A321366.P9363586463773385360

`A345065(n+1)+1-A345055(n+1)`
-/

namespace A321366.P9363586463773385360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) + (1 - A345055 (n + 1))

end

end A321366.P9363586463773385360

/-! ## A321366.P17552205556783964996

`A344969(n+1)*A344970(n+1)+1`
-/

namespace A321366.P17552205556783964996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (n + 1) * A344970 (n + 1) + 1

end

end A321366.P17552205556783964996

/-! ## A321366.P14805524238130081589

`A354918(2*(n+1))+A343996(n+1)`
-/

namespace A321366.P14805524238130081589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (2 * (n + 1)) + A343996 (n + 1)

end

end A321366.P14805524238130081589

/-! ## A321366.P11626327880328848582

`abs(A344765(n+1)-(A237588(n+1)+Δ[n²]))+1`
-/

namespace A321366.P11626327880328848582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344765 (n + 1) - (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))| + 1

end

end A321366.P11626327880328848582

/-! ## A321366.P5781765555769681751

`2*(n+1)-A033879(n+1)+1-A344765(n+1)`
-/

namespace A321366.P5781765555769681751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) + 1 - A344765 (n + 1)

end

end A321366.P5781765555769681751

/-! ## A321366.P9648372225142930037

`A146076(n+1)+A000593(n+1)+1-A344765(n+1)`
-/

namespace A321366.P9648372225142930037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000593 (n + 1) + 1 - A344765 (n + 1)

end

end A321366.P9648372225142930037

/-! ## A321366.P5446067521285475915

`A326126(n+1)+A007913(n+1)+1-A344765(n+1)`
-/

namespace A321366.P5446067521285475915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) + A007913 (n + 1) + 1 - A344765 (n + 1)

end

end A321366.P5446067521285475915

/-! ## A321366.P11275571652716034755

`A020725(A011772(n+1))`
-/

namespace A321366.P11275571652716034755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A011772 (n + 1)).toNat

end

end A321366.P11275571652716034755

/-! ## A321366.P6830541232104591692

`A344005(A022998(n+1))+1`
-/

namespace A321366.P6830541232104591692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A022998 (n + 1)).toNat + 1

end

end A321366.P6830541232104591692

/-!
# A321367: Palindromic primes p such that the highest factor of p+1 is a palindromic prime and the highest factor of p-1 is also a palindromic prime.

The programs for A321367, there is no canonical definition to state claims against.
-/

/-! ## A321367.P6977014661255039904

`p?[A002113(∑[A088044(n+1)])]`
-/

namespace A321367.P6977014661255039904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088044 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321367.P6977014661255039904

/-! ## A321367.P5883735653990632749

`A082565(A000007(a(n-1))+n)` with `a(0)=3`
-/

namespace A321367.P5883735653990632749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082565 (A000007 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A321367.P5883735653990632749

/-!
# A321368: Triangular array read by rows: T(n, k) is the number of (i, j), ordered pairs of integers, satisfying 1 <= i < j <= n and floor(n * (1/i - 1/j)) = k; n >= 1, 0 <= k < n.

The programs for A321368, there is no canonical definition to state claims against.
-/

/-! ## A321368.P17874222669058804035

`A115201(A313913(n+1))`
-/

namespace A321368.P17874222669058804035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115201 (A313913 (n + 1)).toNat

end

end A321368.P17874222669058804035

/-! ## A321368.P3237833820618124325

`A001511(A143543(n+1))%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A321368.P3237833820618124325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001511 (A143543 (n + 1)).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A321368.P3237833820618124325

/-! ## A321368.P18352871311559447704

`A211272(or(A004101(n), A293047(n)))`
-/

namespace A321368.P18352871311559447704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (Int.lor (A004101 n) (A293047 n)).toNat

end

end A321368.P18352871311559447704

/-! ## A321368.P17342546429127903830

`A001511(A143543(n+1))%A140436(n+2)`
-/

namespace A321368.P17342546429127903830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001511 (A143543 (n + 1)).toNat) (A140436 (n + 2))

end

end A321368.P17342546429127903830

/-! ## A321368.P9762536751638470730

`A001221(or(A002094(n+1), A082647(n+1)))`
-/

namespace A321368.P9762536751638470730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A002094 (n + 1)) (A082647 (n + 1))).toNat

end

end A321368.P9762536751638470730

/-!
# A321369: Coefficients of successive polynomials formed by iterating f(x) = -1 + 2x^2. Irregular triangle read by rows.

The programs for A321369, there is no canonical definition to state claims against.
-/

/-! ## A321369.P17096549784133425769

`A118800(A130053(n))`
-/

namespace A321369.P17096549784133425769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (A130053 n).toNat

end

end A321369.P17096549784133425769

/-! ## A321369.P5035433765468271056

`A118800(∑[2-A213711(n+1)+n])`
-/

namespace A321369.P5035433765468271056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A213711 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321369.P5035433765468271056

/-! ## A321369.P15666674910987228601

`A127674(comp[A285092(n+4)-A000142(n)])`
-/

namespace A321369.P15666674910987228601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 (n + 4) - A000142 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127674 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A321369.P15666674910987228601

/-! ## A321369.P15315390760896495371

`A127674(A007092(n)%A030163(n+1))`
-/

namespace A321369.P15315390760896495371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127674 (Int.tmod (A007092 n) (A030163 (n + 1))).toNat

end

end A321369.P15315390760896495371

/-! ## A321369.P9168661959214691601

`A127674(A061128(n+1)+A007092(n))`
-/

namespace A321369.P9168661959214691601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127674 (A061128 (n + 1) + A007092 n).toNat

end

end A321369.P9168661959214691601

/-!
# A321370: n + [n*s/r] + [n*t/r], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

The programs for A321370, the canonical program `A321370.P2848080016975336999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321370 has offset 1).

The definition of A321370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321370.P2848080016975336999

`A187339(n+1)+A022839(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321370

/-- `A187339(n+1)+A022839(n+1)` -/
def P2848080016975336999.Spec : Prop :=
  ∀ n, P2848080016975336999.a n = A321370 (n + 1)

theorem P2848080016975336999.correct : P2848080016975336999.Spec := by
  intro n
  simp only [A321370, Nat.add_sub_cancel]

end A321370

/-! ## A321370.P7684453904673764621

`A276854(n+1)+A188222(n+1)`
-/

namespace A321370.P7684453904673764621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) + A188222 (n + 1)

end

end A321370.P7684453904673764621

namespace A321370

/-- `A276854(n+1)+A188222(n+1)` -/
def P7684453904673764621.Spec : Prop :=
  ∀ n, P7684453904673764621.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P11295190244694721585

`A276854(n+1)+∑[char[A276854(n)]]+n`
-/

namespace A321370.P11295190244694721585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A321370.P11295190244694721585

namespace A321370

/-- `A276854(n+1)+∑[char[A276854(n)]]+n` -/
def P11295190244694721585.Spec : Prop :=
  ∀ n, P11295190244694721585.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P10118380558464465044

`round(A276854(n+1)+A003622(n+1)/2)`
-/

namespace A321370.P10118380558464465044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A276854 (n + 1) : ℚ) + (A003622 (n + 1) : ℚ) / 2)

end

end A321370.P10118380558464465044

namespace A321370

/-- `round(A276854(n+1)+A003622(n+1)/2)` -/
def P10118380558464465044.Spec : Prop :=
  ∀ n, P10118380558464465044.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P13179072428636658263

`A188222(n+1)+∑[A276866(n+1)-1]`
-/

namespace A321370.P13179072428636658263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321370.P13179072428636658263

namespace A321370

/-- `A188222(n+1)+∑[A276866(n+1)-1]` -/
def P13179072428636658263.Spec : Prop :=
  ∀ n, P13179072428636658263.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P1423122314705116733

`A276854(n+1)+A188188(n+2)-1`
-/

namespace A321370.P1423122314705116733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) + (A188188 (n + 2) - 1)

end

end A321370.P1423122314705116733

namespace A321370

/-- `A276854(n+1)+A188188(n+2)-1` -/
def P1423122314705116733.Spec : Prop :=
  ∀ n, P1423122314705116733.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P9807015183853966240

`A001962(n+1)-A008619(A249115(n+1))`
-/

namespace A321370.P9807015183853966240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1) - A008619 (A249115 (n + 1)).toNat

end

end A321370.P9807015183853966240

namespace A321370

/-- `A001962(n+1)-A008619(A249115(n+1))` -/
def P9807015183853966240.Spec : Prop :=
  ∀ n, P9807015183853966240.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P542212432931732490

`A188222(n+1)+A000201(2*(n+1))`
-/

namespace A321370.P542212432931732490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1) + A000201 (2 * (n + 1))

end

end A321370.P542212432931732490

namespace A321370

/-- `A188222(n+1)+A000201(2*(n+1))` -/
def P542212432931732490.Spec : Prop :=
  ∀ n, P542212432931732490.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P17408078943315840197

`A000201(2*(n+1))+A188188(n+2)-1`
-/

namespace A321370.P17408078943315840197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * (n + 1)) + (A188188 (n + 2) - 1)

end

end A321370.P17408078943315840197

namespace A321370

/-- `A000201(2*(n+1))+A188188(n+2)-1` -/
def P17408078943315840197.Spec : Prop :=
  ∀ n, P17408078943315840197.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P7185677426171028942

`A004526(A001950(n+1))+A000201(2*(n+1))`
-/

namespace A321370.P7185677426171028942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001950 (n + 1)).toNat + A000201 (2 * (n + 1))

end

end A321370.P7185677426171028942

namespace A321370

/-- `A004526(A001950(n+1))+A000201(2*(n+1))` -/
def P7185677426171028942.Spec : Prop :=
  ∀ n, P7185677426171028942.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P1818819154176556241

`A065033(A188435(2*(n+1)))+A022342(2*(n+1))`
-/

namespace A321370.P1818819154176556241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A188435 (2 * (n + 1))).toNat + A022342 (2 * (n + 1))

end

end A321370.P1818819154176556241

namespace A321370

/-- `A065033(A188435(2*(n+1)))+A022342(2*(n+1))` -/
def P1818819154176556241.Spec : Prop :=
  ∀ n, P1818819154176556241.a n = A321370 (n + 1)

end A321370

/-! ## A321370.P17548239455140734258

`A007067(n+1)+A004526(A003623(n+1)+A000201(n+1))`
-/

namespace A321370.P17548239455140734258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) + A004526 (A003623 (n + 1) + A000201 (n + 1)).toNat

end

end A321370.P17548239455140734258

namespace A321370

/-- `A007067(n+1)+A004526(A003623(n+1)+A000201(n+1))` -/
def P17548239455140734258.Spec : Prop :=
  ∀ n, P17548239455140734258.a n = A321370 (n + 1)

end A321370

/-!
# A321371: n + [n*r/s] + [n*t/s], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

The programs for A321371, the canonical program `A321371.P7279978321700670498` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321371 has offset 1).

The definition of A321371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321371.P13614036986298566103

`A330175(n+1)-(n+1)`
-/

namespace A321371.P13614036986298566103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330175 (n + 1) - (n + 1 : ℤ)

end

end A321371.P13614036986298566103

namespace A321371

/-- `A330175(n+1)-(n+1)` -/
def P13614036986298566103.Spec : Prop :=
  ∀ n, P13614036986298566103.a n = A321371 (n + 1)

end A321371

/-! ## A321371.P7279978321700670498

`A194152(n+1)+A001962(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321371

/-- `A194152(n+1)+A001962(n+1)` -/
def P7279978321700670498.Spec : Prop :=
  ∀ n, P7279978321700670498.a n = A321371 (n + 1)

theorem P7279978321700670498.correct : P7279978321700670498.Spec := by
  intro n
  simp only [A321371, Nat.add_sub_cancel]

end A321371

/-! ## A321371.P744144603694539215

`A350522(n)-(A330186(n+1)+1+n)`
-/

namespace A321371.P744144603694539215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n - (A330186 (n + 1) + 1 + (n : ℤ))

end

end A321371.P744144603694539215

namespace A321371

/-- `A350522(n)-(A330186(n+1)+1+n)` -/
def P744144603694539215.Spec : Prop :=
  ∀ n, P744144603694539215.a n = A321371 (n + 1)

end A321371

/-! ## A321371.P12382785969668367463

`A189378(2*(n+1))+n+1`
-/

namespace A321371.P12382785969668367463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A321371.P12382785969668367463

namespace A321371

/-- `A189378(2*(n+1))+n+1` -/
def P12382785969668367463.Spec : Prop :=
  ∀ n, P12382785969668367463.a n = A321371 (n + 1)

end A321371

/-! ## A321371.P7813732085927983702

`A001962(2*(n+1))+A003623(2*(n+1))/2`
-/

namespace A321371.P7813732085927983702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001962 (2 * (n + 1)) : ℚ) + (A003623 (2 * (n + 1)) : ℚ) / 2

end

end A321371.P7813732085927983702

namespace A321371

/-- `A001962(2*(n+1))+A003623(2*(n+1))/2` -/
def P7813732085927983702.Spec : Prop :=
  ∀ n, P7813732085927983702.a n = (A321371 (n + 1) : ℚ)

end A321371

/-! ## A321371.P14229911143010377634

`A190508(2*(n+1))-A003623(2*(n+1))/2`
-/

namespace A321371.P14229911143010377634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190508 (2 * (n + 1)) : ℚ) - (A003623 (2 * (n + 1)) : ℚ) / 2

end

end A321371.P14229911143010377634

namespace A321371

/-- `A190508(2*(n+1))-A003623(2*(n+1))/2` -/
def P14229911143010377634.Spec : Prop :=
  ∀ n, P14229911143010377634.a n = (A321371 (n + 1) : ℚ)

end A321371

/-! ## A321371.P4595003100759478959

`A189379(2*(n+1))+A283234(2*(n+1))-n`
-/

namespace A321371.P4595003100759478959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (2 * (n + 1)) + (A283234 (2 * (n + 1)) - (n : ℤ))

end

end A321371.P4595003100759478959

namespace A321371

/-- `A189379(2*(n+1))+A283234(2*(n+1))-n` -/
def P4595003100759478959.Spec : Prop :=
  ∀ n, P4595003100759478959.a n = A321371 (n + 1)

end A321371

/-! ## A321371.P18080721922529671627

`record[A330175(A141256(n))-A141256(n)]`
-/

namespace A321371.P18080721922529671627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330175 (A141256 n).toNat - A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321371.P18080721922529671627

namespace A321371

/-- `record[A330175(A141256(n))-A141256(n)]` -/
def P18080721922529671627.Spec : Prop :=
  ∀ n, P18080721922529671627.a n = A321371 (n + 1)

end A321371

/-! ## A321371.P17345344697800026195

`A004976(n+1)+A001950(4*(n+1))`
-/

namespace A321371.P17345344697800026195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1) + A001950 (4 * (n + 1))

end

end A321371.P17345344697800026195

namespace A321371

/-- `A004976(n+1)+A001950(4*(n+1))` -/
def P17345344697800026195.Spec : Prop :=
  ∀ n, P17345344697800026195.a n = A321371 (n + 1)

end A321371

/-!
# A321372: n + [n*r/t] + [n*s/t], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

The programs for A321372, the canonical program `A321372.P8160546771668638215` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321372 has offset 1).

The definition of A321372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321372.P8160546771668638215

`A187339(n+1)-A008619(A108598(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321372

/-- `A187339(n+1)-A008619(A108598(n+1))` -/
def P8160546771668638215.Spec : Prop :=
  ∀ n, P8160546771668638215.a n = A321372 (n + 1)

theorem P8160546771668638215.correct : P8160546771668638215.Spec := by
  intro n
  simp only [A321372, Nat.add_sub_cancel]

end A321372

/-! ## A321372.P17223196133765449898

`A188222(n+1)-A004526(A108598(n+1))+n`
-/

namespace A321372.P17223196133765449898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1) - A004526 (A108598 (n + 1)).toNat + (n : ℤ)

end

end A321372.P17223196133765449898

namespace A321372

/-- `A188222(n+1)-A004526(A108598(n+1))+n` -/
def P17223196133765449898.Spec : Prop :=
  ∀ n, P17223196133765449898.a n = A321372 (n + 1)

end A321372

/-! ## A321372.P6232308515020864527

`A188222(n+1)+A059995(n)%A098652(n+1)`
-/

namespace A321372.P6232308515020864527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1) + Int.tmod (A059995 n) (A098652 (n + 1))

end

end A321372.P6232308515020864527

namespace A321372

/-- `A188222(n+1)+A059995(n)%A098652(n+1)` -/
def P6232308515020864527.Spec : Prop :=
  ∀ n, P6232308515020864527.a n = A321372 (n + 1)

end A321372

/-! ## A321372.P7043539900487676225

`A319710(A059328(n))+A285375(n+1)`
-/

namespace A321372.P7043539900487676225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A059328 n).toNat + A285375 (n + 1)

end

end A321372.P7043539900487676225

namespace A321372

/-- `A319710(A059328(n))+A285375(n+1)` -/
def P7043539900487676225.Spec : Prop :=
  ∀ n, P7043539900487676225.a n = A321372 (n + 1)

end A321372

/-! ## A321372.P16252743984890727812

`A285375(n+1)+A124761(A254883(n))`
-/

namespace A321372.P16252743984890727812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (n + 1) + A124761 (A254883 n).toNat

end

end A321372.P16252743984890727812

namespace A321372

/-- `A285375(n+1)+A124761(A254883(n))` -/
def P16252743984890727812.Spec : Prop :=
  ∀ n, P16252743984890727812.a n = A321372 (n + 1)

end A321372

/-!
# A321374: Expansion of Product_{1 < i <= j <= k} (1 + x^(i*j*k)).

The programs for A321374, there is no canonical definition to state claims against.
-/

/-! ## A321374.P15037792604664706352

`A005136(A128330(n+1)*A321375(n))`
-/

namespace A321374.P15037792604664706352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A128330 (n + 1) * A321375 n).toNat

end

end A321374.P15037792604664706352

/-! ## A321374.P7641955359380693599

`A112313(n)+A055641(A087731(2*(n+2)))`
-/

namespace A321374.P7641955359380693599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112313 n + A055641 (A087731 (2 * (n + 2))).toNat

end

end A321374.P7641955359380693599

/-! ## A321374.P1818596041913686231

`A288216(A157147(n))+A112313(n)`
-/

namespace A321374.P1818596041913686231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A157147 n).toNat + A112313 n

end

end A321374.P1818596041913686231

/-! ## A321374.P8354515151794649070

`A112313(n)+A112313(A005811(A157275(n)))`
-/

namespace A321374.P8354515151794649070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112313 n + A112313 (A005811 (A157275 n).toNat).toNat

end

end A321374.P8354515151794649070

/-! ## A321374.P18382716944308652467

`A112313(n)+A025469(A299844(n+1))`
-/

namespace A321374.P18382716944308652467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112313 n + A025469 (A299844 (n + 1)).toNat

end

end A321374.P18382716944308652467

/-!
# A321375: Expansion of Product_{1 < i <= j <= k} 1/(1 - x^(i*j*k)).

The programs for A321375, there is no canonical definition to state claims against.
-/

/-! ## A321375.P6606851504167334808

`A112314(3*n)%A002764(n)`
-/

namespace A321375.P6606851504167334808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112314 (3 * n)) (A002764 n)

end

end A321375.P6606851504167334808

/-! ## A321375.P17028375351499366230

`A112315(6*n)%A034083(n+2)`
-/

namespace A321375.P17028375351499366230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112315 (6 * n)) (A034083 (n + 2))

end

end A321375.P17028375351499366230

/-! ## A321375.P15574201560405225432

`A112314(3*n)^A007318(A034535(n+1))`
-/

namespace A321375.P15574201560405225432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112314 (3 * n) : ℚ) ^ (A007318 (A034535 (n + 1)).toNat : ℤ)

end

end A321375.P15574201560405225432

/-! ## A321375.P3027138579588031660

`A112314(3*n)+A010054(A104809(or(1, n)))`
-/

namespace A321375.P3027138579588031660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112314 (3 * n) + A010054 (A104809 (Nat.lor 1 n)).toNat

end

end A321375.P3027138579588031660

/-! ## A321375.P16657644093454953129

`A112316(A112318(2*(n+2)))+A112314(3*n)`
-/

namespace A321375.P16657644093454953129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (A112318 (2 * (n + 2))).toNat + A112314 (3 * n)

end

end A321375.P16657644093454953129

/-!
# A321376: Expansion of Product_{1 < i <= j <= k} (1 - x^(i*j*k)).

The programs for A321376, there is no canonical definition to state claims against.
-/

/-! ## A321376.P16308270146792256869

`(1-n)%A000034(A263199(n))`
-/

namespace A321376.P16308270146792256869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) (A000034 (A263199 n).toNat)

end

end A321376.P16308270146792256869

/-! ## A321376.P12562671533108373876

`∏{p}[n+1, -#]%A104248(A006156(n))`
-/

namespace A321376.P12562671533108373876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) (A104248 (A006156 n).toNat)

end

end A321376.P12562671533108373876

/-! ## A321376.P1131105861252231335

`A016396(A169611(A008574(n)²))`
-/

namespace A321376.P1131105861252231335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016396 (A169611 (A008574 n ^ 2).toNat).toNat

end

end A321376.P1131105861252231335

/-! ## A321376.P6584497114555492269

`A163811(gcd(A160086(n), A213909(n+1)))`
-/

namespace A321376.P6584497114555492269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (Int.gcd (A160086 n) (A213909 (n + 1)))

end

end A321376.P6584497114555492269

/-! ## A321376.P8043538955823808763

`A304109(A328097(3*n+2))-A304118(n+1)`
-/

namespace A321376.P8043538955823808763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (A328097 (3 * n + 2)).toNat - A304118 (n + 1)

end

end A321376.P8043538955823808763

/-!
# A321377: Expansion of Product_{1 < i <= j} (1 - x^(i*j)).

The programs for A321377, there is no canonical definition to state claims against.
-/

/-! ## A321377.P1054252718468532507

`A321376(2*n)+A100910(A004394(n+1))`
-/

namespace A321377.P1054252718468532507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321376 (2 * n) + A100910 (A004394 (n + 1)).toNat

end

end A321377.P1054252718468532507

/-! ## A321377.P12278605285787174860

`A321376(2*n)^record[A298566(n+2)]`
-/

namespace A321377.P12278605285787174860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298566 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321376 (2 * n) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A321377.P12278605285787174860

/-! ## A321377.P12931701771402349759

`A321376(2*n)^A000040(A007662(n))`
-/

namespace A321377.P12931701771402349759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321376 (2 * n) : ℚ) ^ (A000040 (A007662 n).toNat : ℤ)

end

end A321377.P12931701771402349759

/-! ## A321377.P1605897470401762775

`A321376(2*n)+A000122(A335373(3*(n+1)))`
-/

namespace A321377.P1605897470401762775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321376 (2 * n) + A000122 (A335373 (3 * (n + 1))).toNat

end

end A321377.P1605897470401762775

/-! ## A321377.P11430500005025104555

`A008683(A305482(3*n+5)+A000079(n))`
-/

namespace A321377.P11430500005025104555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A305482 (3 * n + 5) + A000079 n).toNat

end

end A321377.P11430500005025104555

/-!
# A321378: Number of integer partitions of n containing no 1's or prime powers.

The programs for A321378, there is no canonical definition to state claims against.
-/

/-! ## A321378.P2054873840575217791

`A101417(A078898(n))%A080529(n)`
-/

namespace A321378.P2054873840575217791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101417 (A078898 n).toNat) (A080529 n)

end

end A321378.P2054873840575217791

/-! ## A321378.P16426021863965435583

`A101417(A078898(n))^A175835(2*(n+1))`
-/

namespace A321378.P16426021863965435583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101417 (A078898 n).toNat : ℚ) ^ (A175835 (2 * (n + 1)) : ℤ)

end

end A321378.P16426021863965435583

/-! ## A321378.P17240395346068260017

`A101417(A078898(n)%A091253(n+1))`
-/

namespace A321378.P17240395346068260017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101417 (Int.tmod (A078898 n) (A091253 (n + 1))).toNat

end

end A321378.P17240395346068260017

/-! ## A321378.P11123854090439440378

`C(A188431(n), A279342(A249699(n)))`
-/

namespace A321378.P11123854090439440378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A188431 n).toNat (A279342 (A249699 n).toNat).toNat

end

end A321378.P11123854090439440378

/-! ## A321378.P11662198377686791615

`A029429(xor(n, A340988(A193092(n))))`
-/

namespace A321378.P11662198377686791615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (Int.xor (n : ℤ) (A340988 ((A193092 n).toNat + 91))).toNat

end

end A321378.P11662198377686791615

/-!
# A321379: Number of ways to write n as n = a*b*c*d with 1 < a <= b <= c <= d < n.

The programs for A321379, there is no canonical definition to state claims against.
-/

/-! ## A321379.P5696589396096733485

`A218320(n+1)-A034836(n+1)`
-/

namespace A321379.P5696589396096733485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1) - A034836 (n + 1)

end

end A321379.P5696589396096733485

/-! ## A321379.P12667191353351024198

`A218320(n+1)-(A102354(n+1)+A088433(n+1))`
-/

namespace A321379.P12667191353351024198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1) - (A102354 (n + 1) + A088433 (n + 1))

end

end A321379.P12667191353351024198

/-! ## A321379.P3095067537055251573

`A218320(A064614(n+1))%A034836(n+1)`
-/

namespace A321379.P3095067537055251573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (A064614 (n + 1)).toNat) (A034836 (n + 1))

end

end A321379.P3095067537055251573

/-! ## A321379.P7601343242487083043

`A218320(A320389(n+1))%A034836(n+1)`
-/

namespace A321379.P7601343242487083043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (A320389 (n + 1)).toNat) (A034836 (n + 1))

end

end A321379.P7601343242487083043

/-! ## A321379.P9781097182316295672

`A218320(A003961(n+1))%A034836(n+1)`
-/

namespace A321379.P9781097182316295672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (A003961 (n + 1)).toNat) (A034836 (n + 1))

end

end A321379.P9781097182316295672

/-! ## A321379.P6071624902025107418

`A218320(A045965(n+1))%A034836(n+1)`
-/

namespace A321379.P6071624902025107418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (A045965 (n + 1)).toNat) (A034836 (n + 1))

end

end A321379.P6071624902025107418

/-! ## A321379.P14994262969667050651

`A218320(A064988(n+1))%A034836(n+1)`
-/

namespace A321379.P14994262969667050651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (A064988 (n + 1)).toNat) (A034836 (n + 1))

end

end A321379.P14994262969667050651

/-! ## A321379.P11831422185314974400

`A218320(A332818(n+1))%A034836(n+1)`
-/

namespace A321379.P11831422185314974400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (A332818 (n + 1)).toNat) (A034836 (n + 1))

end

end A321379.P11831422185314974400

/-! ## A321379.P7974434527041630354

`A100682(A167688(n+1)%A178832(n))`
-/

namespace A321379.P7974434527041630354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (Int.tmod (A167688 (n + 1)) (A178832 n)).toNat

end

end A321379.P7974434527041630354

/-! ## A321379.P2778557098834606171

`A122179(A032742(n+1))%A109496(n+5)`
-/

namespace A321379.P2778557098834606171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122179 (A032742 (n + 1)).toNat) (A109496 (n + 5))

end

end A321379.P2778557098834606171

/-! ## A321379.P15482873740984951721

`A122179(A032742(n+1))%A281757(n)`
-/

namespace A321379.P15482873740984951721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122179 (A032742 (n + 1)).toNat) (A281757 n)

end

end A321379.P15482873740984951721

/-!
# A321382: Number of permutations of 6 copies of 1..n with no element equal to another within a distance of 1.

The programs for A321382, there is no canonical definition to state claims against.
-/

/-! ## A321382.P8972722385713172103

`n!*A190835(n)`
-/

namespace A321382.P8972722385713172103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A190835 n

end

end A321382.P8972722385713172103

/-! ## A321382.P6830639122988715543

`A000142(n)*A190835(n)`
-/

namespace A321382.P6830639122988715543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A190835 n

end

end A321382.P6830639122988715543

/-! ## A321382.P14452552763300937621

`A190782(A179865(n+1))*A190835(n)`
-/

namespace A321382.P14452552763300937621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A179865 (n + 1)).toNat * A190835 n

end

end A321382.P14452552763300937621

/-!
# A321383: Numbers k such that the concatenation k21 is a square.

The programs for A321383, the canonical program `A321383.P16021182823494512336` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321383 has offset 1).

The definition of A321383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321383.P16021182823494512336

`2*a(n-2)-a(n-4)+50` with `a(0)=1, a(1)=15, a(2)=37, a(3)=79`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A321383

/-- `2*a(n-2)-a(n-4)+50` -/
def P16021182823494512336.Spec : Prop :=
  ∀ n, P16021182823494512336.a n = A321383 (n + 1)

theorem P16021182823494512336.correct : P16021182823494512336.Spec := by
  intro n
  simp only [A321383, Nat.add_sub_cancel]

end A321383

/-! ## A321383.P3389598837584626282

`∑[lcm(2, 3*n)]+(2*n+1)²`
-/

namespace A321383.P3389598837584626282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) ^ 2

end

end A321383.P3389598837584626282

namespace A321383

/-- `∑[lcm(2, 3*n)]+(2*n+1)²` -/
def P3389598837584626282.Spec : Prop :=
  ∀ n, (P3389598837584626282.a n : ℤ) = A321383 (n + 1)

end A321383

/-! ## A321383.P4892073734908155949

`∑[15*n]+1-∑[n*gcd(2, n)*gcd(2, n)]`
-/

namespace A321383.P4892073734908155949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A321383.P4892073734908155949

namespace A321383

/-- `∑[15*n]+1-∑[n*gcd(2, n)*gcd(2, n)]` -/
def P4892073734908155949.Spec : Prop :=
  ∀ n, P4892073734908155949.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P14826546089645411288

`A069127(n+1)-∑[3*n*char[2*n]]`
-/

namespace A321383.P14826546089645411288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A321383.P14826546089645411288

namespace A321383

/-- `A069127(n+1)-∑[3*n*char[2*n]]` -/
def P14826546089645411288.Spec : Prop :=
  ∀ n, P14826546089645411288.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P17258197365426987421

`A298027(n)+A033996(n)`
-/

namespace A321383.P17258197365426987421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 n + A033996 n

end

end A321383.P17258197365426987421

namespace A321383

/-- `A298027(n)+A033996(n)` -/
def P17258197365426987421.Spec : Prop :=
  ∀ n, P17258197365426987421.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P8744378769385661886

`A132354(n)+A060544(n+1)`
-/

namespace A321383.P8744378769385661886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132354 n + A060544 (n + 1)

end

end A321383.P8744378769385661886

namespace A321383

/-- `A132354(n)+A060544(n+1)` -/
def P8744378769385661886.Spec : Prop :=
  ∀ n, P8744378769385661886.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P10770922849324115254

`A132356(n)+A119617(n+1)`
-/

namespace A321383.P10770922849324115254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n + A119617 (n + 1)

end

end A321383.P10770922849324115254

namespace A321383

/-- `A132356(n)+A119617(n+1)` -/
def P10770922849324115254.Spec : Prop :=
  ∀ n, P10770922849324115254.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P655572780843562449

`A317300(n)+A069126(n+1)`
-/

namespace A321383.P655572780843562449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + A069126 (n + 1)

end

end A321383.P655572780843562449

namespace A321383

/-- `A317300(n)+A069126(n+1)` -/
def P655572780843562449.Spec : Prop :=
  ∀ n, P655572780843562449.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P14497796964515351251

`A069128(n+1)-A195162(n)`
-/

namespace A321383.P14497796964515351251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069128 (n + 1) - A195162 n

end

end A321383.P14497796964515351251

namespace A321383

/-- `A069128(n+1)-A195162(n)` -/
def P14497796964515351251.Spec : Prop :=
  ∀ n, P14497796964515351251.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P1216260292360125212

`A273366(n)-A119617(n+1)`
-/

namespace A321383.P1216260292360125212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273366 n - A119617 (n + 1)

end

end A321383.P1216260292360125212

namespace A321383

/-- `A273366(n)-A119617(n+1)` -/
def P1216260292360125212.Spec : Prop :=
  ∀ n, P1216260292360125212.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P9926985314676947725

`A069894(n)+A298027(n)-2`
-/

namespace A321383.P9926985314676947725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n + (A298027 n - 2)

end

end A321383.P9926985314676947725

namespace A321383

/-- `A069894(n)+A298027(n)-2` -/
def P9926985314676947725.Spec : Prop :=
  ∀ n, P9926985314676947725.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P7572406091165285747

`A047209(n+1)²-A001057(n)`
-/

namespace A321383.P7572406091165285747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) ^ 2 - A001057 n

end

end A321383.P7572406091165285747

namespace A321383

/-- `A047209(n+1)²-A001057(n)` -/
def P7572406091165285747.Spec : Prop :=
  ∀ n, P7572406091165285747.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P11513645027715068921

`A219190(n+1)+A062786(n+1)`
-/

namespace A321383.P11513645027715068921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (n + 1) + A062786 (n + 1)

end

end A321383.P11513645027715068921

namespace A321383

/-- `A219190(n+1)+A062786(n+1)` -/
def P11513645027715068921.Spec : Prop :=
  ∀ n, P11513645027715068921.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P1884550710794902200

`A069130(n+1)-A057780(n+1)`
-/

namespace A321383.P1884550710794902200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069130 (n + 1) - A057780 (n + 1)

end

end A321383.P1884550710794902200

namespace A321383

/-- `A069130(n+1)-A057780(n+1)` -/
def P1884550710794902200.Spec : Prop :=
  ∀ n, P1884550710794902200.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P522685750743549782

`A069129(n+1)-2*A118277(n)`
-/

namespace A321383.P522685750743549782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) - 2 * A118277 n

end

end A321383.P522685750743549782

namespace A321383

/-- `A069129(n+1)-2*A118277(n)` -/
def P522685750743549782.Spec : Prop :=
  ∀ n, P522685750743549782.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P10933145577041778657

`A062786(n+1)+A132356(n)/2`
-/

namespace A321383.P10933145577041778657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062786 (n + 1) : ℚ) + (A132356 n : ℚ) / 2

end

end A321383.P10933145577041778657

namespace A321383

/-- `A062786(n+1)+A132356(n)/2` -/
def P10933145577041778657.Spec : Prop :=
  ∀ n, P10933145577041778657.a n = (A321383 (n + 1) : ℚ)

end A321383

/-! ## A321383.P16625980060467913212

`A119617(n+1)+2*A219190(n+1)`
-/

namespace A321383.P16625980060467913212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119617 (n + 1) + 2 * A219190 (n + 1)

end

end A321383.P16625980060467913212

namespace A321383

/-- `A119617(n+1)+2*A219190(n+1)` -/
def P16625980060467913212.Spec : Prop :=
  ∀ n, P16625980060467913212.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P7333020152879112977

`A007494(n)+A016754(n)+A007494(n)²`
-/

namespace A321383.P7333020152879112977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (A016754 n + A007494 n ^ 2)

end

end A321383.P7333020152879112977

namespace A321383

/-- `A007494(n)+A016754(n)+A007494(n)²` -/
def P7333020152879112977.Spec : Prop :=
  ∀ n, P7333020152879112977.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P1557275496141699070

`(A001057(n)-A157142(n))²-A001057(n)`
-/

namespace A321383.P1557275496141699070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001057 n - A157142 n) ^ 2 - A001057 n

end

end A321383.P1557275496141699070

namespace A321383

/-- `(A001057(n)-A157142(n))²-A001057(n)` -/
def P1557275496141699070.Spec : Prop :=
  ∀ n, P1557275496141699070.a n = A321383 (n + 1)

end A321383

/-! ## A321383.P4880555854343888255

`A219190(n+1)+A273365(n)+A220082(n+1)`
-/

namespace A321383.P4880555854343888255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (n + 1) + (A273365 n + A220082 (n + 1))

end

end A321383.P4880555854343888255

namespace A321383

/-- `A219190(n+1)+A273365(n)+A220082(n+1)` -/
def P4880555854343888255.Spec : Prop :=
  ∀ n, P4880555854343888255.a n = A321383 (n + 1)

end A321383

/-!
# A321385: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^d.

The programs for A321385, there is no canonical definition to state claims against.
-/

/-! ## A321385.P12177297479315571443

`A138591((n+1)*A080525(n+1))`
-/

namespace A321385.P12177297479315571443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 ((n + 1 : ℤ) * A080525 (n + 1)).toNat

end

end A321385.P12177297479315571443

/-!
# A321386: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^(d-1).

The programs for A321386, there is no canonical definition to state claims against.
-/

/-! ## A321386.P5393277941069923637

`A185726(A026525(n))`
-/

namespace A321386.P5393277941069923637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185726 (A026525 n).toNat

end

end A321386.P5393277941069923637

/-!
# A321387: Expansion of Product_{k>=1} (1 + x^k)^(k^(k-1)).

The programs for A321387, there is no canonical definition to state claims against.
-/

/-! ## A321387.P14826729807036313190

`A289500((n+1)^n+3)`
-/

namespace A321387.P14826729807036313190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 ((n + 1) ^ n + 3)

end

end A321387.P14826729807036313190

/-! ## A321387.P14210911045518917551

`A005378(or(1, A192783(n)))`
-/

namespace A321387.P14210911045518917551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (Int.lor 1 (A192783 n)).toNat

end

end A321387.P14210911045518917551

/-!
# A321388: Expansion of Product_{k>=1} (1 + x^k)^(k^(k-2)).

The programs for A321388, there is no canonical definition to state claims against.
-/

/-! ## A321388.P14932439811353888094

`A373068(∑[n²]+3)`
-/

namespace A321388.P14932439811353888094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373068 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A321388.P14932439811353888094

/-! ## A321388.P270341780945009409

`floor(sqrt(sqrt(A296411(n+1))))`
-/

namespace A321388.P270341780945009409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A296411 (n + 1) : ℝ))⌋

end

end A321388.P270341780945009409

/-!
# A321389: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(k^k).

The programs for A321389, there is no canonical definition to state claims against.
-/

/-! ## A321389.P4443144779477015894

`A292406(n)-A138471(A322451(n))`
-/

namespace A321389.P4443144779477015894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292406 n - A138471 (A322451 n).toNat

end

end A321389.P4443144779477015894

/-!
# A321390: Third Moebius transform of A007716. Number of non-isomorphic aperiodic multiset partitions of weight n whose parts have relatively prime periods and whose dual is also an aperiodic multiset partition.

The programs for A321390, there is no canonical definition to state claims against.
-/

/-! ## A321390.P9244869170360129672

`A038569(A027868(3*n)+A277830(n)-1)`
-/

namespace A321390.P9244869170360129672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A027868 (3 * n) + (A277830 n - 1)).toNat

end

end A321390.P9244869170360129672

/-! ## A321390.P13543772975351136073

`A038569(A027868(3*n)+∑[A007623(n!-1)])`
-/

namespace A321390.P13543772975351136073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (Nat.factorial n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A027868 (3 * n) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321390.P13543772975351136073

/-!
# A321391: Array read by antidiagonals: T(n,k) is the number of achiral rows of n colors using up to k colors.

The programs for A321391, there is no canonical definition to state claims against.
-/

/-! ## A321391.P16164878783396688805

`(C(comp[∑[n]]-n, 2)-(n+1))^A100679(n-C(∑[char[∑[n]]], 2))`
-/

namespace A321391.P16164878783396688805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A100679 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2) : ℤ)

end

end A321391.P16164878783396688805

/-! ## A321391.P2393467480557362272

`(C(comp[∑[n]]-n, 2)-(n+1))^A110654(n-C(∑[char[∑[n]]], 2))`
-/

namespace A321391.P2393467480557362272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A110654 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2) : ℤ)

end

end A321391.P2393467480557362272

/-! ## A321391.P7545924581672864168

`(C(comp[∑[n]]-n, 2)-(n+1))^A004526(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A321391.P7545924581672864168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A004526 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ)

end

end A321391.P7545924581672864168

/-! ## A321391.P13129326080502075871

`(C(comp[∑[n]]-n, 2)-(n+1))^A123108(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A321391.P13129326080502075871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A123108 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ)

end

end A321391.P13129326080502075871

/-! ## A321391.P13035569470446231487

`(C(comp[∑[n]]-n, 2)-(n+1))^A194163(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A321391.P13035569470446231487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A194163 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ)

end

end A321391.P13035569470446231487

/-! ## A321391.P12507961698425600678

`(C(comp[∑[n]]-n, 2)-(n+1))^A256991(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A321391.P12507961698425600678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A256991 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ)

end

end A321391.P12507961698425600678

/-! ## A321391.P9212923119312428844

`(C(comp[∑[n]]-n, 2)-(n+1))^A319468(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A321391.P9212923119312428844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A319468 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ)

end

end A321391.P9212923119312428844

/-! ## A321391.P1120563590744750408

`(C(comp[∑[n]]-n, 2)-(n+1))^A056924(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A321391.P1120563590744750408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A056924 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat : ℤ)

end

end A321391.P1120563590744750408

/-! ## A321391.P7871556496054657712

`2*A277504(n)-A003992(n)`
-/

namespace A321391.P7871556496054657712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277504 n - A003992 n

end

end A321391.P7871556496054657712

/-! ## A321391.P4077405077213887539

`gcd(A342120(comp[∑[n]]), A342120(n))`
-/

namespace A321391.P4077405077213887539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A342120 n)

end

end A321391.P4077405077213887539

/-!
# A321392: a(n) is the number of bases b > 1 such that prime(n) + digitsum(prime(n), base b) is prime (where prime(n) denotes the n-th prime number).

The programs for A321392, there is no canonical definition to state claims against.
-/

/-! ## A321392.P11051169666079616812

`A321393(Δ[A007504(n)])`
-/

namespace A321392.P11051169666079616812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (f1 (n + 1) - f1 n).toNat

end

end A321392.P11051169666079616812

/-! ## A321392.P4666293416401703962

`A321393(A000040(n+1))`
-/

namespace A321392.P4666293416401703962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (A000040 (n + 1)).toNat

end

end A321392.P4666293416401703962

/-! ## A321392.P11329676721553279207

`A321393(A008578(n+2))`
-/

namespace A321392.P11329676721553279207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (A008578 (n + 2)).toNat

end

end A321392.P11329676721553279207

/-! ## A321392.P11926360713127149313

`A321393(A182986(n+2))`
-/

namespace A321392.P11926360713127149313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (A182986 (n + 2)).toNat

end

end A321392.P11926360713127149313

/-! ## A321392.P5916711215301875097

`A321393(record[A006530(n+2)])`
-/

namespace A321392.P5916711215301875097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321392.P5916711215301875097

/-! ## A321392.P17232926900851499742

`A321393(record[A014963(n+2)])`
-/

namespace A321392.P17232926900851499742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321392.P17232926900851499742

/-! ## A321392.P833793467524636776

`A321393(record[A020639(n+2)])`
-/

namespace A321392.P833793467524636776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321392.P833793467524636776

/-! ## A321392.P1687172519520624544

`A321393(A040976(n+1)+2)`
-/

namespace A321392.P1687172519520624544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (A040976 (n + 1) + 2).toNat

end

end A321392.P1687172519520624544

/-! ## A321392.P14556147939100742754

`A321393(record[A000010(n+1)+1])`
-/

namespace A321392.P14556147939100742754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321392.P14556147939100742754

/-! ## A321392.P15958792382517034870

`A321393(eq[1, A001222(n+1)]+1)`
-/

namespace A321392.P15958792382517034870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A321392.P15958792382517034870

/-! ## A321392.P1643037564501381811

`A321393(eq[2, A000005(n+1)]+1)`
-/

namespace A321392.P1643037564501381811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A321392.P1643037564501381811

/-! ## A321392.P11447337502367931454

`A321393(or(1, lt[A001222(n+2), 2]+2))`
-/

namespace A321392.P11447337502367931454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2))

end

end A321392.P11447337502367931454

/-! ## A321392.P9255381260397661336

`A321393(or(1, lt[A000005(n+2), 3]+2))`
-/

namespace A321392.P9255381260397661336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2))

end

end A321392.P9255381260397661336

/-! ## A321392.P6711198342747988868

`A321393(or(1, lt[n, A000010(n+2)]+2))`
-/

namespace A321392.P6711198342747988868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (Nat.lor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2))

end

end A321392.P6711198342747988868

/-!
# A321394: a(n) = (1/24)*n!*[x^n] (9 + sectan(4*x) + 6*sectan(2*x) + 8*sectan(x)) where sectan(x) = sec(x) + tan(x).

The programs for A321394, there is no canonical definition to state claims against.
-/

/-! ## A321394.P3057184147732975582

`A000111(n)*A124303(n)`
-/

namespace A321394.P3057184147732975582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A124303 n

end

end A321394.P3057184147732975582

/-! ## A321394.P5294641441477358665

`abs(A124303(n)*A346838(n))`
-/

namespace A321394.P5294641441477358665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124303 n * A346838 n|

end

end A321394.P5294641441477358665

/-! ## A321394.P3171919763488012503

`A008281(A000096(n))*A124303(n)`
-/

namespace A321394.P3171919763488012503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000096 n).toNat * A124303 n

end

end A321394.P3171919763488012503

/-! ## A321394.P6544743948641156172

`A008282(A000124(n))*A124303(n)`
-/

namespace A321394.P6544743948641156172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A000124 n).toNat * A124303 n

end

end A321394.P6544743948641156172

/-! ## A321394.P3192095803116930362

`A109449(A000217(n))*A124303(n)`
-/

namespace A321394.P3192095803116930362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000217 n).toNat * A124303 n

end

end A321394.P3192095803116930362

/-!
# A321395: Antidiagonal sums of A321396.

The programs for A321395, there is no canonical definition to state claims against.
-/

/-! ## A321395.P578221591028965536

`A135664(A000034(n)*A327017(n))`
-/

namespace A321395.P578221591028965536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A000034 n * A327017 n).toNat

end

end A321395.P578221591028965536

/-! ## A321395.P15753968595683132273

`A070544(A070542(n+1))-A070556(A070546(n+1))`
-/

namespace A321395.P15753968595683132273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070544 (A070542 (n + 1)).toNat - A070556 (A070546 (n + 1)).toNat

end

end A321395.P15753968595683132273

/-!
# A321396: Square array read by ascending antidiagonals, A(n, k) for n >= 0 and k >= 0, related to a class of Motzkin trees.

The programs for A321396, there is no canonical definition to state claims against.
-/

/-! ## A321396.P15955316877593366653

`∑{e}[A089654(A263939(n+1)), #]`
-/

namespace A321396.P15955316877593366653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089654 (A263939 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A321396.P15955316877593366653

/-! ## A321396.P14593133144626299681

`A069157(A089654(A263939(n+1)))`
-/

namespace A321396.P14593133144626299681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A089654 (A263939 (n + 1)).toNat).toNat

end

end A321396.P14593133144626299681

/-! ## A321396.P6667244990129955025

`A249576(and(A002262(n), A131409(n+1)))`
-/

namespace A321396.P6667244990129955025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (Int.land (A002262 n) (A131409 (n + 1))).toNat

end

end A321396.P6667244990129955025

/-! ## A321396.P7277250982234813953

`A260736(and(A002262(n), A131409(n+1)))`
-/

namespace A321396.P7277250982234813953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (Int.land (A002262 n) (A131409 (n + 1))).toNat

end

end A321396.P7277250982234813953

/-! ## A321396.P13703909411493899898

`A300126(and(A002262(n), A131409(n+1)))`
-/

namespace A321396.P13703909411493899898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300126 (Int.land (A002262 n) (A131409 (n + 1))).toNat

end

end A321396.P13703909411493899898

/-!
# A321397: a is the limit of A321396.

The programs for A321397, there is no canonical definition to state claims against.
-/

/-! ## A321397.P16482888039730198731

`A087787(A028398(n+4))%A081366(2*(n+4))`
-/

namespace A321397.P16482888039730198731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087787 (A028398 (n + 4)).toNat) (A081366 (2 * (n + 4)))

end

end A321397.P16482888039730198731

/-!
# A321398: a(n) = (-1)^(n+1)*n!* [x^n](log(x + 1)/2 + log(3*x + 1)/6).

The programs for A321398, there is no canonical definition to state claims against.
-/

/-! ## A321398.P11684197396516196763

`∑[abs(A141413(n))]*A104150(n)`
-/

namespace A321398.P11684197396516196763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141413 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A104150 n

end

end A321398.P11684197396516196763

/-! ## A321398.P10484553558729287139

`A084938(∑[n]+1)*A124302(n)`
-/

namespace A321398.P10484553558729287139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A124302 n

end

end A321398.P10484553558729287139

/-! ## A321398.P8889086058642614820

`(A004273(n)-n)!*∑[abs(A141413(n))]`
-/

namespace A321398.P8889086058642614820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141413 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004273 n - (n : ℤ)).toNat : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321398.P8889086058642614820

/-! ## A321398.P10395644064111098609

`A124302(n)*A132393(A000124(n))`
-/

namespace A321398.P10395644064111098609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n * A132393 (A000124 n).toNat

end

end A321398.P10395644064111098609

/-! ## A321398.P17924056268400822115

`A124302(n)*A219570(A000217(n))`
-/

namespace A321398.P17924056268400822115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n * A219570 (A000217 n).toNat

end

end A321398.P17924056268400822115

/-! ## A321398.P6836546044652944006

`Δ[A003422(A289207(n+1))]*A124302(n)`
-/

namespace A321398.P6836546044652944006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A124302 n

end

end A321398.P6836546044652944006

/-!
# A321399: Antidiagonal sums of A321400.

The programs for A321399, there is no canonical definition to state claims against.
-/

/-! ## A321399.P3832924427510344543

`A093618(ceil(sqrt(A346270(n+1))))`
-/

namespace A321399.P3832924427510344543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093618 ⌈Real.sqrt (A346270 (n + 1) : ℝ)⌉.toNat

end

end A321399.P3832924427510344543

/-! ## A321399.P974845318443692770

`A097992(A020075(n)+A018101(n))`
-/

namespace A321399.P974845318443692770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A020075 n + A018101 n).toNat

end

end A321399.P974845318443692770

/-! ## A321399.P4850289852998701142

`A097992(A026644(n)+A020120(n))`
-/

namespace A321399.P4850289852998701142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A026644 n + A020120 n).toNat

end

end A321399.P4850289852998701142

/-! ## A321399.P5464950406309676510

`A008621(A346753(n)+A033129(n))`
-/

namespace A321399.P5464950406309676510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A346753 n + A033129 n).toNat

end

end A321399.P5464950406309676510

