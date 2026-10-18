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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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
# A397100: a(n) is the number of steps by which n's trajectory under f is ahead of 0's; i.e., f^k(0) = f^(k-a(n))(n) for all sufficiently large k, where f(n) = n XOR 2^A000120(n).

The programs for A397100, the canonical program `A397100.P2153576112342565242` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397100 has offset 0).

The definition of A397100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397100.P2153576112342565242

`A007814(n+1)-A396409(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A397100

/-- `A007814(n+1)-A396409(n)` -/
def P2153576112342565242.Spec : Prop :=
  ∀ n, P2153576112342565242.a n = A397100 n

theorem P2153576112342565242.correct : P2153576112342565242.Spec := by
  intro n
  simp only [A397100]

end A397100

/-! ## A397100.P9042260667192847136

`A000120(n)²-2*A073642(n)`
-/

namespace A397100.P9042260667192847136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 2 - 2 * A073642 n

end

end A397100.P9042260667192847136

namespace A397100

/-- `A000120(n)²-2*A073642(n)` -/
def P9042260667192847136.Spec : Prop :=
  ∀ n, P9042260667192847136.a n = A397100 n

end A397100

/-! ## A397100.P11173578618189282345

`log2(A001316(n))-A005843(A055941(n))`
-/

namespace A397100.P11173578618189282345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A005843 (A055941 n).toNat : ℝ)

end

end A397100.P11173578618189282345

namespace A397100

/-- `log2(A001316(n))-A005843(A055941(n))` -/
def P11173578618189282345.Spec : Prop :=
  ∀ n, P11173578618189282345.a n = (A397100 n : ℝ)

end A397100

/-! ## A397100.P16374765777524566786

`A000120(n)+A000120(n)-A326730(n)`
-/

namespace A397100.P16374765777524566786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A000120 n - A326730 n)

end

end A397100.P16374765777524566786

namespace A397100

/-- `A000120(n)+A000120(n)-A326730(n)` -/
def P16374765777524566786.Spec : Prop :=
  ∀ n, P16374765777524566786.a n = A397100 n

end A397100

/-! ## A397100.P13520899941842501399

`A002378(A000120(n))-A197354(n)`
-/

namespace A397100.P13520899941842501399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000120 n).toNat - A197354 n

end

end A397100.P13520899941842501399

namespace A397100

/-- `A002378(A000120(n))-A197354(n)` -/
def P13520899941842501399.Spec : Prop :=
  ∀ n, P13520899941842501399.a n = A397100 n

end A397100

/-! ## A397100.P3844050370691807501

`A002378(∑[A088705(n)])-A197354(n)`
-/

namespace A397100.P3844050370691807501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A197354 n

end

end A397100.P3844050370691807501

namespace A397100

/-- `A002378(∑[A088705(n)])-A197354(n)` -/
def P3844050370691807501.Spec : Prop :=
  ∀ n, P3844050370691807501.a n = A397100 n

end A397100

/-! ## A397100.P4655160439773880100

`A002378(A070939(n)-A023416(n))-A197354(n)`
-/

namespace A397100.P4655160439773880100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A070939 n - A023416 n).toNat - A197354 n

end

end A397100.P4655160439773880100

namespace A397100

/-- `A002378(A070939(n)-A023416(n))-A197354(n)` -/
def P4655160439773880100.Spec : Prop :=
  ∀ n, P4655160439773880100.a n = A397100 n

end A397100

/-!
# A397101: Number of compositions (c_1,...,c_k) of n with c_i >= 2*k - i.

The programs for A397101, there is no canonical definition to state claims against.
-/

/-! ## A397101.P5435731035893483407

`A005709(n+2)%A269134(n+3)`
-/

namespace A397101.P5435731035893483407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005709 (n + 2)) (A269134 (n + 3))

end

end A397101.P5435731035893483407

/-! ## A397101.P3048711858664520362

`A005709(A351374(n+2))`
-/

namespace A397101.P3048711858664520362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A351374 (n + 2)).toNat

end

end A397101.P3048711858664520362

/-! ## A397101.P3919868113465891206

`filter[A322854(n+2), A133011(#)]`
-/

namespace A397101.P3919868113465891206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A397101.P3919868113465891206

/-! ## A397101.P7136023363867726532

`A005709(n+2)+A000007(A259465(n))`
-/

namespace A397101.P7136023363867726532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 2) + A000007 (A259465 n).toNat

end

end A397101.P7136023363867726532

/-!
# A397102: Which blocks in A280864 have length 4 and whose first and last terms are primes.

The programs for A397102, there is no canonical definition to state claims against.
-/

/-! ## A397102.P16512101019926754507

`∩[A396305(n+1), A396560(n+1)]`
-/

namespace A397102.P16512101019926754507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397102.P16512101019926754507

/-!
# A397106: a(n) = n + A275314(n), for n >= 1.

The programs for A397106, the canonical program `A397106.P13058087477262254909` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397106 has offset 1).

The definition of A397106 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A397106.P13058087477262254909

`n+1+A275314(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A397106

/-- `n+1+A275314(n+1)` -/
def P13058087477262254909.Spec : Prop :=
  ∀ n, P13058087477262254909.a n = A397106 (n + 1)

theorem P13058087477262254909.correct : P13058087477262254909.Spec := by
  intro n
  simp only [A397106, Nat.add_sub_cancel]

end A397106

/-! ## A397106.P15015757909167868901

`A059975(n+1)+2+n`
-/

namespace A397106.P15015757909167868901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) + 2 + (n : ℤ)

end

end A397106.P15015757909167868901

namespace A397106

/-- `A059975(n+1)+2+n` -/
def P15015757909167868901.Spec : Prop :=
  ∀ n, P15015757909167868901.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P2853879594404481346

`2*n+3-A341865(n+1)`
-/

namespace A397106.P2853879594404481346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A341865 (n + 1)

end

end A397106.P2853879594404481346

namespace A397106

/-- `2*n+3-A341865(n+1)` -/
def P2853879594404481346.Spec : Prop :=
  ∀ n, P2853879594404481346.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P3584454957386019312

`A069345(n+1)+A036288(n+1)`
-/

namespace A397106.P3584454957386019312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) + A036288 (n + 1)

end

end A397106.P3584454957386019312

namespace A397106

/-- `A069345(n+1)+A036288(n+1)` -/
def P3584454957386019312.Spec : Prop :=
  ∀ n, P3584454957386019312.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P759815080462665946

`A100006(n+1)+A075795(n+1)`
-/

namespace A397106.P759815080462665946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) + A075795 (n + 1)

end

end A397106.P759815080462665946

namespace A397106

/-- `A100006(n+1)+A075795(n+1)` -/
def P759815080462665946.Spec : Prop :=
  ∀ n, P759815080462665946.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P7181706856024535921

`A140255(n+1)+A062968(n+1)`
-/

namespace A397106.P7181706856024535921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140255 (n + 1) + A062968 (n + 1)

end

end A397106.P7181706856024535921

namespace A397106

/-- `A140255(n+1)+A062968(n+1)` -/
def P7181706856024535921.Spec : Prop :=
  ∀ n, P7181706856024535921.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P7116471159006285752

`A059975(A008585(n+1))+n`
-/

namespace A397106.P7116471159006285752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (A008585 (n + 1)).toNat + (n : ℤ)

end

end A397106.P7116471159006285752

namespace A397106

/-- `A059975(A008585(n+1))+n` -/
def P7116471159006285752.Spec : Prop :=
  ∀ n, P7116471159006285752.a n = A397106 (n + 1)

end A397106

/-! ## A397106.P18045044176886059365

`A397104(A092249(n+2))`
-/

namespace A397106.P18045044176886059365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397104 (A092249 (n + 2)).toNat

end

end A397106.P18045044176886059365

namespace A397106

/-- `A397104(A092249(n+2))` -/
def P18045044176886059365.Spec : Prop :=
  ∀ n, P18045044176886059365.a n = A397106 (n + 1)

end A397106

/-!
# A397107: Lower (1,2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A397107, the canonical program `A397107.P4166444551194803605` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397107 has offset 0).

The definition of A397107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397107.P4166444551194803605

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=9, a(4)=12`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A397107

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4166444551194803605.Spec : Prop :=
  ∀ n, P4166444551194803605.a n = A397107 n

theorem P4166444551194803605.correct : P4166444551194803605.Spec := by
  intro n
  simp only [A397107]

end A397107

/-! ## A397107.P13930917100453684833

`∑[lcm(2, n)]-floor(n/2)`
-/

namespace A397107.P13930917100453684833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A397107.P13930917100453684833

namespace A397107

/-- `∑[lcm(2, n)]-floor(n/2)` -/
def P13930917100453684833.Spec : Prop :=
  ∀ n, P13930917100453684833.a n = A397107 n

end A397107

/-! ## A397107.P4891165075901444445

`∑[(-n)^∑[(-1)^n]]+n²`
-/

namespace A397107.P4891165075901444445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)

end

end A397107.P4891165075901444445

namespace A397107

/-- `∑[(-n)^∑[(-1)^n]]+n²` -/
def P4891165075901444445.Spec : Prop :=
  ∀ n, P4891165075901444445.a n = (A397107 n : ℚ)

end A397107

/-! ## A397107.P4580738819222282532

`∑[C(n+1, gcd(2*n, n²))+n-1]`
-/

namespace A397107.P4580738819222282532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (Nat.gcd (2 * n) (n ^ 2)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397107.P4580738819222282532

namespace A397107

/-- `∑[C(n+1, gcd(2*n, n²))+n-1]` -/
def P4580738819222282532.Spec : Prop :=
  ∀ n, P4580738819222282532.a n = A397107 n

end A397107

/-! ## A397107.P800395381449150923

`A006002(n)%A266883(n)`
-/

namespace A397107.P800395381449150923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006002 n) (A266883 n)

end

end A397107.P800395381449150923

namespace A397107

/-- `A006002(n)%A266883(n)` -/
def P800395381449150923.Spec : Prop :=
  ∀ n, P800395381449150923.a n = A397107 n

end A397107

/-! ## A397107.P9772370640235147387

`A008810(A007494(n))`
-/

namespace A397107.P9772370640235147387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (A007494 n).toNat

end

end A397107.P9772370640235147387

namespace A397107

/-- `A008810(A007494(n))` -/
def P9772370640235147387.Spec : Prop :=
  ∀ n, P9772370640235147387.a n = A397107 n

end A397107

/-! ## A397107.P6562026899509091932

`A008810(A004526(n+1)+n)`
-/

namespace A397107.P6562026899509091932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A397107.P6562026899509091932

namespace A397107

/-- `A008810(A004526(n+1)+n)` -/
def P6562026899509091932.Spec : Prop :=
  ∀ n, P6562026899509091932.a n = A397107 n

end A397107

/-! ## A397107.P9289261914990572140

`A008810(2*n-A004526(n))`
-/

namespace A397107.P9289261914990572140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 ((2 * n : ℤ) - A004526 n).toNat

end

end A397107.P9289261914990572140

namespace A397107

/-- `A008810(2*n-A004526(n))` -/
def P9289261914990572140.Spec : Prop :=
  ∀ n, P9289261914990572140.a n = A397107 n

end A397107

/-! ## A397107.P8599621302805111791

`A372665(n+1)%A028387(n)`
-/

namespace A397107.P8599621302805111791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372665 (n + 1)) (A028387 n)

end

end A397107.P8599621302805111791

namespace A397107

/-- `A372665(n+1)%A028387(n)` -/
def P8599621302805111791.Spec : Prop :=
  ∀ n, P8599621302805111791.a n = A397107 n

end A397107

/-! ## A397107.P4475107241588992234

`A345440(n*(n+2))`
-/

namespace A397107.P4475107241588992234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 (n * (n + 2))

end

end A397107.P4475107241588992234

namespace A397107

/-- `A345440(n*(n+2))` -/
def P4475107241588992234.Spec : Prop :=
  ∀ n, P4475107241588992234.a n = A397107 n

end A397107

/-!
# A397108: Lower (2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A397108, the canonical program `A397108.P5735509425177347241` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397108 has offset 0).

The definition of A397108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397108.P5735509425177347241

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=12`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A397108

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5735509425177347241.Spec : Prop :=
  ∀ n, P5735509425177347241.a n = A397108 n

theorem P5735509425177347241.correct : P5735509425177347241.Spec := by
  intro n
  simp only [A397108]

end A397108

/-! ## A397108.P4146219036119959811

`∑[gcd(n-1, and(1, n))+n-1]`
-/

namespace A397108.P4146219036119959811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397108.P4146219036119959811

namespace A397108

/-- `∑[gcd(n-1, and(1, n))+n-1]` -/
def P4146219036119959811.Spec : Prop :=
  ∀ n, P4146219036119959811.a n = A397108 n

end A397108

/-! ## A397108.P5125924916513325120

`a(n-1)+(n-2)*gcd(2, n)+2` with `a(0)=0`
-/

namespace A397108.P5125924916513325120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n : ℤ) - 2) * (Nat.gcd 2 n : ℤ) + 2)

end

end A397108.P5125924916513325120

namespace A397108

/-- `a(n-1)+(n-2)*gcd(2, n)+2` -/
def P5125924916513325120.Spec : Prop :=
  ∀ n, P5125924916513325120.a n = A397108 n

end A397108

/-! ## A397108.P10211774365849346133

`∑[floor((lcm(n-1, 2*n)+2*n)/(n+1))]`
-/

namespace A397108.P10211774365849346133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm ((n : ℤ) - 1) (2 * n : ℤ) + 2 * n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397108.P10211774365849346133

namespace A397108

/-- `∑[floor((lcm(n-1, 2*n)+2*n)/(n+1))]` -/
def P10211774365849346133.Spec : Prop :=
  ∀ n, P10211774365849346133.a n = A397108 n

end A397108

/-! ## A397108.P10139997939008248731

`A008794(n)+A000982(n)`
-/

namespace A397108.P10139997939008248731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n + A000982 n

end

end A397108.P10139997939008248731

namespace A397108

/-- `A008794(n)+A000982(n)` -/
def P10139997939008248731.Spec : Prop :=
  ∀ n, P10139997939008248731.a n = A397108 n

end A397108

/-! ## A397108.P17670303956030564732

`A032438(n)+A000035(n)`
-/

namespace A397108.P17670303956030564732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n + A000035 n

end

end A397108.P17670303956030564732

namespace A397108

/-- `A032438(n)+A000035(n)` -/
def P17670303956030564732.Spec : Prop :=
  ∀ n, P17670303956030564732.a n = A397108 n

end A397108

/-! ## A397108.P5910476263123666758

`A396812(n)+A396811(n)`
-/

namespace A397108.P5910476263123666758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396812 n + A396811 n

end

end A397108.P5910476263123666758

namespace A397108

/-- `A396812(n)+A396811(n)` -/
def P5910476263123666758.Spec : Prop :=
  ∀ n, P5910476263123666758.a n = A397108 n

end A397108

/-! ## A397108.P3321557829803303112

`A006578(n)-A029578(n)`
-/

namespace A397108.P3321557829803303112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n - A029578 n

end

end A397108.P3321557829803303112

namespace A397108

/-- `A006578(n)-A029578(n)` -/
def P3321557829803303112.Spec : Prop :=
  ∀ n, P3321557829803303112.a n = A397108 n

end A397108

/-! ## A397108.P3261079362195737129

`A084684(n)-A152271(n)`
-/

namespace A397108.P3261079362195737129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n - A152271 n

end

end A397108.P3261079362195737129

namespace A397108

/-- `A084684(n)-A152271(n)` -/
def P3261079362195737129.Spec : Prop :=
  ∀ n, P3261079362195737129.a n = A397108 n

end A397108

/-! ## A397108.P6209745054894274885

`A247643(n)-A084265(n)`
-/

namespace A397108.P6209745054894274885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n - A084265 n

end

end A397108.P6209745054894274885

namespace A397108

/-- `A247643(n)-A084265(n)` -/
def P6209745054894274885.Spec : Prop :=
  ∀ n, P6209745054894274885.a n = A397108 n

end A397108

/-! ## A397108.P17220920526275567223

`A325657(n)-A008794(n)`
-/

namespace A397108.P17220920526275567223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 n - A008794 n

end

end A397108.P17220920526275567223

namespace A397108

/-- `A325657(n)-A008794(n)` -/
def P17220920526275567223.Spec : Prop :=
  ∀ n, P17220920526275567223.a n = A397108 n

end A397108

/-! ## A397108.P50381054648761482

`A011934(n)-A323723(n)`
-/

namespace A397108.P50381054648761482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n - A323723 n

end

end A397108.P50381054648761482

namespace A397108

/-- `A011934(n)-A323723(n)` -/
def P50381054648761482.Spec : Prop :=
  ∀ n, P50381054648761482.a n = A397108 n

end A397108

/-! ## A397108.P2720791123281879258

`A257083(n)-A109613(n)`
-/

namespace A397108.P2720791123281879258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n - A109613 n

end

end A397108.P2720791123281879258

namespace A397108

/-- `A257083(n)-A109613(n)` -/
def P2720791123281879258.Spec : Prop :=
  ∀ n, P2720791123281879258.a n = A397108 n

end A397108

/-! ## A397108.P1422305596310708992

`A354594(n)-A032438(n)`
-/

namespace A397108.P1422305596310708992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 n - A032438 n

end

end A397108.P1422305596310708992

namespace A397108

/-- `A354594(n)-A032438(n)` -/
def P1422305596310708992.Spec : Prop :=
  ∀ n, P1422305596310708992.a n = A397108 n

end A397108

/-! ## A397108.P3321171812392792638

`A397990(n)-A026741(n)`
-/

namespace A397108.P3321171812392792638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n - A026741 n

end

end A397108.P3321171812392792638

namespace A397108

/-- `A397990(n)-A026741(n)` -/
def P3321171812392792638.Spec : Prop :=
  ∀ n, P3321171812392792638.a n = A397108 n

end A397108

/-! ## A397108.P675508954270003947

`A143689(n)-A329482(n)`
-/

namespace A397108.P675508954270003947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n - A329482 n

end

end A397108.P675508954270003947

namespace A397108

/-- `A143689(n)-A329482(n)` -/
def P675508954270003947.Spec : Prop :=
  ∀ n, P675508954270003947.a n = A397108 n

end A397108

/-! ## A397108.P10570504435776209053

`A249127(n)-A242477(n)`
-/

namespace A397108.P10570504435776209053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249127 n - A242477 n

end

end A397108.P10570504435776209053

namespace A397108

/-- `A249127(n)-A242477(n)` -/
def P10570504435776209053.Spec : Prop :=
  ∀ n, P10570504435776209053.a n = A397108 n

end A397108

/-! ## A397108.P12246906941089750478

`xor(A032438(n), A109718(n))`
-/

namespace A397108.P12246906941089750478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032438 n) (A109718 n)

end

end A397108.P12246906941089750478

namespace A397108

/-- `xor(A032438(n), A109718(n))` -/
def P12246906941089750478.Spec : Prop :=
  ∀ n, P12246906941089750478.a n = A397108 n

end A397108

/-! ## A397108.P7119573648829928363

`∪[A033428(n), A056109(n)]`
-/

namespace A397108.P7119573648829928363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A397108.P7119573648829928363

namespace A397108

/-- `∪[A033428(n), A056109(n)]` -/
def P7119573648829928363.Spec : Prop :=
  ∀ n, (P7119573648829928363.a n : ℤ) = A397108 n

end A397108

/-! ## A397108.P6282406004499595973

`A001082(n+1)-A052928(n)`
-/

namespace A397108.P6282406004499595973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - A052928 n

end

end A397108.P6282406004499595973

namespace A397108

/-- `A001082(n+1)-A052928(n)` -/
def P6282406004499595973.Spec : Prop :=
  ∀ n, P6282406004499595973.a n = A397108 n

end A397108

/-!
# A397111: Numbers k such that A000201(k) and A001950(k) are both prime.

The programs for A397111, the canonical program `A397111.P2464221293818646851` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397111 has offset 1).

The definition of A397111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397111.P2464221293818646851

`∩[A184792(n+1), A184794(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A397111

/-- `∩[A184792(n+1), A184794(n+1)]` -/
def P2464221293818646851.Spec : Prop :=
  ∀ n, (P2464221293818646851.a n : ℤ) = A397111 (n + 1)

theorem P2464221293818646851.correct : P2464221293818646851.Spec := by
  intro n
  simp only [A397111, Nat.add_sub_cancel]

end A397111

/-! ## A397111.P15452103053905275959

`A000720(A397112(n+1))`
-/

namespace A397111.P15452103053905275959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A397112 (n + 1)).toNat

end

end A397111.P15452103053905275959

namespace A397111

/-- `A000720(A397112(n+1))` -/
def P15452103053905275959.Spec : Prop :=
  ∀ n, P15452103053905275959.a n = A397111 (n + 1)

end A397111

/-! ## A397111.P37577882157923132

`A316524(A397112(n+1)%A074301(n+1))`
-/

namespace A397111.P37577882157923132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (Int.tmod (A397112 (n + 1)) (A074301 (n + 1))).toNat

end

end A397111.P37577882157923132

namespace A397111

/-- `A316524(A397112(n+1)%A074301(n+1))` -/
def P37577882157923132.Spec : Prop :=
  ∀ n, P37577882157923132.a n = A397111 (n + 1)

end A397111

/-! ## A397111.P14602158386822272275

`A316524(A397112(n+1))%A250942(n+1)`
-/

namespace A397111.P14602158386822272275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316524 (A397112 (n + 1)).toNat) (A250942 (n + 1))

end

end A397111.P14602158386822272275

namespace A397111

/-- `A316524(A397112(n+1))%A250942(n+1)` -/
def P14602158386822272275.Spec : Prop :=
  ∀ n, P14602158386822272275.a n = A397111 (n + 1)

end A397111

/-!
# A397112: Primes indexed by A397111.

The programs for A397112, the canonical program `A397112.P7348906844622945002` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397112 has offset 1).

The definition of A397112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397112.P7348906844622945002

`A000040(A397111(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A397112

/-- `A000040(A397111(n+1))` -/
def P7348906844622945002.Spec : Prop :=
  ∀ n, P7348906844622945002.a n = A397112 (n + 1)

theorem P7348906844622945002.correct : P7348906844622945002.Spec := by
  intro n
  simp only [A397112, Nat.add_sub_cancel]

end A397112

/-!
# A397113: Lower (2,-1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A397113, the canonical program `A397113.P6223883879511154495` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397113 has offset 0).

The definition of A397113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397113.P6223883879511154495

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=-2, a(4)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A397113

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6223883879511154495.Spec : Prop :=
  ∀ n, P6223883879511154495.a n = A397113 n

theorem P6223883879511154495.correct : P6223883879511154495.Spec := by
  intro n
  simp only [A397113]

end A397113

/-! ## A397113.P9183109502482005954

`A363268(n+1)-(n+1)`
-/

namespace A397113.P9183109502482005954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363268 (n + 1) - (n + 1 : ℤ)

end

end A397113.P9183109502482005954

namespace A397113

/-- `A363268(n+1)-(n+1)` -/
def P9183109502482005954.Spec : Prop :=
  ∀ n, P9183109502482005954.a n = A397113 n

end A397113

/-! ## A397113.P11694267081924974879

`A081346(n)-A014255(n)`
-/

namespace A397113.P11694267081924974879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 n - A014255 n

end

end A397113.P11694267081924974879

namespace A397113

/-- `A081346(n)-A014255(n)` -/
def P11694267081924974879.Spec : Prop :=
  ∀ n, P11694267081924974879.a n = A397113 n

end A397113

/-! ## A397113.P13617566992569664404

`A007590(n)-A213038(n)`
-/

namespace A397113.P13617566992569664404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n - A213038 n

end

end A397113.P13617566992569664404

namespace A397113

/-- `A007590(n)-A213038(n)` -/
def P13617566992569664404.Spec : Prop :=
  ∀ n, P13617566992569664404.a n = A397113 n

end A397113

/-! ## A397113.P2366529219762675824

`A135276(n)-A109043(n)`
-/

namespace A397113.P2366529219762675824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n - A109043 n

end

end A397113.P2366529219762675824

namespace A397113

/-- `A135276(n)-A109043(n)` -/
def P2366529219762675824.Spec : Prop :=
  ∀ n, P2366529219762675824.a n = A397113 n

end A397113

/-! ## A397113.P12228820093452795124

`A032438(n)-A213037(n)`
-/

namespace A397113.P12228820093452795124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n - A213037 n

end

end A397113.P12228820093452795124

namespace A397113

/-- `A032438(n)-A213037(n)` -/
def P12228820093452795124.Spec : Prop :=
  ∀ n, P12228820093452795124.a n = A397113 n

end A397113

/-! ## A397113.P1861370351846658481

`A000982(n)-A397268(n)`
-/

namespace A397113.P1861370351846658481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A397268 n

end

end A397113.P1861370351846658481

namespace A397113

/-- `A000982(n)-A397268(n)` -/
def P1861370351846658481.Spec : Prop :=
  ∀ n, P1861370351846658481.a n = A397113 n

end A397113

/-! ## A397113.P3148768652255113804

`A257083(n)-A266723(n)`
-/

namespace A397113.P3148768652255113804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n - A266723 n

end

end A397113.P3148768652255113804

namespace A397113

/-- `A257083(n)-A266723(n)` -/
def P3148768652255113804.Spec : Prop :=
  ∀ n, P3148768652255113804.a n = A397113 n

end A397113

/-! ## A397113.P14889924779557014087

`A325657(n)-A397107(n)`
-/

namespace A397113.P14889924779557014087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 n - A397107 n

end

end A397113.P14889924779557014087

namespace A397113

/-- `A325657(n)-A397107(n)` -/
def P14889924779557014087.Spec : Prop :=
  ∀ n, P14889924779557014087.a n = A397113 n

end A397113

/-! ## A397113.P2269759721639966754

`A087279(n+1)-A059029(n)`
-/

namespace A397113.P2269759721639966754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1) - A059029 n

end

end A397113.P2269759721639966754

namespace A397113

/-- `A087279(n+1)-A059029(n)` -/
def P2269759721639966754.Spec : Prop :=
  ∀ n, P2269759721639966754.a n = A397113 n

end A397113

/-! ## A397113.P14715934492573481289

`A195162(n)-A120413(n+1)`
-/

namespace A397113.P14715934492573481289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n - A120413 (n + 1)

end

end A397113.P14715934492573481289

namespace A397113

/-- `A195162(n)-A120413(n+1)` -/
def P14715934492573481289.Spec : Prop :=
  ∀ n, P14715934492573481289.a n = A397113 n

end A397113

/-! ## A397113.P6631014426640347157

`A110349(n+1)-A357946(n)`
-/

namespace A397113.P6631014426640347157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (n + 1) - A357946 n

end

end A397113.P6631014426640347157

namespace A397113

/-- `A110349(n+1)-A357946(n)` -/
def P6631014426640347157.Spec : Prop :=
  ∀ n, P6631014426640347157.a n = A397113 n

end A397113

/-! ## A397113.P5843902408725607052

`A309805(n+1)-A267353(n)`
-/

namespace A397113.P5843902408725607052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1) - A267353 n

end

end A397113.P5843902408725607052

namespace A397113

/-- `A309805(n+1)-A267353(n)` -/
def P5843902408725607052.Spec : Prop :=
  ∀ n, P5843902408725607052.a n = A397113 n

end A397113

/-! ## A397113.P5175374011796936566

`A062317(n+1)-A085046(n+1)`
-/

namespace A397113.P5175374011796936566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (n + 1) - A085046 (n + 1)

end

end A397113.P5175374011796936566

namespace A397113

/-- `A062317(n+1)-A085046(n+1)` -/
def P5175374011796936566.Spec : Prop :=
  ∀ n, P5175374011796936566.a n = A397113 n

end A397113

/-! ## A397113.P4802154920762792379

`A338041(n+1)-A047219(n+1)`
-/

namespace A397113.P4802154920762792379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (n + 1) - A047219 (n + 1)

end

end A397113.P4802154920762792379

namespace A397113

/-- `A338041(n+1)-A047219(n+1)` -/
def P4802154920762792379.Spec : Prop :=
  ∀ n, P4802154920762792379.a n = A397113 n

end A397113

/-! ## A397113.P11877420643369014396

`2*A008794(n)-A008794(n+1)`
-/

namespace A397113.P11877420643369014396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008794 n - A008794 (n + 1)

end

end A397113.P11877420643369014396

namespace A397113

/-- `2*A008794(n)-A008794(n+1)` -/
def P11877420643369014396.Spec : Prop :=
  ∀ n, P11877420643369014396.a n = A397113 n

end A397113

/-! ## A397113.P6072036999864368843

`A004652(A168232(n+1))-A109613(n)`
-/

namespace A397113.P6072036999864368843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A168232 (n + 1)).toNat - A109613 n

end

end A397113.P6072036999864368843

namespace A397113

/-- `A004652(A168232(n+1))-A109613(n)` -/
def P6072036999864368843.Spec : Prop :=
  ∀ n, P6072036999864368843.a n = A397113 n

end A397113

/-! ## A397113.P9803669675117723961

`A004526(n)*A097065(n)-A004526(n+1)`
-/

namespace A397113.P9803669675117723961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A097065 n - A004526 (n + 1)

end

end A397113.P9803669675117723961

namespace A397113

/-- `A004526(n)*A097065(n)-A004526(n+1)` -/
def P9803669675117723961.Spec : Prop :=
  ∀ n, P9803669675117723961.a n = A397113 n

end A397113

/-! ## A397113.P12802751993684018087

`A397268(n+1)+A397108(n)-A397107(n+1)`
-/

namespace A397113.P12802751993684018087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397268 (n + 1) + (A397108 n - A397107 (n + 1))

end

end A397113.P12802751993684018087

namespace A397113

/-- `A397268(n+1)+A397108(n)-A397107(n+1)` -/
def P12802751993684018087.Spec : Prop :=
  ∀ n, P12802751993684018087.a n = A397113 n

end A397113

/-!
# A397118: Size of clusters of star triples of Family D in the Spectre aperiodic monotile tiling.

The programs for A397118, the canonical program `A397118.P13000304660534981691` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397118 has offset 1).

The definition of A397118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397118.P13000304660534981691

`3*a(n-1)+15*a(n-2)+a(n-3)+12` with `a(0)=2, a(1)=15, a(2)=87`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A397118

/-- `3*a(n-1)+15*a(n-2)+a(n-3)+12` -/
def P13000304660534981691.Spec : Prop :=
  ∀ n, (P13000304660534981691.a n : ℤ) = A397118 (n + 1)

theorem P13000304660534981691.correct : P13000304660534981691.Spec := by
  intro n
  simp only [A397118, Nat.add_sub_cancel]

end A397118

/-!
# A397119: Size of clusters of star triples of Family E in the Spectre aperiodic monotile tiling.

The programs for A397119, the canonical program `A397119.P9974820454996830404` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397119 has offset 1).

The definition of A397119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397119.P9974820454996830404

`3*a(n-1)+15*a(n-2)+a(n-3)+12` with `a(0)=4, a(1)=25, a(2)=147`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A397119

/-- `3*a(n-1)+15*a(n-2)+a(n-3)+12` -/
def P9974820454996830404.Spec : Prop :=
  ∀ n, (P9974820454996830404.a n : ℤ) = A397119 (n + 1)

theorem P9974820454996830404.correct : P9974820454996830404.Spec := by
  intro n
  simp only [A397119, Nat.add_sub_cancel]

end A397119

/-!
# A397120: Size of Type A Megastars of star triples in the Spectre aperiodic monotile tiling.

The programs for A397120, the canonical program `A397120.P1780921705813442705` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397120 has offset 1).

The definition of A397120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397120.P1780921705813442705

`3*a(n-1)+15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=25`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A397120

/-- `3*a(n-1)+15*a(n-2)+a(n-3)` -/
def P1780921705813442705.Spec : Prop :=
  ∀ n, (P1780921705813442705.a n : ℤ) = A397120 (n + 1)

theorem P1780921705813442705.correct : P1780921705813442705.Spec := by
  intro n
  simp only [A397120, Nat.add_sub_cancel]

end A397120

/-!
# A397127: Lexicographically earliest sequence of distinct numbers k that are neither squarefree nor prime powers (k in A126706), such that for any prime p, any run of consecutive multiples of p has length exactly 2.

The programs for A397127, there is no canonical definition to state claims against.
-/

/-! ## A397127.P14770714036970384207

`A397128(A032559(n+1))`
-/

namespace A397127.P14770714036970384207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A032559 (n + 1)).toNat

end

end A397127.P14770714036970384207

/-! ## A397127.P6715126062022522359

`A397128(A276142(n+1))`
-/

namespace A397127.P6715126062022522359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A276142 (n + 1)).toNat

end

end A397127.P6715126062022522359

/-! ## A397127.P16800083317639760835

`A397128(A227549(n+2))`
-/

namespace A397127.P16800083317639760835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A227549 (n + 2)).toNat

end

end A397127.P16800083317639760835

/-! ## A397127.P3571283324439192080

`A397128(A396204(n+2))`
-/

namespace A397127.P3571283324439192080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397128 (A396204 (n + 2)).toNat

end

end A397127.P3571283324439192080

/-!
# A397133: Triangle T(n,m) read by rows: the number of partitions of [1..n] into sets of size m.

The programs for A397133, there is no canonical definition to state claims against.
-/

/-! ## A397133.P8736856228817426451

`A200472(A120913(n+1))`
-/

namespace A397133.P8736856228817426451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200472 (A120913 (n + 1)).toNat

end

end A397133.P8736856228817426451

/-! ## A397133.P3220518000336755009

`A066387(n+1)/A133644(n+1)`
-/

namespace A397133.P3220518000336755009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066387 (n + 1) : ℚ) / (A133644 (n + 1) : ℚ)

end

end A397133.P3220518000336755009

/-!
# A397136: Dirichlet g.f.: Product_{p prime} (1 + 2/p^s + 1/p^(2*s-1)).

The programs for A397136, the canonical program `A397136.P9058078001182760132` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397136 has offset 1).

The definition of A397136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397136.P1983461004921888142

`A055076(n+1)*A397238(n+1)`
-/

namespace A397136.P1983461004921888142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1) * A397238 (n + 1)

end

end A397136.P1983461004921888142

namespace A397136

/-- `A055076(n+1)*A397238(n+1)` -/
def P1983461004921888142.Spec : Prop :=
  ∀ n, P1983461004921888142.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P2678002185293479189

`A056671(n+1)*A397238(n+1)`
-/

namespace A397136.P2678002185293479189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A397238 (n + 1)

end

end A397136.P2678002185293479189

namespace A397136

/-- `A056671(n+1)*A397238(n+1)` -/
def P2678002185293479189.Spec : Prop :=
  ∀ n, P2678002185293479189.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P18377762273259444304

`A069780(n+1)*A397238(n+1)`
-/

namespace A397136.P18377762273259444304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069780 (n + 1) * A397238 (n + 1)

end

end A397136.P18377762273259444304

namespace A397136

/-- `A069780(n+1)*A397238(n+1)` -/
def P18377762273259444304.Spec : Prop :=
  ∀ n, P18377762273259444304.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P12896341959212066544

`A212793(n+1)*A347291(n+1)`
-/

namespace A397136.P12896341959212066544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A347291 (n + 1)

end

end A397136.P12896341959212066544

namespace A397136

/-- `A212793(n+1)*A347291(n+1)` -/
def P12896341959212066544.Spec : Prop :=
  ∀ n, P12896341959212066544.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P16663015376431046239

`A294931(n+1)*A397238(n+1)`
-/

namespace A397136.P16663015376431046239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294931 (n + 1) * A397238 (n + 1)

end

end A397136.P16663015376431046239

namespace A397136

/-- `A294931(n+1)*A397238(n+1)` -/
def P16663015376431046239.Spec : Prop :=
  ∀ n, P16663015376431046239.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P6259643150766197977

`A295878(n+1)*A397238(n+1)`
-/

namespace A397136.P6259643150766197977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1) * A397238 (n + 1)

end

end A397136.P6259643150766197977

namespace A397136

/-- `A295878(n+1)*A397238(n+1)` -/
def P6259643150766197977.Spec : Prop :=
  ∀ n, P6259643150766197977.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P5197731517680259140

`A363825(n+1)*A397238(n+1)`
-/

namespace A397136.P5197731517680259140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363825 (n + 1) * A397238 (n + 1)

end

end A397136.P5197731517680259140

namespace A397136

/-- `A363825(n+1)*A397238(n+1)` -/
def P5197731517680259140.Spec : Prop :=
  ∀ n, P5197731517680259140.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P15840257122934584798

`A365402(n+1)*A397238(n+1)`
-/

namespace A397136.P15840257122934584798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 (n + 1) * A397238 (n + 1)

end

end A397136.P15840257122934584798

namespace A397136

/-- `A365402(n+1)*A397238(n+1)` -/
def P15840257122934584798.Spec : Prop :=
  ∀ n, P15840257122934584798.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P2577552025572600303

`A366308(n+1)*A397238(n+1)`
-/

namespace A397136.P2577552025572600303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366308 (n + 1) * A397238 (n + 1)

end

end A397136.P2577552025572600303

namespace A397136

/-- `A366308(n+1)*A397238(n+1)` -/
def P2577552025572600303.Spec : Prop :=
  ∀ n, P2577552025572600303.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P4636055799189655235

`A368470(n+1)*A397238(n+1)`
-/

namespace A397136.P4636055799189655235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (n + 1) * A397238 (n + 1)

end

end A397136.P4636055799189655235

namespace A397136

/-- `A368470(n+1)*A397238(n+1)` -/
def P4636055799189655235.Spec : Prop :=
  ∀ n, P4636055799189655235.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P16345998833432303175

`A368977(n+1)*A397238(n+1)`
-/

namespace A397136.P16345998833432303175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (n + 1) * A397238 (n + 1)

end

end A397136.P16345998833432303175

namespace A397136

/-- `A368977(n+1)*A397238(n+1)` -/
def P16345998833432303175.Spec : Prop :=
  ∀ n, P16345998833432303175.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P10770373598130830667

`A369307(n+1)*A397238(n+1)`
-/

namespace A397136.P10770373598130830667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369307 (n + 1) * A397238 (n + 1)

end

end A397136.P10770373598130830667

namespace A397136

/-- `A369307(n+1)*A397238(n+1)` -/
def P10770373598130830667.Spec : Prop :=
  ∀ n, P10770373598130830667.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P7935951825377724839

`A387960(n+1)*A397238(n+1)`
-/

namespace A397136.P7935951825377724839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387960 (n + 1) * A397238 (n + 1)

end

end A397136.P7935951825377724839

namespace A397136

/-- `A387960(n+1)*A397238(n+1)` -/
def P7935951825377724839.Spec : Prop :=
  ∀ n, P7935951825377724839.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P8085798890582927377

`A392628(n+1)*A397238(n+1)`
-/

namespace A397136.P8085798890582927377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392628 (n + 1) * A397238 (n + 1)

end

end A397136.P8085798890582927377

namespace A397136

/-- `A392628(n+1)*A397238(n+1)` -/
def P8085798890582927377.Spec : Prop :=
  ∀ n, P8085798890582927377.a n = A397136 (n + 1)

end A397136

/-! ## A397136.P9058078001182760132

`lcm(A007427(n+1), A347291(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A397136

/-- `lcm(A007427(n+1), A347291(n+1))` -/
def P9058078001182760132.Spec : Prop :=
  ∀ n, (P9058078001182760132.a n : ℤ) = A397136 (n + 1)

theorem P9058078001182760132.correct : P9058078001182760132.Spec := by
  intro n
  simp only [A397136, Nat.add_sub_cancel]

end A397136

/-!
# A397142: Palindromes without digit 0 whose square is also a palindrome.

The programs for A397142, there is no canonical definition to state claims against.
-/

/-! ## A397142.P12827304175676466044

`∩[A007932(n+1), A057135(n+1)]`
-/

namespace A397142.P12827304175676466044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P12827304175676466044

/-! ## A397142.P11928858324237707690

`∩[A002778(n+1), A082207(n+1)]`
-/

namespace A397142.P11928858324237707690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P11928858324237707690

/-! ## A397142.P4761749413943827464

`∩[A002778(n+1), A083114(n+1)]`
-/

namespace A397142.P4761749413943827464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P4761749413943827464

/-! ## A397142.P14847665878947706466

`∩[A002778(n+1), A083115(n+1)]`
-/

namespace A397142.P14847665878947706466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P14847665878947706466

/-! ## A397142.P3430117715074201560

`∩[A057135(n+1), A082207(n+1)]`
-/

namespace A397142.P3430117715074201560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397142.P3430117715074201560

/-!
# A397144: G.f. A(x), with A(0) = 0, satisfies A(x-x^2) = x + A(x)^3.

The programs for A397144, there is no canonical definition to state claims against.
-/

/-! ## A397144.P11804817627771270778

`A151916(A111277(n))`
-/

namespace A397144.P11804817627771270778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151916 (A111277 n).toNat

end

end A397144.P11804817627771270778

/-! ## A397144.P12131287810752471930

`A023193(A360101(n)+1)`
-/

namespace A397144.P12131287810752471930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A360101 n + 1).toNat

end

end A397144.P12131287810752471930

/-!
# A397147: G.f. A(x), with A(0) = 0, satisfies A(x-x^3) = x + A(x)^2.

The programs for A397147, there is no canonical definition to state claims against.
-/

/-! ## A397147.P14096285425512505690

`A268132(A149019(n))`
-/

namespace A397147.P14096285425512505690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (A149019 n).toNat

end

end A397147.P14096285425512505690

/-! ## A397147.P5283616305153373538

`A091208(A014398(n))`
-/

namespace A397147.P5283616305153373538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091208 (A014398 n).toNat

end

end A397147.P5283616305153373538

/-!
# A397150: Number of decimal places which are known after using n terms of A072193 and treating them as the coefficients of a continued fraction.

The programs for A397150, there is no canonical definition to state claims against.
-/

/-! ## A397150.P7183234708797469431

`n-A124766(A000041(n)-A383092(n))`
-/

namespace A397150.P7183234708797469431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A124766 (A000041 n - A383092 n).toNat

end

end A397150.P7183234708797469431

/-!
# A397151: Number of compositions (c_1,...,c_k) of n with c_i >= 3*k - 2*i.

The programs for A397151, there is no canonical definition to state claims against.
-/

/-! ## A397151.P10597554360399077908

`A086299(A059762(n+1))+A005711(n+2)`
-/

namespace A397151.P10597554360399077908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (A059762 (n + 1)).toNat + A005711 (n + 2)

end

end A397151.P10597554360399077908

/-! ## A397151.P1416083536864553207

`A322856(n+3)^A232976(A323519(n+1))`
-/

namespace A397151.P1416083536864553207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322856 (n + 3) : ℚ) ^ (A232976 (A323519 (n + 1)).toNat : ℤ)

end

end A397151.P1416083536864553207

/-! ## A397151.P13916720196601680490

`A322856(n+3)%A333167(A000045(n))`
-/

namespace A397151.P13916720196601680490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322856 (n + 3)) (A333167 (A000045 n).toNat)

end

end A397151.P13916720196601680490

/-!
# A397164: In A280864, these are the primes that begin a block of length 4 that both begins and ends with a prime.

The programs for A397164, there is no canonical definition to state claims against.
-/

/-! ## A397164.P13740528560893864786

`A396301(A397102(n+1))`
-/

namespace A397164.P13740528560893864786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396301 (A397102 (n + 1)).toNat

end

end A397164.P13740528560893864786

/-! ## A397164.P8965457894455245835

`A396303(A397102(n+1)-2)`
-/

namespace A397164.P8965457894455245835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396303 (A397102 (n + 1) - 2).toNat

end

end A397164.P8965457894455245835

/-! ## A397164.P13248437789351650406

`A000040(A397165(n+1))`
-/

namespace A397164.P13248437789351650406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397165 (n + 1)).toNat

end

end A397164.P13248437789351650406

/-!
# A397165: Apply PrimePi to A397164.

The programs for A397165, there is no canonical definition to state claims against.
-/

/-! ## A397165.P17189626749884681151

`A000720(A397164(n+1))`
-/

namespace A397165.P17189626749884681151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A397164 (n + 1)).toNat

end

end A397165.P17189626749884681151

/-! ## A397165.P9793395930143585583

`A000720(A396301(A397102(n+1)))`
-/

namespace A397165.P9793395930143585583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A396301 (A397102 (n + 1)).toNat).toNat

end

end A397165.P9793395930143585583

/-!
# A397166: a(n) = smallest k such that prime(n) divides A280864(k).

The programs for A397166, there is no canonical definition to state claims against.
-/

/-! ## A397166.P2699183035022121931

`A280742(n+1)-A007949(A297191(3*n+4))`
-/

namespace A397166.P2699183035022121931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280742 (n + 1) - A007949 (A297191 (3 * n + 4)).toNat

end

end A397166.P2699183035022121931

/-! ## A397166.P15195309986545935096

`A280742(n+1)-A079998(A018046(n))`
-/

namespace A397166.P15195309986545935096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280742 (n + 1) - A079998 (A018046 n).toNat

end

end A397166.P15195309986545935096

/-! ## A397166.P6795260066407227263

`lt[A332280(n+3), A000578(A280738(n+1))]`
-/

namespace A397166.P6795260066407227263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A280738 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397166.P6795260066407227263

/-!
# A397167: Consider the square spiral with cells labeled counterclockwise starting at 0, as in A304586 and A307282; sequence gives irregular triangle read by rows, where row n lists the neighbors of cell n that already exist when cell n is being filled in.

The programs for A397167, there is no canonical definition to state claims against.
-/

/-! ## A397167.P9322123190416646362

`A001631(n)%A060594(A052082(n+4))`
-/

namespace A397167.P9322123190416646362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001631 n) (A060594 (A052082 (n + 4)).toNat)

end

end A397167.P9322123190416646362

/-!
# A397168: Index of n in A354434, or -1 if n never appears.

The programs for A397168, there is no canonical definition to state claims against.
-/

/-! ## A397168.P16060507778630796698

`A119435(A244548(n+1))`
-/

namespace A397168.P16060507778630796698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119435 (A244548 (n + 1)).toNat

end

end A397168.P16060507778630796698

/-!
# A397169: The leading diagonal of A397219.

The programs for A397169, there is no canonical definition to state claims against.
-/

/-! ## A397169.P2933967196162197171

`A397219(∑[n]+1)`
-/

namespace A397169.P2933967196162197171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A397169.P2933967196162197171

/-! ## A397169.P9146669834980383777

`A397219(A000124(n))%A001262(n+1)`
-/

namespace A397169.P9146669834980383777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397219 (A000124 n).toNat) (A001262 (n + 1))

end

end A397169.P9146669834980383777

/-! ## A397169.P15788904385543631233

`A000035(2*n+1)*A397219(A000124(n))`
-/

namespace A397169.P15788904385543631233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A397219 (A000124 n).toNat

end

end A397169.P15788904385543631233

/-! ## A397169.P10842158120709816288

`A000034(2*(n+2))*A397219(A000124(n))`
-/

namespace A397169.P10842158120709816288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 2)) * A397219 (A000124 n).toNat

end

end A397169.P10842158120709816288

/-!
# A397171: Primes that take the longest to appear in A396013.

The programs for A397171, there is no canonical definition to state claims against.
-/

/-! ## A397171.P15430158319191479803

`p?[∑[A352517(2*n+1)]]`
-/

namespace A397171.P15430158319191479803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A397171.P15430158319191479803

/-! ## A397171.P9906536438519978155

`∩[A078668(n+1), A158573(n+1)]`
-/

namespace A397171.P9906536438519978155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397171.P9906536438519978155

/-! ## A397171.P1191402008722365593

`A300271(A089438(n+2))`
-/

namespace A397171.P1191402008722365593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A089438 (n + 2)).toNat

end

end A397171.P1191402008722365593

/-! ## A397171.P5532652901206195807

`eq[A321452(n), A358492(n+1)]`
-/

namespace A397171.P5532652901206195807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358492 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397171.P5532652901206195807

/-! ## A397171.P14586298707205698323

`A000040(comp[10-A256528(n+1)])`
-/

namespace A397171.P14586298707205698323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A256528 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397171.P14586298707205698323

/-!
# A397172: Number of primes in n-th block of A280864.

The programs for A397172, there is no canonical definition to state claims against.
-/

/-! ## A397172.P2759757708111491397

`A166124(A063698(n+1))`
-/

namespace A397172.P2759757708111491397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166124 (A063698 (n + 1)).toNat

end

end A397172.P2759757708111491397

/-! ## A397172.P12880397526771158589

`A365805(A292104(n+5))%A151765(n+1)`
-/

namespace A397172.P12880397526771158589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365805 (A292104 (n + 5)).toNat) (A151765 (n + 1))

end

end A397172.P12880397526771158589

/-! ## A397172.P7946739641486333352

`A367623(A225773(n+2))`
-/

namespace A397172.P7946739641486333352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367623 (A225773 (n + 2)).toNat

end

end A397172.P7946739641486333352

/-! ## A397172.P1728564736669677461

`A258045(A061840(n+1))`
-/

namespace A397172.P1728564736669677461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258045 (A061840 (n + 1)).toNat

end

end A397172.P1728564736669677461

/-! ## A397172.P16959796205748234661

`A053120(C(A115994(n+4), A380542(2*n+3)))`
-/

namespace A397172.P16959796205748234661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (Nat.choose (A115994 (n + 4)).toNat (A380542 (2 * n + 3)).toNat)

end

end A397172.P16959796205748234661

/-!
# A397173: Irregular triangle T(n,k) (n >= 2, k>=0) read by rows: T(n,k) = number of times the sum W(i)+W(j) is equal to k, for 1 <= i < j <= n, where W is Weinstein's sequence A394611.

The programs for A397173, there is no canonical definition to state claims against.
-/

/-! ## A397173.P14076228109119165734

`A333381(gcd(A000740(n+1), A111035(n+3)))`
-/

namespace A397173.P14076228109119165734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.gcd (A000740 (n + 1)) (A111035 (n + 3)))

end

end A397173.P14076228109119165734

/-! ## A397173.P6309682406964364820

`A233284(A103481(n+1))`
-/

namespace A397173.P6309682406964364820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (A103481 (n + 1)).toNat

end

end A397173.P6309682406964364820

/-! ## A397173.P12474272540396865869

`A380698(A023652(n+1))`
-/

namespace A397173.P12474272540396865869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380698 (A023652 (n + 1)).toNat

end

end A397173.P12474272540396865869

/-! ## A397173.P9930893947556921506

`A156607(A145882(n+2))`
-/

namespace A397173.P9930893947556921506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156607 (A145882 (n + 2)).toNat

end

end A397173.P9930893947556921506

/-! ## A397173.P6294748834561992044

`gcd(A037445(A008863(n)), A304428(n))`
-/

namespace A397173.P6294748834561992044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037445 (A008863 n).toNat) (A304428 n)

end

end A397173.P6294748834561992044

/-!
# A397175: Numbers that appear in A394611.

The programs for A397175, there is no canonical definition to state claims against.
-/

/-! ## A397175.P18205396521019293323

`comp[A397471(n+1)]`
-/

namespace A397175.P18205396521019293323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397175.P18205396521019293323

/-! ## A397175.P17447574009726417192

`A394611(A397176(n+1))`
-/

namespace A397175.P17447574009726417192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394611 (A397176 (n + 1)).toNat

end

end A397175.P17447574009726417192

/-!
# A397177: a(n) = n - A394611(n).

The programs for A397177, there is no canonical definition to state claims against.
-/

/-! ## A397177.P1406124973768562781

`n+1-A394611(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397177.P1406124973768562781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A394611 (n + 1)

end

end A397177.P1406124973768562781

/-!
# A397178: Irregular triangle read by rows: T(n,k) (n >= 1, k >= 0) = number of times k appears in the first n terms of A394611.

The programs for A397178, there is no canonical definition to state claims against.
-/

/-! ## A397178.P10581800434610514807

`A030341(A203074(n)-A010051(3*n+1))`
-/

namespace A397178.P10581800434610514807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A203074 n - A010051 (3 * n + 1)).toNat

end

end A397178.P10581800434610514807

/-! ## A397178.P17150657520191280140

`A190672(A340595(n))`
-/

namespace A397178.P17150657520191280140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (A340595 n).toNat

end

end A397178.P17150657520191280140

/-! ## A397178.P16385367355671703153

`A246146(n+4)+A136522(A115596(n+1))`
-/

namespace A397178.P16385367355671703153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 (n + 4) + A136522 (A115596 (n + 1)).toNat

end

end A397178.P16385367355671703153

/-! ## A397178.P17705065276791287836

`A246146(n+4)+A136522(A093313(3*(n+1)))`
-/

namespace A397178.P17705065276791287836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 (n + 4) + A136522 (A093313 (3 * (n + 1))).toNat

end

end A397178.P17705065276791287836

/-! ## A397178.P8058009114235764017

`A379144(∑[n+1]+1)`
-/

namespace A397178.P8058009114235764017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379144 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A397178.P8058009114235764017

/-!
# A397183: a(n) = A317105(n)/2.

The programs for A397183, there is no canonical definition to state claims against.
-/

/-! ## A397183.P15983809822629202696

`A317105(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397183.P15983809822629202696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317105 n : ℚ) / 2

end

end A397183.P15983809822629202696

/-! ## A397183.P2460805453757733030

`A329022(n+1)-1`
-/

namespace A397183.P2460805453757733030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329022 (n + 1) - 1

end

end A397183.P2460805453757733030

/-! ## A397183.P4983381856118152458

`(A317106(n+1)-1)/2`
-/

namespace A397183.P4983381856118152458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317106 (n + 1) - 1 : ℚ) / 2

end

end A397183.P4983381856118152458

/-! ## A397183.P15891934462491904787

`A001281(A317105(n))`
-/

namespace A397183.P15891934462491904787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A317105 n).toNat

end

end A397183.P15891934462491904787

/-! ## A397183.P17679809447111823357

`A004524(A317106(n+1))`
-/

namespace A397183.P17679809447111823357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A317106 (n + 1)).toNat

end

end A397183.P17679809447111823357

/-! ## A397183.P3722956521303398145

`A023443(A329022(n+1))`
-/

namespace A397183.P3722956521303398145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A329022 (n + 1)).toNat

end

end A397183.P3722956521303398145

/-! ## A397183.P6304465106307261471

`A317106(n+1)%A329022(n+1)`
-/

namespace A397183.P6304465106307261471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317106 (n + 1)) (A329022 (n + 1))

end

end A397183.P6304465106307261471

/-!
# A397184: Number of nonisomorphic metrizable betweenness relations on a set of n elements.

The programs for A397184, there is no canonical definition to state claims against.
-/

/-! ## A397184.P9660668714218171839

`A074945(n!²)`
-/

namespace A397184.P9660668714218171839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074945 (Nat.factorial n ^ 2)

end

end A397184.P9660668714218171839

/-!
# A397185: a(n) is the smallest positive integer m such that every even integer from 2 to 2n can be expressed as a sum of two (not necessarily distinct) 1-bit positions in the binary expansion of m.

The programs for A397185, there is no canonical definition to state claims against.
-/

/-! ## A397185.P10556616019302083820

`A063886(n)+record[A348366(n)]`
-/

namespace A397185.P10556616019302083820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397185.P10556616019302083820

/-! ## A397185.P15045148203377383314

`A354711(A018170(n))`
-/

namespace A397185.P15045148203377383314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354711 (A018170 n).toNat

end

end A397185.P15045148203377383314

/-! ## A397185.P9351302258421099313

`A106317(A355325(n))`
-/

namespace A397185.P9351302258421099313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A355325 n).toNat

end

end A397185.P9351302258421099313

/-! ## A397185.P15480959422341544679

`A001650(∑[A335537(n)])`
-/

namespace A397185.P15480959422341544679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A397185.P15480959422341544679

/-!
# A397187: a(n) = ((n + 1)^prime(n) - n^prime(n) - 1)/prime(n).

The programs for A397187, there is no canonical definition to state claims against.
-/

/-! ## A397187.P3067422329119499028

`A397186((n+1)²+n²)`
-/

namespace A397187.P3067422329119499028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397186 ((n + 1) ^ 2 + n ^ 2)

end

end A397187.P3067422329119499028

/-!
# A397190: Number of directed Hamiltonian cycles in the n X n torus grid graph, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A397190, there is no canonical definition to state claims against.
-/

/-! ## A397190.P8332639760356686623

`A173720(A355514(n+1))`
-/

namespace A397190.P8332639760356686623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173720 (A355514 (n + 1)).toNat

end

end A397190.P8332639760356686623

/-!
# A397193: Average k of twin prime pairs such that d*2^(k/d) is also the average of twin prime pairs for some d.

The programs for A397193, there is no canonical definition to state claims against.
-/

/-! ## A397193.P10119237605265386725

`eq[A211986(n+1), A353464(n+1)]`
-/

namespace A397193.P10119237605265386725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397193.P10119237605265386725

/-! ## A397193.P3201777748026731930

`A014574(lt[A107788(n+1), A329431(3*n)])`
-/

namespace A397193.P3201777748026731930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329431 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397193.P3201777748026731930

/-! ## A397193.P386100067070014201

`A014574(lt[A011782(n+4), A329431(3*n)])`
-/

namespace A397193.P386100067070014201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329431 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397193.P386100067070014201

