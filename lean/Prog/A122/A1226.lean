import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
# A122600: Expansion of 1/(1 + 3*x - 4*x^2 + x^3).

The programs for A122600, the canonical program `A122600.P680517027422699838` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122600 has offset 0).

The definition of A122600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122600.P680517027422699838

`(-1)^n*(6*A215076(n+4)-21*A215076(n+3)-13*A215076(n+2))/7`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122600

/-- `(-1)^n*(6*A215076(n+4)-21*A215076(n+3)-13*A215076(n+2))/7` -/
def P680517027422699838.Spec : Prop :=
  ∀ n, P680517027422699838.a n = (A122600 n : ℚ)

end A122600

/-! ## A122600.P7080849415042134670

`∑[(-1)^n*A181879(n+1)]`
-/

namespace A122600.P7080849415042134670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A181879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122600.P7080849415042134670

namespace A122600

/-- `∑[(-1)^n*A181879(n+1)]` -/
def P7080849415042134670.Spec : Prop :=
  ∀ n, P7080849415042134670.a n = A122600 n

end A122600

/-!
# A122601: a(n)=(n-th prime +1) modulo 7.

The programs for A122601, the canonical program `A122601.P9678558963504782451` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122601 has offset 1).

The definition of A122601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122601.P9678558963504782451

`A008864(n+1)%7`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122601

/-- `A008864(n+1)%7` -/
def P9678558963504782451.Spec : Prop :=
  ∀ n, P9678558963504782451.a n = A122601 (n + 1)

theorem P9678558963504782451.correct : P9678558963504782451.Spec := by
  intro n
  simp only [A122601, Nat.add_sub_cancel]

end A122601

/-! ## A122601.P3136715737487824583

`A028815(n+1)%7`
-/

namespace A122601.P3136715737487824583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028815 (n + 1)) 7

end

end A122601.P3136715737487824583

namespace A122601

/-- `A028815(n+1)%7` -/
def P3136715737487824583.Spec : Prop :=
  ∀ n, P3136715737487824583.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P15331429062627654825

`A175224(n+1)%7`
-/

namespace A122601.P15331429062627654825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175224 (n + 1)) 7

end

end A122601.P15331429062627654825

namespace A122601

/-- `A175224(n+1)%7` -/
def P15331429062627654825.Spec : Prop :=
  ∀ n, P15331429062627654825.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P2880665804147470178

`A240068(n+1)%7`
-/

namespace A122601.P2880665804147470178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240068 (n + 1)) 7

end

end A122601.P2880665804147470178

namespace A122601

/-- `A240068(n+1)%7` -/
def P2880665804147470178.Spec : Prop :=
  ∀ n, P2880665804147470178.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P779011164073944246

`sqrt(A110833(n+1))%7`
-/

namespace A122601.P779011164073944246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ))) 7

end

end A122601.P779011164073944246

namespace A122601

/-- `sqrt(A110833(n+1))%7` -/
def P779011164073944246.Spec : Prop :=
  ∀ n, P779011164073944246.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P2450967897062240771

`∑[A125266(n+1)]%7`
-/

namespace A122601.P2450967897062240771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 7

end

end A122601.P2450967897062240771

namespace A122601

/-- `∑[A125266(n+1)]%7` -/
def P2450967897062240771.Spec : Prop :=
  ∀ n, P2450967897062240771.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P16409508803901575527

`(Δ[A007504(n)]+1)%7`
-/

namespace A122601.P16409508803901575527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 7

end

end A122601.P16409508803901575527

namespace A122601

/-- `(Δ[A007504(n)]+1)%7` -/
def P16409508803901575527.Spec : Prop :=
  ∀ n, P16409508803901575527.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P8014086006389040860

`(A000040(n+1)+1)%7`
-/

namespace A122601.P8014086006389040860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + 1) 7

end

end A122601.P8014086006389040860

namespace A122601

/-- `(A000040(n+1)+1)%7` -/
def P8014086006389040860.Spec : Prop :=
  ∀ n, P8014086006389040860.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P18016851303399947396

`A010876(A039712(n+1)+1)`
-/

namespace A122601.P18016851303399947396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A039712 (n + 1) + 1).toNat

end

end A122601.P18016851303399947396

namespace A122601

/-- `A010876(A039712(n+1)+1)` -/
def P18016851303399947396.Spec : Prop :=
  ∀ n, P18016851303399947396.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P12643570419905358846

`A010876(A239694(n+1)+1)`
-/

namespace A122601.P12643570419905358846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A239694 (n + 1) + 1).toNat

end

end A122601.P12643570419905358846

namespace A122601

/-- `A010876(A239694(n+1)+1)` -/
def P12643570419905358846.Spec : Prop :=
  ∀ n, P12643570419905358846.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P4885807738990525795

`A010876(A242121(n+1)+1)`
-/

namespace A122601.P4885807738990525795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A242121 (n + 1) + 1).toNat

end

end A122601.P4885807738990525795

namespace A122601

/-- `A010876(A242121(n+1)+1)` -/
def P4885807738990525795.Spec : Prop :=
  ∀ n, P4885807738990525795.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P8812652855632379615

`A010876(A242126(n+1)+1)`
-/

namespace A122601.P8812652855632379615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A242126 (n + 1) + 1).toNat

end

end A122601.P8812652855632379615

namespace A122601

/-- `A010876(A242126(n+1)+1)` -/
def P8812652855632379615.Spec : Prop :=
  ∀ n, P8812652855632379615.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P3500199799266798883

`A299763(n+2)%7`
-/

namespace A122601.P3500199799266798883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299763 (n + 2)) 7

end

end A122601.P3500199799266798883

namespace A122601

/-- `A299763(n+2)%7` -/
def P3500199799266798883.Spec : Prop :=
  ∀ n, P3500199799266798883.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P15033834776399671202

`record[A000010(n+1)+2]%7`
-/

namespace A122601.P15033834776399671202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 7

end

end A122601.P15033834776399671202

namespace A122601

/-- `record[A000010(n+1)+2]%7` -/
def P15033834776399671202.Spec : Prop :=
  ∀ n, P15033834776399671202.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P5060438269645555410

`record[A006530(n+2)+1]%7`
-/

namespace A122601.P5060438269645555410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 7

end

end A122601.P5060438269645555410

namespace A122601

/-- `record[A006530(n+2)+1]%7` -/
def P5060438269645555410.Spec : Prop :=
  ∀ n, P5060438269645555410.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P17198322672719713236

`record[A020639(n+2)+1]%7`
-/

namespace A122601.P17198322672719713236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 7

end

end A122601.P17198322672719713236

namespace A122601

/-- `record[A020639(n+2)+1]%7` -/
def P17198322672719713236.Spec : Prop :=
  ∀ n, P17198322672719713236.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P15894844196855855611

`record[(n+3)/A001222(n+2)]%7`
-/

namespace A122601.P15894844196855855611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 7

end

end A122601.P15894844196855855611

namespace A122601

/-- `record[(n+3)/A001222(n+2)]%7` -/
def P15894844196855855611.Spec : Prop :=
  ∀ n, P15894844196855855611.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P3230267758277634102

`A000203(eq[n+2, A000203(n+1)]+1)%7`
-/

namespace A122601.P3230267758277634102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) 7

end

end A122601.P3230267758277634102

namespace A122601

/-- `A000203(eq[n+2, A000203(n+1)]+1)%7` -/
def P3230267758277634102.Spec : Prop :=
  ∀ n, P3230267758277634102.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P16292725420235282925

`A000203(lt[A000010(n+1), A020639(n+1)]+1)%7`
-/

namespace A122601.P16292725420235282925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)) 7

end

end A122601.P16292725420235282925

namespace A122601

/-- `A000203(lt[A000010(n+1), A020639(n+1)]+1)%7` -/
def P16292725420235282925.Spec : Prop :=
  ∀ n, P16292725420235282925.a n = A122601 (n + 1)

end A122601

/-! ## A122601.P7794963896614170630

`A000203(∏{p}[p?[A207790(n+1)], #])%7`
-/

namespace A122601.P7794963896614170630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)) 7

end

end A122601.P7794963896614170630

namespace A122601

/-- `A000203(∏{p}[p?[A207790(n+1)], #])%7` -/
def P7794963896614170630.Spec : Prop :=
  ∀ n, P7794963896614170630.a n = A122601 (n + 1)

end A122601

/-!
# A122603: Expansion of x*(1-42*x+650*x^2-4477*x^3+12896*x^4-11417*x^5+2675*x^6+110*x^7) / ( 1-43*x+691*x^2-5146*x^3+17903*x^4-25954*x^5+11826*x^6-876*x^7+x^8 ).

The programs for A122603, there is no canonical definition to state claims against.
-/

/-! ## A122603.P4006537348493843425

`A183534(A336128(n²))`
-/

namespace A122603.P4006537348493843425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A336128 (n ^ 2)).toNat

end

end A122603.P4006537348493843425

/-!
# A122606: n^(n+1) mod 7.

The programs for A122606, the canonical program `A122606.P1930988913964691690` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122606 has offset 0).

The definition of A122606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122606.P1930988913964691690

`(n^(n%6+1))%7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122606

/-- `(n^(n%6+1))%7` -/
def P1930988913964691690.Spec : Prop :=
  ∀ n, (P1930988913964691690.a n : ℤ) = A122606 n

theorem P1930988913964691690.correct : P1930988913964691690.Spec := by
  intro n
  simp only [A122606]

end A122606

/-!
# A122608: a(1) = 1; a(2) = 1; a(3) = 1; a(4) = 1; a(5) = 1; a(n) = a(n-1)+4a(n-2)-3a(n-3)-3a(n-4)+a(n-5) for n >= 6.

The programs for A122608, the canonical program `A122608.P17699599595434395322` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122608 has offset 1).

The definition of A122608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` (program `A122608.P17699599595434395322`, by `A122608.P17699599595434395322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122608.P17699599595434395322

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122608

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P17699599595434395322.Spec : Prop :=
  ∀ n, P17699599595434395322.a n = A122608 (n + 1)

theorem P17699599595434395322.correct : P17699599595434395322.Spec := by
  intro n
  simp only [A122608, Nat.add_sub_cancel]

end A122608

/-! ## A122608.P14563319600665428311

`2-∑[A231182(n)]`
-/

namespace A122608.P14563319600665428311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122608.P14563319600665428311

namespace A122608

/-- `2-∑[A231182(n)]` -/
def P14563319600665428311.Spec : Prop :=
  ∀ n, P14563319600665428311.a n = A122608 (n + 1)

end A122608

/-! ## A122608.P9570554794022255985

`∑[A231182(n)*A260196(n)]`
-/

namespace A122608.P9570554794022255985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 n * A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122608.P9570554794022255985

namespace A122608

/-- `∑[A231182(n)*A260196(n)]` -/
def P9570554794022255985.Spec : Prop :=
  ∀ n, P9570554794022255985.a n = A122608 (n + 1)

end A122608

/-! ## A122608.P15291570308502529566

`a(A023443(n))-A231182(n)` with `a(0)=1`
-/

namespace A122608.P15291570308502529566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat - A231182 n

end

end A122608.P15291570308502529566

namespace A122608

/-- `a(A023443(n))-A231182(n)` -/
def P15291570308502529566.Spec : Prop :=
  ∀ n, P15291570308502529566.a n = A122608 (n + 1)

end A122608

/-! ## A122608.P16809113232453212525

`∑[-A158388(n)*A231182(n)]`
-/

namespace A122608.P16809113232453212525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A158388 n * A231182 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122608.P16809113232453212525

namespace A122608

/-- `∑[-A158388(n)*A231182(n)]` -/
def P16809113232453212525.Spec : Prop :=
  ∀ n, P16809113232453212525.a n = A122608 (n + 1)

end A122608

/-! ## A122608.P4216518939342451694

`a(n-1)-A231182(A028310(n))` with `a(0)=1`
-/

namespace A122608.P4216518939342451694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A231182 (A028310 n).toNat

end

end A122608.P4216518939342451694

namespace A122608

/-- `a(n-1)-A231182(A028310(n))` -/
def P4216518939342451694.Spec : Prop :=
  ∀ n, P4216518939342451694.a n = A122608 (n + 1)

end A122608

/-! ## A122608.P9182528707879109032

`a(n-1)-A231182(A233583(n+1))` with `a(0)=1`
-/

namespace A122608.P9182528707879109032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A231182 (A233583 (n + 1)).toNat

end

end A122608.P9182528707879109032

namespace A122608

/-- `a(n-1)-A231182(A233583(n+1))` -/
def P9182528707879109032.Spec : Prop :=
  ∀ n, P9182528707879109032.a n = A122608 (n + 1)

end A122608

/-! ## A122608.P9609313693719395146

`2*A223940(n)-∑[A223940(n)]`
-/

namespace A122608.P9609313693719395146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A223940 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122608.P9609313693719395146

namespace A122608

/-- `2*A223940(n)-∑[A223940(n)]` -/
def P9609313693719395146.Spec : Prop :=
  ∀ n, P9609313693719395146.a n = A122608 (n + 1)

end A122608

/-!
# A122609: Product of the first n 5-almost primes (A014614), divided by product of the first n primes, rounded down.

The programs for A122609, the canonical program `A122609.P7320944427291612846` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122609 has offset 1).

The definition of A122609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122609.P5762438614149472526

`floor(A122123(n+1)/A002110(n+1))`
-/

namespace A122609.P5762438614149472526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122123 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)⌋

end

end A122609.P5762438614149472526

namespace A122609

/-- `floor(A122123(n+1)/A002110(n+1))` -/
def P5762438614149472526.Spec : Prop :=
  ∀ n, P5762438614149472526.a n = A122609 (n + 1)

end A122609

/-! ## A122609.P7320944427291612846

`floor(∏[A014614(n+1)/A000040(n+1)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A122609

/-- `floor(∏[A014614(n+1)/A000040(n+1)])` -/
def P7320944427291612846.Spec : Prop :=
  ∀ n, P7320944427291612846.a n = A122609 (n + 1)

theorem P7320944427291612846.correct : P7320944427291612846.Spec := by
  intro n
  simp only [A122609, Nat.add_sub_cancel]

end A122609

/-!
# A122611: G.f.: 1/(1 - 7 x + 15 x^2 - 6 x^3 - 11 x^4 + 6 x^5 + x^6).

The programs for A122611, there is no canonical definition to state claims against.
-/

/-! ## A122611.P5104555373312789709

`or(A301554(2*n), A371384(7^n))`
-/

namespace A122611.P5104555373312789709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301554 (2 * n)) (A371384 (7 ^ n))

end

end A122611.P5104555373312789709

/-!
# A122612: Sums of cubes of primes.

The programs for A122612, there is no canonical definition to state claims against.
-/

/-! ## A122612.P982494854060444291

`lt[gcd(n, A278929(n)), n]`
-/

namespace A122612.P982494854060444291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A278929 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122612.P982494854060444291

/-! ## A122612.P138524322893163063

`eq[ceil(acot(n)), A279760(n)]`
-/

namespace A122612.P138524322893163063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122612.P138524322893163063

/-! ## A122612.P8333493929966195848

`A078131(n+1)%257`
-/

namespace A122612.P8333493929966195848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078131 (n + 1)) 257

end

end A122612.P8333493929966195848

/-! ## A122612.P14546821431286708516

`eq[1, A279760(n+1)]+1`
-/

namespace A122612.P14546821431286708516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122612.P14546821431286708516

/-! ## A122612.P14778540795922809701

`eq[1, A279760(n^floor(atan(n)))]`
-/

namespace A122612.P14778540795922809701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122612.P14778540795922809701

/-! ## A122612.P12007191056668524804

`eq[A054977(n), A279760(n)]`
-/

namespace A122612.P12007191056668524804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122612.P12007191056668524804

/-! ## A122612.P16305731401753450796

`eq[A057427(n), A279760(n)]`
-/

namespace A122612.P16305731401753450796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122612.P16305731401753450796

/-! ## A122612.P11888271856126923870

`eq[A141044(n), A279760(n)]`
-/

namespace A122612.P11888271856126923870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122612.P11888271856126923870

/-! ## A122612.P2520203559561828480

`eq[A158388(n), A279760(n)]`
-/

namespace A122612.P2520203559561828480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122612.P2520203559561828480

/-!
# A122613: Integers 1 through n written in primorial base, summed as if decimal.

The programs for A122613, there is no canonical definition to state claims against.
-/

/-! ## A122613.P12229486274502899544

`A107478(A149868(n))`
-/

namespace A122613.P12229486274502899544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107478 (A149868 n).toNat

end

end A122613.P12229486274502899544

/-!
# A122614: Sums of 4th powers of primes.

The programs for A122614, there is no canonical definition to state claims against.
-/

/-! ## A122614.P4247868519731121393

`lt[A217558(round(acot(n)+n)), n/4+3]`
-/

namespace A122614.P4247868519731121393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A122614.P4247868519731121393

/-!
# A122615: Largest integer which cannot be written as a sum of n-th powers of primes.

The programs for A122615, there is no canonical definition to state claims against.
-/

/-! ## A122615.P12646749283778075805

`ceil(7^n/2)-A000005(A041147(n))`
-/

namespace A122615.P12646749283778075805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 ^ n : ℚ) / 2⌉ - A000005 (A041147 n).toNat

end

end A122615.P12646749283778075805

/-!
# A122616: Sums of 5th powers of primes.

The programs for A122616, there is no canonical definition to state claims against.
-/

/-! ## A122616.P5732513086197635361

`∩[A317534(n+1), A339840(n+1)]`
-/

namespace A122616.P5732513086197635361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122616.P5732513086197635361

/-! ## A122616.P9651032855467283936

`∩[A317534(n+1), A314753(n+2)]`
-/

namespace A122616.P9651032855467283936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314753 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122616.P9651032855467283936

/-! ## A122616.P6639480960120619991

`∩[A344653(n+1), A312974(n+2)]`
-/

namespace A122616.P6639480960120619991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122616.P6639480960120619991

/-! ## A122616.P9035701077611009523

`∩[A345193(n+1), A312974(n+2)]`
-/

namespace A122616.P9035701077611009523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122616.P9035701077611009523

/-! ## A122616.P13290590442133780715

`A339840(A278062(n+1)+A020639(n!))`
-/

namespace A122616.P13290590442133780715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339840 (A278062 (n + 1) + A020639 (Nat.factorial n)).toNat

end

end A122616.P13290590442133780715

/-!
# A122618: a(n) = n_n, where "N_b" denotes "N read in base b": if N = Sum c_i 10^i then N_b = Sum c_i b^i.

The programs for A122618, there is no canonical definition to state claims against.
-/

/-! ## A122618.P1745230465968492219

`∪[A122642(n+1), A122643(n+1)]`
-/

namespace A122618.P1745230465968492219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122618.P1745230465968492219

/-! ## A122618.P15681251999968769130

`∑[A216455(Δ[(n-10)*floor(n/10)+n])]`
-/

namespace A122618.P15681251999968769130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 10) * ⌊(n : ℚ) / 10⌋ + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122618.P15681251999968769130

/-! ## A122618.P3201607752954479031

`A083292(A000196(∑[2*(n+1)]))`
-/

namespace A122618.P3201607752954479031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A122618.P3201607752954479031

/-! ## A122618.P15669471666410510821

`A083292(A319290(∑[2*(n+1)]))`
-/

namespace A122618.P15669471666410510821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (A319290 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A122618.P15669471666410510821

/-! ## A122618.P962250575503995043

`A083292(lcm(n+1, A216455(n+1)))`
-/

namespace A122618.P962250575503995043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (Int.lcm (n + 1 : ℤ) (A216455 (n + 1)))

end

end A122618.P962250575503995043

/-! ## A122618.P9387179698521638847

`A083292(n+1)+A000007((n+1)²)`
-/

namespace A122618.P9387179698521638847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 1) + A000007 ((n + 1) ^ 2)

end

end A122618.P9387179698521638847

/-! ## A122618.P18139568840870910998

`A122620(n+1)-A102684(n)`
-/

namespace A122618.P18139568840870910998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (n + 1) - A102684 n

end

end A122618.P18139568840870910998

/-! ## A122618.P13519937189242304181

`A122620(n+1)-A061217(n+1)`
-/

namespace A122618.P13519937189242304181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (n + 1) - A061217 (n + 1)

end

end A122618.P13519937189242304181

/-! ## A122618.P8833825026062449566

`A122625(n+1)%A060798(n+1)`
-/

namespace A122618.P8833825026062449566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122625 (n + 1)) (A060798 (n + 1))

end

end A122618.P8833825026062449566

/-!
# A122619: n_{2n}.

The programs for A122619, there is no canonical definition to state claims against.
-/

/-! ## A122619.P137161038467561345

`∑[Δ[2*(n-5)*A059995(n)]+1]`
-/

namespace A122619.P137161038467561345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 5) * A059995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122619.P137161038467561345

/-! ## A122619.P7774591497287574036

`A122620(n+1)+n*A102684(n)`
-/

namespace A122619.P7774591497287574036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (n + 1) + (n : ℤ) * A102684 n

end

end A122619.P7774591497287574036

/-! ## A122619.P8467360074959661140

`2*A083292(n+1)-A010879(n+1)`
-/

namespace A122619.P8467360074959661140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083292 (n + 1) - A010879 (n + 1)

end

end A122619.P8467360074959661140

/-! ## A122619.P14482633307039615877

`A122620(n+1)+n*A061217(n+1)`
-/

namespace A122619.P14482633307039615877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (n + 1) + (n : ℤ) * A061217 (n + 1)

end

end A122619.P14482633307039615877

/-! ## A122619.P1868731876811353948

`A102684(n)*A117804(n+1)+1+n`
-/

namespace A122619.P1868731876811353948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102684 n * A117804 (n + 1) + 1 + (n : ℤ)

end

end A122619.P1868731876811353948

/-! ## A122619.P4273188366613146134

`A054899(n+1)*A117804(n+1)+n+1`
-/

namespace A122619.P4273188366613146134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (n + 1) * A117804 (n + 1) + (n + 1 : ℤ)

end

end A122619.P4273188366613146134

/-! ## A122619.P9822848046152888590

`A005843(A083292(n+1))-A010879(n+1)`
-/

namespace A122619.P9822848046152888590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A083292 (n + 1)).toNat - A010879 (n + 1)

end

end A122619.P9822848046152888590

/-! ## A122619.P8627788097820227936

`A005843(A122620(n+1))-A081594(n+1)`
-/

namespace A122619.P8627788097820227936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A122620 (n + 1)).toNat - A081594 (n + 1)

end

end A122619.P8627788097820227936

/-! ## A122619.P16883961783345717032

`A122618(n+1)+A122618(n+1)-A010879(n+1)`
-/

namespace A122619.P16883961783345717032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 1) + (A122618 (n + 1) - A010879 (n + 1))

end

end A122619.P16883961783345717032

/-!
# A122620: a(n) = n_{n+1}.

The programs for A122620, there is no canonical definition to state claims against.
-/

/-! ## A122620.P10954204826556560978

`A122618(n+1)+floor((n+1)/10)`
-/

namespace A122620.P10954204826556560978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 1) + ⌊(n + 1 : ℚ) / 10⌋

end

end A122620.P10954204826556560978

/-! ## A122620.P13534061768193028581

`A102684(n)+A083292(n+1)`
-/

namespace A122620.P13534061768193028581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102684 n + A083292 (n + 1)

end

end A122620.P13534061768193028581

/-! ## A122620.P10828208190893351969

`∑[A102683(n)+Δ[A083292(n)]]`
-/

namespace A122620.P10828208190893351969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122620.P10828208190893351969

/-! ## A122620.P17846626978891098325

`A083292(n+1)+∑[A102683(n)]`
-/

namespace A122620.P17846626978891098325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122620.P17846626978891098325

/-! ## A122620.P1503781845416896434

`A083292(n+1)+A054899(n+1)`
-/

namespace A122620.P1503781845416896434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 1) + A054899 (n + 1)

end

end A122620.P1503781845416896434

/-!
# A122621: a(n) = n_prime(n).

The programs for A122621, there is no canonical definition to state claims against.
-/

/-! ## A122621.P5606269920267988410

`A007953(n+1)+A006093(n+1)*A102684(n)`
-/

namespace A122621.P5606269920267988410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A006093 (n + 1) * A102684 n

end

end A122621.P5606269920267988410

/-! ## A122621.P13548782493177969018

`eq[A034380(A039599(n)), A123895(n)]`
-/

namespace A122621.P13548782493177969018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A039599 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122621.P13548782493177969018

/-! ## A122621.P5662629570278821008

`eq[A001221(A142240(n+1)), A111633(n)]`
-/

namespace A122621.P5662629570278821008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A142240 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122621.P5662629570278821008

/-! ## A122621.P14871873049052176758

`eq[A000007(n), A319387(A238007(n+1))]`
-/

namespace A122621.P14871873049052176758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 (A238007 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122621.P14871873049052176758

/-! ## A122621.P1445442320872134809

`eq[A000038(n), A319387(A238007(n+1))]`
-/

namespace A122621.P1445442320872134809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 (A238007 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122621.P1445442320872134809

/-!
# A122622: a(n) = prime(n)_prime(n).

The programs for A122622, there is no canonical definition to state claims against.
-/

/-! ## A122622.P6191633444918676574

`A122618(p?[comp[n²]])`
-/

namespace A122622.P6191633444918676574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A122622.P6191633444918676574

/-! ## A122622.P4546623541479990560

`A122618(A000040(n+1))`
-/

namespace A122622.P4546623541479990560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A000040 (n + 1)).toNat

end

end A122622.P4546623541479990560

/-! ## A122622.P14459995502300519889

`A122618(A008578(n+2))`
-/

namespace A122622.P14459995502300519889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A008578 (n + 2)).toNat

end

end A122622.P14459995502300519889

/-! ## A122622.P5937697786555825176

`A122618(A182986(n+2))`
-/

namespace A122622.P5937697786555825176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A182986 (n + 2)).toNat

end

end A122622.P5937697786555825176

/-! ## A122622.P14367777483709233547

`A122618(eq[1, A003415(n)])`
-/

namespace A122622.P14367777483709233547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122622.P14367777483709233547

/-! ## A122622.P9528531892909126772

`A122618(record[A084127(n+1)])`
-/

namespace A122622.P9528531892909126772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122622.P9528531892909126772

/-! ## A122622.P9540178447833296167

`A122618(record[A006530(n+2)])`
-/

namespace A122622.P9540178447833296167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122622.P9540178447833296167

/-! ## A122622.P6487706866039546700

`A122618(record[A014963(n+2)])`
-/

namespace A122622.P6487706866039546700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122622.P6487706866039546700

/-! ## A122622.P1544941482550731237

`A122618(record[A020639(n+2)])`
-/

namespace A122622.P1544941482550731237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122622.P1544941482550731237

/-! ## A122622.P8725967652418733629

`A122618(A067747(2*n+1))`
-/

namespace A122622.P8725967652418733629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A067747 (2 * n + 1)).toNat

end

end A122622.P8725967652418733629

/-! ## A122622.P4214040356809315712

`A122618(A033286(n+1)/(n+1))`
-/

namespace A122622.P4214040356809315712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A122622.P4214040356809315712

/-!
# A122623: {2^n}_{2^n}.

The programs for A122623, there is no canonical definition to state claims against.
-/

/-! ## A122623.P3434434232691262327

`A122618(2^(n+1))`
-/

namespace A122623.P3434434232691262327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (2 ^ (n + 1))

end

end A122623.P3434434232691262327

/-! ## A122623.P1858989095329686015

`record[A122618(2^abs(1-n))]`
-/

namespace A122623.P1858989095329686015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122623.P1858989095329686015

/-! ## A122623.P3285393331067297707

`lcm(2, A122618(A000079(n+1)))`
-/

namespace A122623.P3285393331067297707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A122618 (A000079 (n + 1)).toNat)

end

end A122623.P3285393331067297707

/-! ## A122623.P6657593988100148487

`A122618(A151821(n+1))+A000007(n)`
-/

namespace A122623.P6657593988100148487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A151821 (n + 1)).toNat + A000007 n

end

end A122623.P6657593988100148487

/-! ## A122623.P14571881363091919567

`A185044(n)+A122618(A000079(n+1))`
-/

namespace A122623.P14571881363091919567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + A122618 (A000079 (n + 1)).toNat

end

end A122623.P14571881363091919567

/-!
# A122624: a(n) = n_{2^n}.

The programs for A122624, there is no canonical definition to state claims against.
-/

/-! ## A122624.P17323102410038551690

`A004905(A185255(3*n)+A122156(n+1)+1)`
-/

namespace A122624.P17323102410038551690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (A185255 (3 * n) + A122156 (n + 1) + 1).toNat

end

end A122624.P17323102410038551690

/-! ## A122624.P4229026932989790116

`dr(lt[0, ∏{digits}[n, #]])^A110731(n+1)`
-/

namespace A122624.P4229026932989790116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) : ℚ) ^ (A110731 (n + 1) : ℤ)

end

end A122624.P4229026932989790116

/-! ## A122624.P17274176447983911936

`A004904(C(a(n-1)+1, n)+1)` with `a(0)=1`
-/

namespace A122624.P17274176447983911936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004904 (Nat.choose (a (n - 1) + 1).toNat n + 1)

end

end A122624.P17274176447983911936

/-! ## A122624.P11119387964194928120

`Δ[record[∑{digits}[n, #]^A351241(n+1)]]+n`
-/

namespace A122624.P11119387964194928120
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (A351241 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℚ)

end

end A122624.P11119387964194928120

/-!
# A122625: a(n) = n_{n^2}.

The programs for A122625, there is no canonical definition to state claims against.
-/

/-! ## A122625.P8355708046058836638

`2*A122627(n+1)-A122618(n+1)`
-/

namespace A122625.P8355708046058836638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122627 (n + 1) - A122618 (n + 1)

end

end A122625.P8355708046058836638

/-! ## A122625.P16237959221834415438

`A010879(n+1)+(n+1)²*A054899(n+1)`
-/

namespace A122625.P16237959221834415438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 1) + ((n + 1) ^ 2 : ℤ) * A054899 (n + 1)

end

end A122625.P16237959221834415438

/-! ## A122625.P4967365055553457692

`A010879(n+1)+(n+1)²*A059995(n+1)`
-/

namespace A122625.P4967365055553457692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 1) + ((n + 1) ^ 2 : ℤ) * A059995 (n + 1)

end

end A122625.P4967365055553457692

/-! ## A122625.P3064214596422497891

`A005843(A122627(n+1))-A083292(n+1)`
-/

namespace A122625.P3064214596422497891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A122627 (n + 1)).toNat - A083292 (n + 1)

end

end A122625.P3064214596422497891

/-! ## A122625.P16333499036987961546

`A005843(A122627(n+1))-A122618(n+1)`
-/

namespace A122625.P16333499036987961546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A122627 (n + 1)).toNat - A122618 (n + 1)

end

end A122625.P16333499036987961546

/-! ## A122625.P2488501860438380308

`A122618(n+1)+A002378(n)*A102684(n)`
-/

namespace A122625.P2488501860438380308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 1) + A002378 n * A102684 n

end

end A122625.P2488501860438380308

/-! ## A122625.P16740800681499817171

`A122627(n+1)+A000217(n)*A061217(n+1)`
-/

namespace A122625.P16740800681499817171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122627 (n + 1) + A000217 n * A061217 (n + 1)

end

end A122625.P16740800681499817171

/-! ## A122625.P6620853467298294595

`A122618(n+1)+A002378(n)*A061217(n+1)`
-/

namespace A122625.P6620853467298294595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 1) + A002378 n * A061217 (n + 1)

end

end A122625.P6620853467298294595

/-!
# A122626: a(n) = {n^2}_{n^2}.

The programs for A122626, there is no canonical definition to state claims against.
-/

/-! ## A122626.P3581856999889586357

`A122618((n+1)²)`
-/

namespace A122626.P3581856999889586357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 ((n + 1) ^ 2)

end

end A122626.P3581856999889586357

/-! ## A122626.P2825092259527463566

`record[A122618(A065648(n)²)]`
-/

namespace A122626.P2825092259527463566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P2825092259527463566

/-! ## A122626.P11367703997436924459

`record[A122618(A133310(n)²)]`
-/

namespace A122626.P11367703997436924459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P11367703997436924459

/-! ## A122626.P16095003740956935647

`record[A122618(A141256(n)²)]`
-/

namespace A122626.P16095003740956935647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A141256 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P16095003740956935647

/-! ## A122626.P12692484452024540695

`record[A122618(A262519(n)²)]`
-/

namespace A122626.P12692484452024540695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A262519 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P12692484452024540695

/-! ## A122626.P14638583324424442772

`record[A122618(A286543(n)²)]`
-/

namespace A122626.P14638583324424442772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A286543 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P14638583324424442772

/-! ## A122626.P6490695647162552165

`record[A122618(A286554(n)²)]`
-/

namespace A122626.P6490695647162552165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A286554 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P6490695647162552165

/-! ## A122626.P10838632366936701978

`record[A122618((A133265(n)/2)²)]`
-/

namespace A122626.P10838632366936701978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.roundAway (((A133265 n : ℚ) / 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P10838632366936701978

/-! ## A122626.P14239290063757696643

`record[A122618(A028898(n+1)*A028898(n+1))]`
-/

namespace A122626.P14239290063757696643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A028898 (n + 1) * A028898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122626.P14239290063757696643

/-! ## A122626.P16845986705241236146

`A072170(A072170(n))*A122618((n+1)*(n+1))`
-/

namespace A122626.P16845986705241236146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A072170 n).toNat * A122618 ((n + 1) * (n + 1))

end

end A122626.P16845986705241236146

/-! ## A122626.P16227419270050886215

`A277155(A088696(n+1))+A122618((n+1)*(n+1))`
-/

namespace A122626.P16227419270050886215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277155 (A088696 (n + 1)).toNat + A122618 ((n + 1) * (n + 1))

end

end A122626.P16227419270050886215

/-! ## A122626.P14097618061744936531

`A122618((n+1)*(n+1))*A167865(A098761(n+1))`
-/

namespace A122626.P14097618061744936531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 ((n + 1) * (n + 1)) * A167865 (A098761 (n + 1)).toNat

end

end A122626.P14097618061744936531

/-! ## A122626.P3109855059680930650

`A147612(2*A025747(n))+A122618((n+1)*(n+1))`
-/

namespace A122626.P3109855059680930650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * A025747 n).toNat + A122618 ((n + 1) * (n + 1))

end

end A122626.P3109855059680930650

/-!
# A122627: a(n) = n_t(n) where t() = triangular numbers A000217.

The programs for A122627, there is no canonical definition to state claims against.
-/

/-! ## A122627.P523800640453508626

`(A122625(n+1)+A122618(n+1))/2`
-/

namespace A122627.P523800640453508626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122625 (n + 1) + A122618 (n + 1) : ℚ) / 2

end

end A122627.P523800640453508626

/-! ## A122627.P17177385824299014298

`A014682(A122625(n+1)+A122618(n+1))`
-/

namespace A122627.P17177385824299014298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A122625 (n + 1) + A122618 (n + 1)).toNat

end

end A122627.P17177385824299014298

/-! ## A122627.P16068990292892307308

`A038572(A122625(n+1)+A122618(n+1))`
-/

namespace A122627.P16068990292892307308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A122625 (n + 1) + A122618 (n + 1)).toNat

end

end A122627.P16068990292892307308

/-! ## A122627.P10970689538792155851

`A273943(A122625(n+1)+A122618(n+1))`
-/

namespace A122627.P10970689538792155851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A122625 (n + 1) + A122618 (n + 1)).toNat

end

end A122627.P10970689538792155851

/-!
# A122628: a(n) = t(n)_t(n) where t() = triangular numbers A000217.

The programs for A122628, there is no canonical definition to state claims against.
-/

/-! ## A122628.P2196719685594706083

`A122618(∑[n+1])`
-/

namespace A122628.P2196719685594706083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122628.P2196719685594706083

/-! ## A122628.P4583191541146022310

`record[A122618(A038722(n+1))]`
-/

namespace A122628.P4583191541146022310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122628.P4583191541146022310

/-! ## A122628.P6760713027704879632

`record[A122618(A066182(n+1))]`
-/

namespace A122628.P6760713027704879632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122628.P6760713027704879632

/-! ## A122628.P239072840126011976

`record[A122618(A257506(n+1))]`
-/

namespace A122628.P239072840126011976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122628.P239072840126011976

/-! ## A122628.P7643659933531511657

`and(-1, A122618(A000217(n+1)))`
-/

namespace A122628.P7643659933531511657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A122618 (A000217 (n + 1)).toNat)

end

end A122628.P7643659933531511657

/-! ## A122628.P1165009641197580492

`record[gcd(A025581(n), A122618(n+1))]`
-/

namespace A122628.P1165009641197580492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A122618 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122628.P1165009641197580492

/-! ## A122628.P3078471315387798003

`record[(2-A130321(n))*A122618(n+1)]`
-/

namespace A122628.P3078471315387798003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130321 n) * A122618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122628.P3078471315387798003

/-! ## A122628.P2421523347822554814

`record[A122618(A000217(A133310(n)))]`
-/

namespace A122628.P2421523347822554814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A000217 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122628.P2421523347822554814

/-! ## A122628.P12010528536902587768

`record[A122618(A000217(A141256(n)))]`
-/

namespace A122628.P12010528536902587768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A000217 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122628.P12010528536902587768

/-! ## A122628.P16912858351272136036

`A122618(A000217(n+1))%A000051(n+1)`
-/

namespace A122628.P16912858351272136036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122618 (A000217 (n + 1)).toNat) (A000051 (n + 1))

end

end A122628.P16912858351272136036

/-! ## A122628.P9887469854560971446

`A007318(C(2, n))*A122618(A000217(n+1))`
-/

namespace A122628.P9887469854560971446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A122618 (A000217 (n + 1)).toNat

end

end A122628.P9887469854560971446

/-! ## A122628.P8473886144572195593

`A014963(10*(n+1))*A122618(A000217(n+1))`
-/

namespace A122628.P8473886144572195593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A122618 (A000217 (n + 1)).toNat

end

end A122628.P8473886144572195593

/-!
# A122629: n_F(n) where F() = Fibonacci numbers A000045.

The programs for A122629, there is no canonical definition to state claims against.
-/

/-! ## A122629.P16043150137007689694

`A010879(n+1)+A000045(n+1)*A059995(n+1)`
-/

namespace A122629.P16043150137007689694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 1) + A000045 (n + 1) * A059995 (n + 1)

end

end A122629.P16043150137007689694

/-! ## A122629.P852670979201464484

`A087082(A183533(n+1))`
-/

namespace A122629.P852670979201464484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087082 (A183533 (n + 1)).toNat

end

end A122629.P852670979201464484

/-! ## A122629.P7571866449128717068

`A102576(A256005(n+1))`
-/

namespace A122629.P7571866449128717068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102576 (A256005 (n + 1)).toNat

end

end A122629.P7571866449128717068

/-! ## A122629.P2196189340186545662

`eq[A065518(n+1), A123895(n)]`
-/

namespace A122629.P2196189340186545662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122629.P2196189340186545662

/-! ## A122629.P3509142997842803768

`eq[A123895(n), A137424(n+1)]`
-/

namespace A122629.P3509142997842803768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122629.P3509142997842803768

/-!
# A122630: a(n) = F(n)_F(n) where F() = Fibonacci numbers A000045.

The programs for A122630, there is no canonical definition to state claims against.
-/

/-! ## A122630.P5532671980614020376

`A122618(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A122630.P5532671980614020376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (n + 1) - f1 n).toNat

end

end A122630.P5532671980614020376

/-! ## A122630.P1672125605839549525

`A122618(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A122630.P1672125605839549525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122630.P1672125605839549525

/-! ## A122630.P17991022098227138807

`A122618(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A122630.P17991022098227138807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122630.P17991022098227138807

/-! ## A122630.P14970593394199071623

`A122618(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8`
-/

namespace A122630.P14970593394199071623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 8] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122630.P14970593394199071623

/-! ## A122630.P1564644172319723344

`A122618(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A122630.P1564644172319723344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A122630.P1564644172319723344

/-!
# A122632: Table T(n,k) = number of initial segments of Beatty sequences for numbers > 1 of length k, cutting sequence so that all terms are < n.

The programs for A122632, there is no canonical definition to state claims against.
-/

/-! ## A122632.P15669058591201628162

`A043531(A146959(n))`
-/

namespace A122632.P15669058591201628162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A146959 n).toNat

end

end A122632.P15669058591201628162

/-! ## A122632.P8426626242140686669

`ceil(A001222(5-A176226(n))/2)`
-/

namespace A122632.P8426626242140686669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (5 - A176226 n).toNat : ℚ) / 2⌉

end

end A122632.P8426626242140686669

/-! ## A122632.P11399312628003248658

`A065033(A001222(5-A176226(n)))`
-/

namespace A122632.P11399312628003248658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001222 (5 - A176226 n).toNat).toNat

end

end A122632.P11399312628003248658

/-! ## A122632.P10633322417996746656

`round(A001222(5-A176226(n))/A020639(2*(n+1)))`
-/

namespace A122632.P10633322417996746656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (5 - A176226 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A122632.P10633322417996746656

/-! ## A122632.P10492696588638257409

`round(A001222(5-A176226(n))/2)%A000040(n+1)`
-/

namespace A122632.P10492696588638257409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001222 (5 - A176226 n).toNat : ℚ) / 2)) (A000040 (n + 1))

end

end A122632.P10492696588638257409

/-!
# A122633: F(n)_n where F() = Fibonacci numbers A000045.

The programs for A122633, there is no canonical definition to state claims against.
-/

/-! ## A122633.P12079661415318628247

`eq[36, lcm(36, n)]-A000045(A307148(n))`
-/

namespace A122633.P12079661415318628247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 36 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A000045 (A307148 n).toNat

end

end A122633.P12079661415318628247

/-! ## A122633.P2514640581700718207

`A303656(A034851(n)+A005651(n))`
-/

namespace A122633.P2514640581700718207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303656 (A034851 n + A005651 n).toNat

end

end A122633.P2514640581700718207

/-! ## A122633.P16088553209933984063

`A342515(A023359(n)+A008687(n))`
-/

namespace A122633.P16088553209933984063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A023359 n + A008687 n).toNat

end

end A122633.P16088553209933984063

/-! ## A122633.P2223124884153533120

`A318451(A149778(n))+A006498(n)`
-/

namespace A122633.P2223124884153533120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A149778 n).toNat + A006498 n

end

end A122633.P2223124884153533120

/-! ## A122633.P472882104705135386

`A374742(n)-A374741(A349053(n))`
-/

namespace A122633.P472882104705135386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374742 n - A374741 (A349053 n).toNat

end

end A122633.P472882104705135386

/-!
# A122638: a(n) = {n+1}_n.

The programs for A122638, there is no canonical definition to state claims against.
-/

/-! ## A122638.P309395577396295196

`A083291(A034856(n+2))`
-/

namespace A122638.P309395577396295196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083291 (A034856 (n + 2)).toNat

end

end A122638.P309395577396295196

/-! ## A122638.P5166293783497135604

`A083292(n+2)-A102684(n+1)`
-/

namespace A122638.P5166293783497135604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 2) - A102684 (n + 1)

end

end A122638.P5166293783497135604

/-! ## A122638.P4075896663142189005

`A122618(n+2)-A102684(n+1)`
-/

namespace A122638.P4075896663142189005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 2) - A102684 (n + 1)

end

end A122638.P4075896663142189005

/-! ## A122638.P15796146038471898629

`A083292(n+2)-A054899(n+2)`
-/

namespace A122638.P15796146038471898629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 2) - A054899 (n + 2)

end

end A122638.P15796146038471898629

/-! ## A122638.P6947779995875899449

`A083292(n+2)-A059995(n+2)`
-/

namespace A122638.P6947779995875899449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 2) - A059995 (n + 2)

end

end A122638.P6947779995875899449

/-! ## A122638.P5139030492831736005

`A083292(n+2)-A061217(n+2)`
-/

namespace A122638.P5139030492831736005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (n + 2) - A061217 (n + 2)

end

end A122638.P5139030492831736005

/-! ## A122638.P479838240278258331

`A122618(n+2)-A054899(n+2)`
-/

namespace A122638.P479838240278258331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 2) - A054899 (n + 2)

end

end A122638.P479838240278258331

/-! ## A122638.P14450394214539822738

`A122618(n+2)-A061217(n+2)`
-/

namespace A122638.P14450394214539822738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 2) - A061217 (n + 2)

end

end A122638.P14450394214539822738

/-! ## A122638.P14329509712236744866

`A122618(n+2)-∑[A102683(n+1)]`
-/

namespace A122638.P14329509712236744866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122638.P14329509712236744866

/-!
# A122639: n_{2n+1}.

The programs for A122639, there is no canonical definition to state claims against.
-/

/-! ## A122639.P16865582566652977315

`A007953(n)+A004277(n)*A054899(n)`
-/

namespace A122639.P16865582566652977315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A004277 n * A054899 n

end

end A122639.P16865582566652977315

/-! ## A122639.P1004338779519657321

`(∑{digits}[n, #]+n)%A123311(n-∑{digits}[n, #])+n`
-/

namespace A122639.P1004338779519657321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n : ℕ) : ℤ) (A123311 (n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)) + (n : ℤ)

end

end A122639.P1004338779519657321

/-! ## A122639.P1772900988301153083

`eq[A055642(A339089(2*n+3)), A055642(n)]`
-/

namespace A122639.P1772900988301153083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A339089 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122639.P1772900988301153083

/-! ## A122639.P17825673872667976069

`lt[A039723(n), A017641(A355249(2*n+3))]`
-/

namespace A122639.P17825673872667976069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 (A355249 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122639.P17825673872667976069

/-!
# A122640: a(n) = {2n}_n.

The programs for A122640, there is no canonical definition to state claims against.
-/

/-! ## A122640.P1365561641714073266

`A122641(n+1)-1`
-/

namespace A122640.P1365561641714073266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122641 (n + 1) - 1

end

end A122640.P1365561641714073266

/-! ## A122640.P6464539753275194406

`A023443(A122641(n+1))`
-/

namespace A122640.P6464539753275194406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122641 (n + 1)).toNat

end

end A122640.P6464539753275194406

/-! ## A122640.P10793054523099679439

`A023444(A122641(n+1)+1)`
-/

namespace A122640.P10793054523099679439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A122641 (n + 1) + 1).toNat

end

end A122640.P10793054523099679439

/-! ## A122640.P7287065017753995606

`A289207(A122641(n+1)+1)`
-/

namespace A122640.P7287065017753995606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A122641 (n + 1) + 1).toNat

end

end A122640.P7287065017753995606

/-! ## A122640.P5466617066444069518

`A023445(A122641(n+1)+2)`
-/

namespace A122640.P5466617066444069518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A122641 (n + 1) + 2).toNat

end

end A122640.P5466617066444069518

/-! ## A122640.P10453154959359361645

`A023446(A122641(n+1)+3)`
-/

namespace A122640.P10453154959359361645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A122641 (n + 1) + 3).toNat

end

end A122640.P10453154959359361645

/-! ## A122640.P11260265859973241558

`A046667(2*A122641(n+1))`
-/

namespace A122640.P11260265859973241558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A122641 (n + 1)).toNat

end

end A122640.P11260265859973241558

/-! ## A122640.P6765832416800051434

`A280193(2*n+1)+A122641(n+1)`
-/

namespace A122640.P6765832416800051434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A122641 (n + 1)

end

end A122640.P6765832416800051434

/-! ## A122640.P11283782986035165077

`xor(-A122641(n+1), A008683(A002148(n)))`
-/

namespace A122640.P11283782986035165077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A122641 (n + 1)) (A008683 (A002148 n).toNat)

end

end A122640.P11283782986035165077

/-! ## A122640.P16511457616325755223

`A339791(A014963(n+1))+A122641(n+1)`
-/

namespace A122640.P16511457616325755223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A014963 (n + 1)).toNat + A122641 (n + 1)

end

end A122640.P16511457616325755223

/-!
# A122641: {2n+1}_n.

The programs for A122641, there is no canonical definition to state claims against.
-/

/-! ## A122641.P16035253349268926447

`A122640(n+1)+1`
-/

namespace A122641.P16035253349268926447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122640 (n + 1) + 1

end

end A122641.P16035253349268926447

/-! ## A122641.P7369136100204504857

`A020725(A122640(n+1))`
-/

namespace A122641.P7369136100204504857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A122640 (n + 1)).toNat

end

end A122641.P7369136100204504857

/-!
# A122642: {2n}_{2n}.

The programs for A122642, there is no canonical definition to state claims against.
-/

/-! ## A122642.P4846562054710959599

`A122618(2*(n+1))`
-/

namespace A122642.P4846562054710959599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (2 * (n + 1))

end

end A122642.P4846562054710959599

/-! ## A122642.P12158654810263156114

`record[A122618(abs(xor(n, -2)))]`
-/

namespace A122642.P12158654810263156114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P12158654810263156114

/-! ## A122642.P42684439634870716

`record[A122618(xor(1, n)+1)]`
-/

namespace A122642.P42684439634870716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P42684439634870716

/-! ## A122642.P6992155376860075652

`lcm(2, A122618(n+2+n))`
-/

namespace A122642.P6992155376860075652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A122618 (n + 2 + n))

end

end A122642.P6992155376860075652

/-! ## A122642.P12197038808684304363

`record[A122618(n^(n%2)+1)]`
-/

namespace A122642.P12197038808684304363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P12197038808684304363

/-! ## A122642.P7446651441792665580

`record[A122618(n+2)/gcd(2, n+1)]`
-/

namespace A122642.P7446651441792665580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122618 (n + 2) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P7446651441792665580

/-! ## A122642.P4693114903192529271

`record[A122618(A133265(n))]`
-/

namespace A122642.P4693114903192529271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P4693114903192529271

/-! ## A122642.P13461407843742965930

`record[A122618(A004442(n)+1)]`
-/

namespace A122642.P13461407843742965930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P13461407843742965930

/-! ## A122642.P17095895965022274591

`record[A122618(2*A065648(n))]`
-/

namespace A122642.P17095895965022274591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (2 * A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P17095895965022274591

/-! ## A122642.P3529728006886516840

`record[A122618(2*A133310(n))]`
-/

namespace A122642.P3529728006886516840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122642.P3529728006886516840

/-!
# A122643: {2n+1}_{2n+1}.

The programs for A122643, there is no canonical definition to state claims against.
-/

/-! ## A122643.P2633781896801903618

`A122618(Δ[n²])`
-/

namespace A122643.P2633781896801903618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122643.P2633781896801903618

/-! ## A122643.P16211155187662210794

`record[A122618(n^(n%2))]`
-/

namespace A122643.P16211155187662210794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122643.P16211155187662210794

/-! ## A122643.P3318969355678289105

`and(-1, A122618(2*n+1))`
-/

namespace A122643.P3318969355678289105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A122618 (2 * n + 1))

end

end A122643.P3318969355678289105

/-! ## A122643.P12393874969199857836

`record[A122618(lcm(2, n+1)/2)]`
-/

namespace A122643.P12393874969199857836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122643.P12393874969199857836

/-! ## A122643.P11234153949300358685

`record[A122618(n+2)^and(1, n)]`
-/

namespace A122643.P11234153949300358685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (n + 2) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122643.P11234153949300358685

/-! ## A122643.P17489555901319599097

`record[(-1)^n*A122618(n+1)]`
-/

namespace A122643.P17489555901319599097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122643.P17489555901319599097

/-! ## A122643.P7930573419956912136

`record[A122618(A133265(n)-1)]`
-/

namespace A122643.P7930573419956912136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A133265 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122643.P7930573419956912136

/-! ## A122643.P17357013492649134446

`A014682(2*A122618(2*n+1))`
-/

namespace A122643.P17357013492649134446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A122618 (2 * n + 1)).toNat

end

end A122643.P17357013492649134446

/-! ## A122643.P6811519423636001014

`A273943(2*A122618(2*n+1))`
-/

namespace A122643.P6811519423636001014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * A122618 (2 * n + 1)).toNat

end

end A122643.P6811519423636001014

/-!
# A122645: a(n) = phi(n)_phi(n) where phi() = A000010.

The programs for A122645, there is no canonical definition to state claims against.
-/

/-! ## A122645.P11658271331036607005

`A122618(A000010(n+1))`
-/

namespace A122645.P11658271331036607005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A000010 (n + 1)).toNat

end

end A122645.P11658271331036607005

/-! ## A122645.P1180420102385566451

`A122618(Δ[A002088(n)])`
-/

namespace A122645.P1180420102385566451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (n + 1) - f1 n).toNat

end

end A122645.P1180420102385566451

/-! ## A122645.P5334343990756419158

`A122618(Δ[A005728(n)])`
-/

namespace A122645.P5334343990756419158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (n + 1) - f1 n).toNat

end

end A122645.P5334343990756419158

/-! ## A122645.P11848572435409554337

`A122618(A109606(n+1)+1)`
-/

namespace A122645.P11848572435409554337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A109606 (n + 1) + 1).toNat

end

end A122645.P11848572435409554337

/-! ## A122645.P3636854669341239193

`A122618(A002618(n+1)/(n+1))`
-/

namespace A122645.P3636854669341239193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A122645.P3636854669341239193

/-! ## A122645.P16724974067235674600

`A122618(abs(A051953(n+1)-n)+1)`
-/

namespace A122645.P16724974067235674600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (|A051953 (n + 1) - (n : ℤ)| + 1).toNat

end

end A122645.P16724974067235674600

/-! ## A122645.P13859940184145577676

`A122618(A083239(n+1)+A083239(n))`
-/

namespace A122645.P13859940184145577676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A083239 (n + 1) + A083239 n).toNat

end

end A122645.P13859940184145577676

/-! ## A122645.P14800093608020313990

`A122618(A002088(n+1)-A002088(n))`
-/

namespace A122645.P14800093608020313990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (A002088 (n + 1) - A002088 n).toNat

end

end A122645.P14800093608020313990

/-!
# A122646: phi(n)_n where phi() = A000010.

The programs for A122646, there is no canonical definition to state claims against.
-/

/-! ## A122646.P4016892540277956145

`A058183(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A076907(n+1))`
-/

namespace A122646.P4016892540277956145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A076907 (n + 1))).toNat

end

end A122646.P4016892540277956145

/-! ## A122646.P18083513546113796384

`A225580((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A073350(2*n+1)`
-/

namespace A122646.P18083513546113796384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat) (A073350 (2 * n + 1))

end

end A122646.P18083513546113796384

/-! ## A122646.P16643670998932387392

`A058183((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A018936(2*(n+2))`
-/

namespace A122646.P16643670998932387392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058183 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat) (A018936 (2 * (n + 2)))

end

end A122646.P16643670998932387392

/-! ## A122646.P8196803975715641063

`A058183(Δ[A002088(n)]%A094144(n+1))`
-/

namespace A122646.P8196803975715641063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (Int.tmod (f1 (n + 1) - f1 n) (A094144 (n + 1))).toNat

end

end A122646.P8196803975715641063

/-! ## A122646.P17175254580381554055

`A225580(Δ[A002088(n)])%A094144(n+1)`
-/

namespace A122646.P17175254580381554055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (f1 (n + 1) - f1 n).toNat) (A094144 (n + 1))

end

end A122646.P17175254580381554055

/-!
# A122647: Number of permutations of length 2*n-1 with no local maxima or minima in even positions.

The programs for A122647, there is no canonical definition to state claims against.
-/

/-! ## A122647.P4883681917284190126

`A113583(n+1)/2^n`
-/

namespace A122647.P4883681917284190126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113583 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A122647.P4883681917284190126

/-! ## A122647.P15152525942469849561

`A261683(n+1)/(2*(n+1))`
-/

namespace A122647.P15152525942469849561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261683 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A122647.P15152525942469849561

/-! ## A122647.P2602732420000714610

`and(A113583(n+1)/A000079(n), -A008619(n))`
-/

namespace A122647.P2602732420000714610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A113583 (n + 1) : ℚ) / (A000079 n : ℚ))) (-A008619 n)

end

end A122647.P2602732420000714610

/-! ## A122647.P7223228997908310426

`and(A113583(n+1)/A000079(n), -A130321(n))`
-/

namespace A122647.P7223228997908310426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A113583 (n + 1) : ℚ) / (A000079 n : ℚ))) (-A130321 n)

end

end A122647.P7223228997908310426

/-! ## A122647.P4574136658860705332

`and(A113583(n+1)/A000079(n), -A329683(n))`
-/

namespace A122647.P4574136658860705332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A113583 (n + 1) : ℚ) / (A000079 n : ℚ))) (-A329683 n)

end

end A122647.P4574136658860705332

/-!
# A122648: Expansion of e.g.f.: exp(x^2)*(exp(2*x)+1)/2.

The programs for A122648, there is no canonical definition to state claims against.
-/

/-! ## A122648.P12007576575903451350

`A089221(A052393(n))`
-/

namespace A122648.P12007576575903451350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089221 (A052393 n).toNat

end

end A122648.P12007576575903451350

/-! ## A122648.P7821796471897222236

`A127240(A063782(n))-1`
-/

namespace A122648.P7821796471897222236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127240 (A063782 n).toNat - 1

end

end A122648.P7821796471897222236

/-!
# A122649: Difference between the double factorial of the n-th nonnegative odd number and the double factorial of the n-th nonnegative even number.

The programs for A122649, the canonical program `A122649.P3468196184501571663` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122649 has offset 1).

The definition of A122649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122649.P3468196184501571663

`(4*(n+1)-5)*a(n-1)-(2*(n+1)-4)*(2*(n+1)-3)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122649

/-- `(4*(n+1)-5)*a(n-1)-(2*(n+1)-4)*(2*(n+1)-3)*a(n-2)` -/
def P3468196184501571663.Spec : Prop :=
  ∀ n, P3468196184501571663.a n = A122649 (n + 1)

theorem P3468196184501571663.correct : P3468196184501571663.Spec := by
  intro n
  simp only [A122649, Nat.add_sub_cancel]

end A122649

/-! ## A122649.P4725252953293493387

`A006882(2*(n+1)-1)-A000165(n)`
-/

namespace A122649.P4725252953293493387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * (n + 1) - 1) - A000165 n

end

end A122649.P4725252953293493387

namespace A122649

/-- `A006882(2*(n+1)-1)-A000165(n)` -/
def P4725252953293493387.Spec : Prop :=
  ∀ n, P4725252953293493387.a n = A122649 (n + 1)

end A122649

/-! ## A122649.P9117839249956703158

`∏[Δ[n²]]-2^n*n!`
-/

namespace A122649.P9117839249956703158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n * Nat.factorial n : ℤ)

end

end A122649.P9117839249956703158

namespace A122649

/-- `∏[Δ[n²]]-2^n*n!` -/
def P9117839249956703158.Spec : Prop :=
  ∀ n, P9117839249956703158.a n = A122649 (n + 1)

end A122649

/-! ## A122649.P10176903657117933655

`abs(∏[2*n+1]-2^n*n!)`
-/

namespace A122649.P10176903657117933655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n * Nat.factorial n : ℤ)|

end

end A122649.P10176903657117933655

namespace A122649

/-- `abs(∏[2*n+1]-2^n*n!)` -/
def P10176903657117933655.Spec : Prop :=
  ∀ n, P10176903657117933655.a n = A122649 (n + 1)

end A122649

/-! ## A122649.P8788390578985740250

`∏[a(n-1)+2]-n!/2^-n` with `a(0)=1`
-/

namespace A122649.P8788390578985740250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A122649.P8788390578985740250

namespace A122649

/-- `∏[a(n-1)+2]-n!/2^-n` -/
def P8788390578985740250.Spec : Prop :=
  ∀ n, P8788390578985740250.a n = (A122649 (n + 1) : ℚ)

end A122649

/-! ## A122649.P3609654532124498192

`∏[a(n-1)+2]-2^(log2(n!)+n)` with `a(0)=1`
-/

namespace A122649.P3609654532124498192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

end

end A122649.P3609654532124498192

namespace A122649

/-- `∏[a(n-1)+2]-2^(log2(n!)+n)` -/
def P3609654532124498192.Spec : Prop :=
  ∀ n, P3609654532124498192.a n = (A122649 (n + 1) : ℝ)

end A122649

/-! ## A122649.P14115837237707430971

`abs(∏[a(n-1)-2])-n!/2^-n` with `a(0)=-1`
-/

namespace A122649.P14115837237707430971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) - (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A122649.P14115837237707430971

namespace A122649

/-- `abs(∏[a(n-1)-2])-n!/2^-n` -/
def P14115837237707430971.Spec : Prop :=
  ∀ n, P14115837237707430971.a n = (A122649 (n + 1) : ℚ)

end A122649

/-! ## A122649.P6341055454658892456

`∏[Δ[n²]]-A000165(n)`
-/

namespace A122649.P6341055454658892456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000165 n

end

end A122649.P6341055454658892456

namespace A122649

/-- `∏[Δ[n²]]-A000165(n)` -/
def P6341055454658892456.Spec : Prop :=
  ∀ n, P6341055454658892456.a n = A122649 (n + 1)

end A122649

/-! ## A122649.P5414928901113676953

`∏[2*n+1]-∏[A028310(2*n)]`
-/

namespace A122649.P5414928901113676953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A122649.P5414928901113676953

namespace A122649

/-- `∏[2*n+1]-∏[A028310(2*n)]` -/
def P5414928901113676953.Spec : Prop :=
  ∀ n, P5414928901113676953.a n = A122649 (n + 1)

end A122649

/-! ## A122649.P6836180392799423702

`A001147(n+1)-∏[round(1/acot(2*n))]`
-/

namespace A122649.P6836180392799423702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122649.P6836180392799423702

namespace A122649

/-- `A001147(n+1)-∏[round(1/acot(2*n))]` -/
def P6836180392799423702.Spec : Prop :=
  ∀ n, P6836180392799423702.a n = A122649 (n + 1)

end A122649

/-!
# A122650: Fibonacci numbers starting at F(23).

The programs for A122650, the canonical program `A122650.P15911976050261522756` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122650 has offset 1).

The definition of A122650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122650.P15911976050261522756

`A000045(n+23)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122650

/-- `A000045(n+23)` -/
def P15911976050261522756.Spec : Prop :=
  ∀ n, P15911976050261522756.a n = A122650 (n + 1)

theorem P15911976050261522756.correct : P15911976050261522756.Spec := by
  intro n
  simp only [A122650, Nat.add_sub_cancel]

end A122650

/-! ## A122650.P3865071201416754859

`A212804(n+24)`
-/

namespace A122650.P3865071201416754859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 24)

end

end A122650.P3865071201416754859

namespace A122650

/-- `A212804(n+24)` -/
def P3865071201416754859.Spec : Prop :=
  ∀ n, P3865071201416754859.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P8370511967183568166

`A000071(n+23)+1`
-/

namespace A122650.P8370511967183568166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 23) + 1

end

end A122650.P8370511967183568166

namespace A122650

/-- `A000071(n+23)+1` -/
def P8370511967183568166.Spec : Prop :=
  ∀ n, P8370511967183568166.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P6424444333284465330

`A020712(3*(n/3+6))`
-/

namespace A122650.P6424444333284465330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (SequenceMachineLib.roundAway (3 * ((n : ℚ) / 3 + 6))).toNat

end

end A122650.P6424444333284465330

namespace A122650

/-- `A020712(3*(n/3+6))` -/
def P6424444333284465330.Spec : Prop :=
  ∀ n, P6424444333284465330.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P4399123117962113933

`A020701(A020723(n+10))`
-/

namespace A122650.P4399123117962113933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (A020723 (n + 10)).toNat

end

end A122650.P4399123117962113933

namespace A122650

/-- `A020701(A020723(n+10))` -/
def P4399123117962113933.Spec : Prop :=
  ∀ n, P4399123117962113933.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P10879547941396469176

`A020701(A020719(n+12))`
-/

namespace A122650.P10879547941396469176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (A020719 (n + 12)).toNat

end

end A122650.P10879547941396469176

namespace A122650

/-- `A020701(A020719(n+12))` -/
def P10879547941396469176.Spec : Prop :=
  ∀ n, P10879547941396469176.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P6941325235447839171

`A020695(A020722(n+12))`
-/

namespace A122650.P6941325235447839171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A020722 (n + 12)).toNat

end

end A122650.P6941325235447839171

namespace A122650

/-- `A020695(A020722(n+12))` -/
def P6941325235447839171.Spec : Prop :=
  ∀ n, P6941325235447839171.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P6853223743700594966

`A103609(lt[11, A131730(n)])`
-/

namespace A122650.P6853223743700594966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A122650.P6853223743700594966

namespace A122650

/-- `A103609(lt[11, A131730(n)])` -/
def P6853223743700594966.Spec : Prop :=
  ∀ n, P6853223743700594966.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P6357103536372529352

`A001611(A000027(n+1)+22)-1`
-/

namespace A122650.P6357103536372529352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A000027 (n + 1) + 22).toNat - 1

end

end A122650.P6357103536372529352

namespace A122650

/-- `A001611(A000027(n+1)+22)-1` -/
def P6357103536372529352.Spec : Prop :=
  ∀ n, P6357103536372529352.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P15176002337817317731

`Δ[A020706(n+20)]`
-/

namespace A122650.P15176002337817317731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122650.P15176002337817317731

namespace A122650

/-- `Δ[A020706(n+20)]` -/
def P15176002337817317731.Spec : Prop :=
  ∀ n, P15176002337817317731.a n = A122650 (n + 1)

end A122650

/-! ## A122650.P1965623373367240830

`Δ[A000071(n+24)]`
-/

namespace A122650.P1965623373367240830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122650.P1965623373367240830

namespace A122650

/-- `Δ[A000071(n+24)]` -/
def P1965623373367240830.Spec : Prop :=
  ∀ n, P1965623373367240830.a n = A122650 (n + 1)

end A122650

/-!
# A122651: Number of partitions of n into distinct parts, with each part divisible by the next.

The programs for A122651, there is no canonical definition to state claims against.
-/

/-! ## A122651.P15026888969584847703

`A167865(abs(1-n))+A167865(n)`
-/

namespace A122651.P15026888969584847703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 |1 - (n : ℤ)|.toNat + A167865 n

end

end A122651.P15026888969584847703

/-! ## A122651.P16214337724558700781

`A160385(or(n+1, A078843(n)))`
-/

namespace A122651.P16214337724558700781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (Int.lor (n + 1 : ℤ) (A078843 n)).toNat

end

end A122651.P16214337724558700781

/-! ## A122651.P6525370304638485522

`A343378(A077342(n+1)-A011655(n))`
-/

namespace A122651.P6525370304638485522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A077342 (n + 1) - A011655 n).toNat

end

end A122651.P6525370304638485522

/-! ## A122651.P484294854296953453

`A343378(floor(A114229(n+1)/A111252(3*(n+1)))+n)`
-/

namespace A122651.P484294854296953453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (⌊(A114229 (n + 1) : ℚ) / (A111252 (3 * (n + 1)) : ℚ)⌋ + (n : ℤ)).toNat

end

end A122651.P484294854296953453

/-!
# A122652: a(0) = 0, a(1) = 4; for n > 1, a(n) = 10*a(n-1) - a(n-2).

The programs for A122652, the canonical program `A122652.P586422497315091442` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122652 has offset 0).

The definition of A122652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A122652.P586422497315091442`, by `A122652.P586422497315091442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122652.P586422497315091442

`10*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122652

/-- `10*a(n-1)-a(n-2)` -/
def P586422497315091442.Spec : Prop :=
  ∀ n, P586422497315091442.a n = A122652 n

theorem P586422497315091442.correct : P586422497315091442.Spec := by
  intro n
  simp only [A122652]

end A122652

/-! ## A122652.P6352225494912335864

`2*A001078(n)`
-/

namespace A122652.P6352225494912335864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001078 n

end

end A122652.P6352225494912335864

namespace A122652

/-- `2*A001078(n)` -/
def P6352225494912335864.Spec : Prop :=
  ∀ n, P6352225494912335864.a n = A122652 n

end A122652

/-! ## A122652.P7427747468589034061

`4*A004189(n)`
-/

namespace A122652.P7427747468589034061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004189 n

end

end A122652.P7427747468589034061

namespace A122652

/-- `4*A004189(n)` -/
def P7427747468589034061.Spec : Prop :=
  ∀ n, P7427747468589034061.a n = A122652 n

end A122652

/-! ## A122652.P13866984396927169088

`floor(A004291(n)/3)`
-/

namespace A122652.P13866984396927169088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004291 n : ℚ) / 3⌋

end

end A122652.P13866984396927169088

namespace A122652

/-- `floor(A004291(n)/3)` -/
def P13866984396927169088.Spec : Prop :=
  ∀ n, P13866984396927169088.a n = A122652 n

end A122652

/-! ## A122652.P16055031678406066426

`Δ[A072256(n)/2]`
-/

namespace A122652.P16055031678406066426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072256 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122652.P16055031678406066426

namespace A122652

/-- `Δ[A072256(n)/2]` -/
def P16055031678406066426.Spec : Prop :=
  ∀ n, P16055031678406066426.a n = (A122652 n : ℚ)

end A122652

/-! ## A122652.P25503969072129907

`A204519(3*(n+1))`
-/

namespace A122652.P25503969072129907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (3 * (n + 1))

end

end A122652.P25503969072129907

namespace A122652

/-- `A204519(3*(n+1))` -/
def P25503969072129907.Spec : Prop :=
  ∀ n, P25503969072129907.a n = A122652 n

end A122652

/-! ## A122652.P16948136675170792527

`2/3*A122653(n)`
-/

namespace A122652.P16948136675170792527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A122653 n : ℚ)

end

end A122652.P16948136675170792527

namespace A122652

/-- `2/3*A122653(n)` -/
def P16948136675170792527.Spec : Prop :=
  ∀ n, P16948136675170792527.a n = (A122652 n : ℚ)

end A122652

/-! ## A122652.P12586739993025151719

`A001079(n)-A072256(n)`
-/

namespace A122652.P12586739993025151719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - A072256 n

end

end A122652.P12586739993025151719

namespace A122652

/-- `A001079(n)-A072256(n)` -/
def P12586739993025151719.Spec : Prop :=
  ∀ n, P12586739993025151719.a n = A122652 n

end A122652

/-! ## A122652.P11798981714951450175

`A122653(n)-A001078(n)`
-/

namespace A122652.P11798981714951450175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122653 n - A001078 n

end

end A122652.P11798981714951450175

namespace A122652

/-- `A122653(n)-A001078(n)` -/
def P11798981714951450175.Spec : Prop :=
  ∀ n, P11798981714951450175.a n = A122652 n

end A122652

/-! ## A122652.P3119384657586246113

`A138288(n)-A001079(n)`
-/

namespace A122652.P3119384657586246113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n - A001079 n

end

end A122652.P3119384657586246113

namespace A122652

/-- `A138288(n)-A001079(n)` -/
def P3119384657586246113.Spec : Prop :=
  ∀ n, P3119384657586246113.a n = A122652 n

end A122652

/-! ## A122652.P5377101711580016281

`Δ[A004189(n)]-A001079(n)`
-/

namespace A122652.P5377101711580016281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001079 n

end

end A122652.P5377101711580016281

namespace A122652

/-- `Δ[A004189(n)]-A001079(n)` -/
def P5377101711580016281.Spec : Prop :=
  ∀ n, P5377101711580016281.a n = A122652 n

end A122652

/-! ## A122652.P1285639711898830741

`A041007(2*n)-A001079(n)`
-/

namespace A122652.P1285639711898830741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n) - A001079 n

end

end A122652.P1285639711898830741

namespace A122652

/-- `A041007(2*n)-A001079(n)` -/
def P1285639711898830741.Spec : Prop :=
  ∀ n, P1285639711898830741.a n = A122652 n

end A122652

/-! ## A122652.P7999599243863831271

`A041039(2*n)-A001079(n)`
-/

namespace A122652.P7999599243863831271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (2 * n) - A001079 n

end

end A122652.P7999599243863831271

namespace A122652

/-- `A041039(2*n)-A001079(n)` -/
def P7999599243863831271.Spec : Prop :=
  ∀ n, P7999599243863831271.a n = A122652 n

end A122652

/-! ## A122652.P8320193649437699760

`A004189(n)+A122653(n)/2`
-/

namespace A122652.P8320193649437699760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) + (A122653 n : ℚ) / 2

end

end A122652.P8320193649437699760

namespace A122652

/-- `A004189(n)+A122653(n)/2` -/
def P8320193649437699760.Spec : Prop :=
  ∀ n, P8320193649437699760.a n = (A122652 n : ℚ)

end A122652

/-! ## A122652.P16724394087333861756

`2*(A001079(n)-A140780(n))`
-/

namespace A122652.P16724394087333861756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001079 n - A140780 n)

end

end A122652.P16724394087333861756

namespace A122652

/-- `2*(A001079(n)-A140780(n))` -/
def P16724394087333861756.Spec : Prop :=
  ∀ n, P16724394087333861756.a n = A122652 n

end A122652

/-! ## A122652.P17799204090608449662

`A142239(2*n)-A001079(n)`
-/

namespace A122652.P17799204090608449662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (2 * n) - A001079 n

end

end A122652.P17799204090608449662

namespace A122652

/-- `A142239(2*n)-A001079(n)` -/
def P17799204090608449662.Spec : Prop :=
  ∀ n, P17799204090608449662.a n = A122652 n

end A122652

/-! ## A122652.P7157454287908753524

`A080872(2*n)-A072256(n)`
-/

namespace A122652.P7157454287908753524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n) - A072256 n

end

end A122652.P7157454287908753524

namespace A122652

/-- `A080872(2*n)-A072256(n)` -/
def P7157454287908753524.Spec : Prop :=
  ∀ n, P7157454287908753524.a n = A122652 n

end A122652

/-! ## A122652.P17804636171987032890

`A077291(2*n)-A105038(n)`
-/

namespace A122652.P17804636171987032890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 (2 * n) - A105038 n

end

end A122652.P17804636171987032890

namespace A122652

/-- `A077291(2*n)-A105038(n)` -/
def P17804636171987032890.Spec : Prop :=
  ∀ n, P17804636171987032890.a n = A122652 n

end A122652

/-! ## A122652.P9265311997702833370

`2*(A054320(n)-A138288(n))`
-/

namespace A122652.P9265311997702833370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054320 n - A138288 n)

end

end A122652.P9265311997702833370

namespace A122652

/-- `2*(A054320(n)-A138288(n))` -/
def P9265311997702833370.Spec : Prop :=
  ∀ n, P9265311997702833370.a n = A122652 n

end A122652

/-!
# A122653: a(n) = 10*a(n-1) - a(n-2) with a(0)=0, a(1)=6.

The programs for A122653, the canonical program `A122653.P2879239991648145167` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122653 has offset 0).

The definition of A122653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A122653.P2879239991648145167`, by `A122653.P2879239991648145167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122653.P2879239991648145167

`10*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122653

/-- `10*a(n-1)-a(n-2)` -/
def P2879239991648145167.Spec : Prop :=
  ∀ n, P2879239991648145167.a n = A122653 n

theorem P2879239991648145167.correct : P2879239991648145167.Spec := by
  intro n
  simp only [A122653]

end A122653

/-! ## A122653.P13354987068962470231

`6*A004189(n)`
-/

namespace A122653.P13354987068962470231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A004189 n

end

end A122653.P13354987068962470231

namespace A122653

/-- `6*A004189(n)` -/
def P13354987068962470231.Spec : Prop :=
  ∀ n, P13354987068962470231.a n = A122653 n

end A122653

/-! ## A122653.P9027307038178339667

`3*A001078(n)`
-/

namespace A122653.P9027307038178339667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001078 n

end

end A122653.P9027307038178339667

namespace A122653

/-- `3*A001078(n)` -/
def P9027307038178339667.Spec : Prop :=
  ∀ n, P9027307038178339667.a n = A122653 n

end A122653

/-! ## A122653.P15774989126333968083

`floor(A004291(n)/2)`
-/

namespace A122653.P15774989126333968083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004291 n : ℚ) / 2⌋

end

end A122653.P15774989126333968083

namespace A122653

/-- `floor(A004291(n)/2)` -/
def P15774989126333968083.Spec : Prop :=
  ∀ n, P15774989126333968083.a n = A122653 n

end A122653

/-! ## A122653.P8809713942467084292

`3/2*A122652(n)`
-/

namespace A122653.P8809713942467084292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A122652 n : ℚ)

end

end A122653.P8809713942467084292

namespace A122653

/-- `3/2*A122652(n)` -/
def P8809713942467084292.Spec : Prop :=
  ∀ n, P8809713942467084292.a n = (A122653 n : ℚ)

end A122653

/-! ## A122653.P5128443248772314656

`A122652(n)+A001078(n)`
-/

namespace A122653.P5128443248772314656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n + A001078 n

end

end A122653.P5128443248772314656

namespace A122653

/-- `A122652(n)+A001078(n)` -/
def P5128443248772314656.Spec : Prop :=
  ∀ n, P5128443248772314656.a n = A122653 n

end A122653

/-! ## A122653.P10788819298131954205

`A054320(n)-A001079(n)`
-/

namespace A122653.P10788819298131954205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - A001079 n

end

end A122653.P10788819298131954205

namespace A122653

/-- `A054320(n)-A001079(n)` -/
def P10788819298131954205.Spec : Prop :=
  ∀ n, P10788819298131954205.a n = A122653 n

end A122653

/-! ## A122653.P14204347646981791889

`Δ[A098297(n)]-A001079(n)`
-/

namespace A122653.P14204347646981791889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001079 n

end

end A122653.P14204347646981791889

namespace A122653

/-- `Δ[A098297(n)]-A001079(n)` -/
def P14204347646981791889.Spec : Prop :=
  ∀ n, P14204347646981791889.a n = A122653 n

end A122653

/-! ## A122653.P12930941311384290232

`A157084(n)+1-A001079(n)`
-/

namespace A122653.P12930941311384290232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157084 n + (1 - A001079 n)

end

end A122653.P12930941311384290232

namespace A122653

/-- `A157084(n)+1-A001079(n)` -/
def P12930941311384290232.Spec : Prop :=
  ∀ n, P12930941311384290232.a n = A122653 n

end A122653

/-! ## A122653.P11719411621566983454

`A142238(2*n)-A001079(n)`
-/

namespace A122653.P11719411621566983454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (2 * n) - A001079 n

end

end A122653.P11719411621566983454

namespace A122653

/-- `A142238(2*n)-A001079(n)` -/
def P11719411621566983454.Spec : Prop :=
  ∀ n, P11719411621566983454.a n = A122653 n

end A122653

/-! ## A122653.P6894165029309720911

`2*(A077251(n)-A138288(n))`
-/

namespace A122653.P6894165029309720911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077251 n - A138288 n)

end

end A122653.P6894165029309720911

namespace A122653

/-- `2*(A077251(n)-A138288(n))` -/
def P6894165029309720911.Spec : Prop :=
  ∀ n, P6894165029309720911.a n = A122653 n

end A122653

/-! ## A122653.P6480156276312769839

`A077251(n)-A152448(2*n)`
-/

namespace A122653.P6480156276312769839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077251 n - A152448 (2 * n)

end

end A122653.P6480156276312769839

namespace A122653

/-- `A077251(n)-A152448(2*n)` -/
def P6480156276312769839.Spec : Prop :=
  ∀ n, P6480156276312769839.a n = A122653 n

end A122653

/-! ## A122653.P7976410911834730990

`A259594(2*n)-A001079(n)`
-/

namespace A122653.P7976410911834730990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259594 (2 * n) - A001079 n

end

end A122653.P7976410911834730990

namespace A122653

/-- `A259594(2*n)-A001079(n)` -/
def P7976410911834730990.Spec : Prop :=
  ∀ n, P7976410911834730990.a n = A122653 n

end A122653

/-! ## A122653.P9791561979574185945

`n/A004277(n)*A004291(n)`
-/

namespace A122653.P9791561979574185945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A004291 n : ℚ)

end

end A122653.P9791561979574185945

namespace A122653

/-- `n/A004277(n)*A004291(n)` -/
def P9791561979574185945.Spec : Prop :=
  ∀ n, P9791561979574185945.a n = (A122653 n : ℚ)

end A122653

/-! ## A122653.P7312936345787900599

`A129444(2*n+1)+A105038(n)`
-/

namespace A122653.P7312936345787900599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (2 * n + 1) + A105038 n

end

end A122653.P7312936345787900599

namespace A122653

/-- `A129444(2*n+1)+A105038(n)` -/
def P7312936345787900599.Spec : Prop :=
  ∀ n, P7312936345787900599.a n = A122653 n

end A122653

/-! ## A122653.P13707394561618391934

`A080806(2*n+1)-A072256(n)`
-/

namespace A122653.P13707394561618391934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (2 * n + 1) - A072256 n

end

end A122653.P13707394561618391934

namespace A122653

/-- `A080806(2*n+1)-A072256(n)` -/
def P13707394561618391934.Spec : Prop :=
  ∀ n, P13707394561618391934.a n = A122653 n

end A122653

/-! ## A122653.P2585236628971414000

`A080873(2*n+1)-A072256(n)`
-/

namespace A122653.P2585236628971414000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n + 1) - A072256 n

end

end A122653.P2585236628971414000

namespace A122653

/-- `A080873(2*n+1)-A072256(n)` -/
def P2585236628971414000.Spec : Prop :=
  ∀ n, P2585236628971414000.a n = A122653 n

end A122653

/-! ## A122653.P2906619747121468874

`A072256(n+1)-A080874(2*n)`
-/

namespace A122653.P2906619747121468874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1) - A080874 (2 * n)

end

end A122653.P2906619747121468874

namespace A122653

/-- `A072256(n+1)-A080874(2*n)` -/
def P2906619747121468874.Spec : Prop :=
  ∀ n, P2906619747121468874.a n = A122653 n

end A122653

/-! ## A122653.P8390304911613567860

`A152448(2*n+1)-A001079(n)`
-/

namespace A122653.P8390304911613567860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152448 (2 * n + 1) - A001079 n

end

end A122653.P8390304911613567860

namespace A122653

/-- `A152448(2*n+1)-A001079(n)` -/
def P8390304911613567860.Spec : Prop :=
  ∀ n, P8390304911613567860.a n = A122653 n

end A122653

/-!
# A122654: Smallest prime p such that p^2 equal to the sum of 2n+1 consecutive odd primes, or 1 if such a prime does not exist.

The programs for A122654, there is no canonical definition to state claims against.
-/

/-! ## A122654.P11253964818832045957

`p?[xor(A262902(n+1), A290136(n+1))]`
-/

namespace A122654.P11253964818832045957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A262902 (n + 1)) (A290136 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122654.P11253964818832045957

/-!
# A122656: a(n) = n*floor(n/2)^2.

The programs for A122656, the canonical program `A122656.P17276579968870830074` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122656 has offset 0).

The definition of A122656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122656.P17276579968870830074

`n*A008794(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122656

/-- `n*A008794(n)` -/
def P17276579968870830074.Spec : Prop :=
  ∀ n, P17276579968870830074.a n = A122656 n

theorem P17276579968870830074.correct : P17276579968870830074.Spec := by
  intro n
  simp only [A122656]

end A122656

/-! ## A122656.P10622000444416850362

`n*floor(n/2)²`
-/

namespace A122656.P10622000444416850362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋ ^ 2

end

end A122656.P10622000444416850362

namespace A122656

/-- `n*floor(n/2)²` -/
def P10622000444416850362.Spec : Prop :=
  ∀ n, P10622000444416850362.a n = A122656 n

end A122656

/-! ## A122656.P4271338851530651807

`floor(n*∑[1-a(n-1)]²)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A122656.P4271338851530651807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A122656.P4271338851530651807

namespace A122656

/-- `floor(n*∑[1-a(n-1)]²)` -/
def P4271338851530651807.Spec : Prop :=
  ∀ n, P4271338851530651807.a n = A122656 n

end A122656

/-! ## A122656.P3607515617760579450

`∑[n²/(2-n%2)]-A168077(n)`
-/

namespace A122656.P3607515617760579450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A168077 n : ℚ)

end

end A122656.P3607515617760579450

namespace A122656

/-- `∑[n²/(2-n%2)]-A168077(n)` -/
def P3607515617760579450.Spec : Prop :=
  ∀ n, P3607515617760579450.a n = (A122656 n : ℚ)

end A122656

/-! ## A122656.P1181478978910748779

`A212760(n)-(A168077(n)+A129194(n+1))`
-/

namespace A122656.P1181478978910748779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212760 n - (A168077 n + A129194 (n + 1))

end

end A122656.P1181478978910748779

namespace A122656

/-- `A212760(n)-(A168077(n)+A129194(n+1))` -/
def P1181478978910748779.Spec : Prop :=
  ∀ n, P1181478978910748779.a n = A122656 n

end A122656

/-! ## A122656.P5848604353572030063

`-A001489(n)*A008217(2*n)`
-/

namespace A122656.P5848604353572030063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A008217 (2 * n))

end

end A122656.P5848604353572030063

namespace A122656

/-- `-A001489(n)*A008217(2*n)` -/
def P5848604353572030063.Spec : Prop :=
  ∀ n, P5848604353572030063.a n = A122656 n

end A122656

/-! ## A122656.P2081010979982004187

`(n*A004526(n)²)%A175743(n+1)`
-/

namespace A122656.P2081010979982004187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A004526 n ^ 2) (A175743 (n + 1))

end

end A122656.P2081010979982004187

namespace A122656

/-- `(n*A004526(n)²)%A175743(n+1)` -/
def P2081010979982004187.Spec : Prop :=
  ∀ n, P2081010979982004187.a n = A122656 n

end A122656

/-! ## A122656.P17169391633186772723

`A004526(n)²*A001787(n)/A011782(n)`
-/

namespace A122656.P17169391633186772723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n ^ 2 * A001787 n : ℚ) / (A011782 n : ℚ)

end

end A122656.P17169391633186772723

namespace A122656

/-- `A004526(n)²*A001787(n)/A011782(n)` -/
def P17169391633186772723.Spec : Prop :=
  ∀ n, P17169391633186772723.a n = (A122656 n : ℚ)

end A122656

/-!
# A122657: a(n) = if n mod 2 = 1 then (n^2-1)*n^3/4 else n^5/4.

The programs for A122657, the canonical program `A122657.P5851609896681640937` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122657 has offset 0).

The definition of A122657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122657.P5851609896681640937

`n^3*floor((n/2)²)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122657

/-- `n^3*floor((n/2)²)` -/
def P5851609896681640937.Spec : Prop :=
  ∀ n, P5851609896681640937.a n = A122657 n

theorem P5851609896681640937.correct : P5851609896681640937.Spec := by
  intro n
  simp only [A122657]

end A122657

/-! ## A122657.P11265721292356686734

`floor((∑[n]-∑[and(1, n)])*n²*n/2)`
-/

namespace A122657.P11265721292356686734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) * (n ^ 2 : ℤ) : ℚ) * ((n : ℚ) / 2)⌋

end

end A122657.P11265721292356686734

namespace A122657

/-- `floor((∑[n]-∑[and(1, n)])*n²*n/2)` -/
def P11265721292356686734.Spec : Prop :=
  ∀ n, P11265721292356686734.a n = A122657 n

end A122657

/-! ## A122657.P9402892414801732282

`-(-n)^3*A002620(n)`
-/

namespace A122657.P9402892414801732282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n : ℤ)) ^ 3 * A002620 n)

end

end A122657.P9402892414801732282

namespace A122657

/-- `-(-n)^3*A002620(n)` -/
def P9402892414801732282.Spec : Prop :=
  ∀ n, P9402892414801732282.a n = A122657 n

end A122657

/-! ## A122657.P15636701764187109818

`floor(sqrt(A001014(n))*floor((n/2)²))`
-/

namespace A122657.P15636701764187109818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001014 n : ℝ) * (⌊((n : ℚ) / 2) ^ 2⌋ : ℝ)⌋

end

end A122657.P15636701764187109818

namespace A122657

/-- `floor(sqrt(A001014(n))*floor((n/2)²))` -/
def P15636701764187109818.Spec : Prop :=
  ∀ n, P15636701764187109818.a n = A122657 n

end A122657

/-! ## A122657.P1341154063012209136

`A000578(n)*A007590(n)/2`
-/

namespace A122657.P1341154063012209136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n * A007590 n : ℚ) / 2

end

end A122657.P1341154063012209136

namespace A122657

/-- `A000578(n)*A007590(n)/2` -/
def P1341154063012209136.Spec : Prop :=
  ∀ n, P1341154063012209136.a n = (A122657 n : ℚ)

end A122657

/-! ## A122657.P8784350793610991359

`lcm(2, A000578(n)*A002620(n))`
-/

namespace A122657.P8784350793610991359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000578 n * A002620 n)

end

end A122657.P8784350793610991359

namespace A122657

/-- `lcm(2, A000578(n)*A002620(n))` -/
def P8784350793610991359.Spec : Prop :=
  ∀ n, (P8784350793610991359.a n : ℤ) = A122657 n

end A122657

/-! ## A122657.P16263793428956430911

`abs((A078126(n)+1)*A000578(n))`
-/

namespace A122657.P16263793428956430911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A078126 n + 1) * A000578 n|

end

end A122657.P16263793428956430911

namespace A122657

/-- `abs((A078126(n)+1)*A000578(n))` -/
def P16263793428956430911.Spec : Prop :=
  ∀ n, P16263793428956430911.a n = A122657 n

end A122657

/-! ## A122657.P4172674826043477234

`A000583(n)*A002620(n)/(C(n, n²)+n)`
-/

namespace A122657.P4172674826043477234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n * A002620 n : ℚ) / (Nat.choose n (n ^ 2) + n : ℚ)

end

end A122657.P4172674826043477234

namespace A122657

/-- `A000583(n)*A002620(n)/(C(n, n²)+n)` -/
def P4172674826043477234.Spec : Prop :=
  ∀ n, P4172674826043477234.a n = (A122657 n : ℚ)

end A122657

/-! ## A122657.P5419314383042438368

`(A000578(n)*A002620(n))%A053296(2*n)`
-/

namespace A122657.P5419314383042438368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n * A002620 n) (A053296 (2 * n))

end

end A122657.P5419314383042438368

namespace A122657

/-- `(A000578(n)*A002620(n))%A053296(2*n)` -/
def P5419314383042438368.Spec : Prop :=
  ∀ n, P5419314383042438368.a n = A122657 n

end A122657

/-! ## A122657.P18283420498247228562

`(n^3*A002620(n))%A162274(n)`
-/

namespace A122657.P18283420498247228562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 3 : ℤ) * A002620 n) (A162274 n)

end

end A122657.P18283420498247228562

namespace A122657

/-- `(n^3*A002620(n))%A162274(n)` -/
def P18283420498247228562.Spec : Prop :=
  ∀ n, P18283420498247228562.a n = A122657 n

end A122657

/-!
# A122658: a(n) = if n mod 2 = 1 then n^3*(n-1)^2/2 else n^5/2.

The programs for A122658, the canonical program `A122658.P707224721326350976` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122658 has offset 0).

The definition of A122658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122658.P707224721326350976

`2*floor(n/2)²*n^3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122658

/-- `2*floor(n/2)²*n^3` -/
def P707224721326350976.Spec : Prop :=
  ∀ n, P707224721326350976.a n = A122658 n

theorem P707224721326350976.correct : P707224721326350976.Spec := by
  intro n
  simp only [A122658]

end A122658

/-! ## A122658.P1137776221520767425

`(n%2-n)²*n^3/2`
-/

namespace A122658.P1137776221520767425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n % 2 : ℕ) : ℤ) - (n : ℤ)) ^ 2 * (n ^ 3 : ℤ) : ℚ) / 2

end

end A122658.P1137776221520767425

namespace A122658

/-- `(n%2-n)²*n^3/2` -/
def P1137776221520767425.Spec : Prop :=
  ∀ n, P1137776221520767425.a n = (A122658 n : ℚ)

end A122658

/-! ## A122658.P1788775679803201641

`2*n^3*A004526(n)²+n*A036987(2*n)`
-/

namespace A122658.P1788775679803201641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 : ℤ) * A004526 n ^ 2 + (n : ℤ) * A036987 (2 * n)

end

end A122658.P1788775679803201641

namespace A122658

/-- `2*n^3*A004526(n)²+n*A036987(2*n)` -/
def P1788775679803201641.Spec : Prop :=
  ∀ n, P1788775679803201641.a n = A122658 n

end A122658

/-! ## A122658.P15768149104066011210

`2*n^3*A004526(n)²/and(1, A000010(n+2))!`
-/

namespace A122658.P15768149104066011210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 3 : ℤ) * A004526 n ^ 2 : ℚ) / (Nat.factorial (Int.land 1 (A000010 (n + 2))).toNat : ℚ)

end

end A122658.P15768149104066011210

namespace A122658

/-- `2*n^3*A004526(n)²/and(1, A000010(n+2))!` -/
def P15768149104066011210.Spec : Prop :=
  ∀ n, P15768149104066011210.a n = (A122658 n : ℚ)

end A122658

/-! ## A122658.P4982399875041307710

`A122656(n)+A056220(n)*A122656(n)`
-/

namespace A122658.P4982399875041307710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122656 n + A056220 n * A122656 n

end

end A122658.P4982399875041307710

namespace A122658

/-- `A122656(n)+A056220(n)*A122656(n)` -/
def P4982399875041307710.Spec : Prop :=
  ∀ n, P4982399875041307710.a n = A122658 n

end A122658

/-! ## A122658.P12658281565553202691

`-A001489(n)*A008217(2*n)*A001105(n)`
-/

namespace A122658.P12658281565553202691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A008217 (2 * n) * A001105 n)

end

end A122658.P12658281565553202691

namespace A122658

/-- `-A001489(n)*A008217(2*n)*A001105(n)` -/
def P12658281565553202691.Spec : Prop :=
  ∀ n, P12658281565553202691.a n = A122658 n

end A122658

/-! ## A122658.P2889510827570564697

`n²*A122656(n)*A062760(A066048(n+1))+n²*A122656(n)`
-/

namespace A122658.P2889510827570564697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A122656 n * A062760 (A066048 (n + 1)).toNat + (n ^ 2 : ℤ) * A122656 n

end

end A122658.P2889510827570564697

namespace A122658

/-- `n²*A122656(n)*A062760(A066048(n+1))+n²*A122656(n)` -/
def P2889510827570564697.Spec : Prop :=
  ∀ n, P2889510827570564697.a n = A122658 n

end A122658

/-!
# A122659: Cubes whose digits occur exactly twice.

The programs for A122659, there is no canonical definition to state claims against.
-/

/-! ## A122659.P18357368899341314959

`A052052(comp[C(2*n, 3)])`
-/

namespace A122659.P18357368899341314959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A122659.P18357368899341314959

/-! ## A122659.P5692883648885985934

`A052052(comp[∑[(2*n)²]])`
-/

namespace A122659.P5692883648885985934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A122659.P5692883648885985934

/-! ## A122659.P18431865152251100740

`A052052(A293754(n+1))*A057427(n+4)`
-/

namespace A122659.P18431865152251100740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052052 (A293754 (n + 1)).toNat * A057427 (n + 4)

end

end A122659.P18431865152251100740

/-! ## A122659.P11159001709746251982

`∪[A052052(A005117(n+1)), A052052(n+5)]`
-/

namespace A122659.P11159001709746251982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052052 (A005117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052052 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122659.P11159001709746251982

/-!
# A122667: a(n) = d(n)_d(n) = A122618(d(n)), where d = A000005, and A122618 = "n read in base n".

The programs for A122667, the canonical program `A122667.P6559643357923191415` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122667 has offset 1).

The definition of A122667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122667.P2072587859469580278

`A122618(round(∑{d}[n+1, root(#, 2*n+1)]))`
-/

namespace A122667.P2072587859469580278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (2 * n + 1 : ℝ)))).toNat

end

end A122667.P2072587859469580278

namespace A122667

/-- `A122618(round(∑{d}[n+1, root(#, 2*n+1)]))` -/
def P2072587859469580278.Spec : Prop :=
  ∀ n, P2072587859469580278.a n = A122667 (n + 1)

end A122667

/-! ## A122667.P6559643357923191415

`A083292(∑{d}[n+1, (n+1)/lcm(#, n+1)])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122667

/-- `A083292(∑{d}[n+1, (n+1)/lcm(#, n+1)])` -/
def P6559643357923191415.Spec : Prop :=
  ∀ n, P6559643357923191415.a n = A122667 (n + 1)

theorem P6559643357923191415.correct : P6559643357923191415.Spec := by
  intro n
  simp only [A122667, Nat.add_sub_cancel]

end A122667

/-! ## A122667.P4453283074487800340

`A122618(Δ[A006218(n)])`
-/

namespace A122667.P4453283074487800340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (f1 (n + 1) - f1 n).toNat

end

end A122667.P4453283074487800340

namespace A122667

/-- `A122618(Δ[A006218(n)])` -/
def P4453283074487800340.Spec : Prop :=
  ∀ n, P4453283074487800340.a n = A122667 (n + 1)

end A122667

/-! ## A122667.P1886308905130860893

`A083292(A000005(n+1))`
-/

namespace A122667.P1886308905130860893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (A000005 (n + 1)).toNat

end

end A122667.P1886308905130860893

namespace A122667

/-- `A083292(A000005(n+1))` -/
def P1886308905130860893.Spec : Prop :=
  ∀ n, P1886308905130860893.a n = A122667 (n + 1)

end A122667

/-! ## A122667.P861302149607594641

`A083292(∑{d}[n+1, A000041(floor(1/#))])`
-/

namespace A122667.P861302149607594641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (∑ d ∈ Nat.divisors (f1 n), A000041 ⌊1 / (d : ℚ)⌋.toNat).toNat

end

end A122667.P861302149607594641

namespace A122667

/-- `A083292(∑{d}[n+1, A000041(floor(1/#))])` -/
def P861302149607594641.Spec : Prop :=
  ∀ n, P861302149607594641.a n = A122667 (n + 1)

end A122667

/-! ## A122667.P5390219042385747018

`A117804(A000005(A100577(n+1)))`
-/

namespace A122667.P5390219042385747018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A000005 (A100577 (n + 1)).toNat).toNat

end

end A122667.P5390219042385747018

namespace A122667

/-- `A117804(A000005(A100577(n+1)))` -/
def P5390219042385747018.Spec : Prop :=
  ∀ n, P5390219042385747018.a n = A122667 (n + 1)

end A122667

/-! ## A122667.P18271213649724781064

`A301373(A301373(∏{e}[n+1, #+1]))`
-/

namespace A122667.P18271213649724781064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301373 (A301373 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A122667.P18271213649724781064

namespace A122667

/-- `A301373(A301373(∏{e}[n+1, #+1]))` -/
def P18271213649724781064.Spec : Prop :=
  ∀ n, P18271213649724781064.a n = A122667 (n + 1)

end A122667

/-! ## A122667.P15357514296878754729

`A083292(A000120(A100587(n+1)))`
-/

namespace A122667.P15357514296878754729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (A000120 (A100587 (n + 1)).toNat).toNat

end

end A122667.P15357514296878754729

namespace A122667

/-- `A083292(A000120(A100587(n+1)))` -/
def P15357514296878754729.Spec : Prop :=
  ∀ n, P15357514296878754729.a n = A122667 (n + 1)

end A122667

/-! ## A122667.P3169546474366873775

`A002473(A046951((n+1)²))`
-/

namespace A122667.P3169546474366873775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (A046951 ((n + 1) ^ 2)).toNat

end

end A122667.P3169546474366873775

namespace A122667

/-- `A002473(A046951((n+1)²))` -/
def P3169546474366873775.Spec : Prop :=
  ∀ n, P3169546474366873775.a n = A122667 (n + 1)

end A122667

/-!
# A122668: a(n) = d(n)_n where d() = A000005.

The programs for A122668, there is no canonical definition to state claims against.
-/

/-! ## A122668.P2964869569288371581

`A335205(A334954(n+1))%A335126(n+1)`
-/

namespace A122668.P2964869569288371581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335205 (A334954 (n + 1)).toNat) (A335126 (n + 1))

end

end A122668.P2964869569288371581

/-! ## A122668.P10571689492389982112

`A349190(∏{e}[n+1, #+1])`
-/

namespace A122668.P10571689492389982112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A122668.P10571689492389982112

/-! ## A122668.P18258986247987452000

`A349190(∑{d}[n+1, gcd(n, #)])`
-/

namespace A122668.P18258986247987452000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A122668.P18258986247987452000

/-! ## A122668.P8075408134238059700

`A349190(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A122668.P8075408134238059700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A122668.P8075408134238059700

/-! ## A122668.P2442543150882301993

`A349190(-∑{d}[n+1, or(#, -1)])`
-/

namespace A122668.P2442543150882301993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (-(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1))).toNat

end

end A122668.P2442543150882301993

/-! ## A122668.P6691776781252101241

`A349190(2^∑{e}[n+1, log2(#+1)])`
-/

namespace A122668.P6691776781252101241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)))).toNat

end

end A122668.P6691776781252101241

/-! ## A122668.P3279872699691109343

`A349190(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A122668.P3279872699691109343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A122668.P3279872699691109343

/-! ## A122668.P3474346321619689344

`A349190(A000005(n+1))`
-/

namespace A122668.P3474346321619689344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (A000005 (n + 1)).toNat

end

end A122668.P3474346321619689344

/-! ## A122668.P16053132735444895769

`A349190(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A122668.P16053132735444895769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ)).toNat

end

end A122668.P16053132735444895769

/-!
# A122669: Number of nontrivial arithmetic progressions of primes between n and 2n.

The programs for A122669, there is no canonical definition to state claims against.
-/

/-! ## A122669.P739036127526113769

`A025436(A289892(∑[A025436(n)]))`
-/

namespace A122669.P739036127526113769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (A289892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A122669.P739036127526113769

/-!
# A122670: If n mod 4 = 2 or n mod 4 = 3 then a(n) = 0 else let m=floor(n/4), then a(n) = (2*m)!/m!.

The programs for A122670, the canonical program `A122670.P15897592930305815313` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122670 has offset 0).

The definition of A122670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122670.P15897592930305815313

`(or(1, n)-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122670

/-- `(or(1, n)-3)*a(n-4)` -/
def P15897592930305815313.Spec : Prop :=
  ∀ n, P15897592930305815313.a n = A122670 n

theorem P15897592930305815313.correct : P15897592930305815313.Spec := by
  intro n
  simp only [A122670]

end A122670

/-! ## A122670.P9940204697762161124

`A037224(or(1, n))`
-/

namespace A122670.P9940204697762161124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037224 (Nat.lor 1 n)

end

end A122670.P9940204697762161124

namespace A122670

/-- `A037224(or(1, n))` -/
def P9940204697762161124.Spec : Prop :=
  ∀ n, P9940204697762161124.a n = A122670 n

end A122670

/-! ## A122670.P9448992527567084096

`A037224(ceil(acot(n))-1+n)`
-/

namespace A122670.P9448992527567084096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037224 (⌈SequenceMachineLib.acot (n : ℝ)⌉ - 1 + (n : ℤ)).toNat

end

end A122670.P9448992527567084096

namespace A122670

/-- `A037224(ceil(acot(n))-1+n)` -/
def P9448992527567084096.Spec : Prop :=
  ∀ n, P9448992527567084096.a n = A122670 n

end A122670

/-! ## A122670.P2422905604563163720

`lcm((-1)^n, A067994(floor(n/2)))`
-/

namespace A122670.P2422905604563163720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A067994 ⌊(n : ℚ) / 2⌋.toNat)

end

end A122670.P2422905604563163720

namespace A122670

/-- `lcm((-1)^n, A067994(floor(n/2)))` -/
def P2422905604563163720.Spec : Prop :=
  ∀ n, (P2422905604563163720.a n : ℤ) = A122670 n

end A122670

/-! ## A122670.P10364420461685856055

`A037224(A028310(n))`
-/

namespace A122670.P10364420461685856055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037224 (A028310 n).toNat

end

end A122670.P10364420461685856055

namespace A122670

/-- `A037224(A028310(n))` -/
def P10364420461685856055.Spec : Prop :=
  ∀ n, P10364420461685856055.a n = A122670 n

end A122670

/-! ## A122670.P9140667450347325873

`A037224(A109613(n))`
-/

namespace A122670.P9140667450347325873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037224 (A109613 n).toNat

end

end A122670.P9140667450347325873

namespace A122670

/-- `A037224(A109613(n))` -/
def P9140667450347325873.Spec : Prop :=
  ∀ n, P9140667450347325873.a n = A122670 n

end A122670

/-! ## A122670.P16260128175697416689

`abs(A067994(A004526(n)))`
-/

namespace A122670.P16260128175697416689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 (A004526 n).toNat|

end

end A122670.P16260128175697416689

namespace A122670

/-- `abs(A067994(A004526(n)))` -/
def P16260128175697416689.Spec : Prop :=
  ∀ n, P16260128175697416689.a n = A122670 n

end A122670

/-! ## A122670.P7072216383059197513

`abs(A067994(n-A110654(n)))`
-/

namespace A122670.P7072216383059197513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 ((n : ℤ) - A110654 n).toNat|

end

end A122670.P7072216383059197513

namespace A122670

/-- `abs(A067994(n-A110654(n)))` -/
def P7072216383059197513.Spec : Prop :=
  ∀ n, P7072216383059197513.a n = A122670 n

end A122670

/-! ## A122670.P18405625307718315279

`abs(A067994(n-abs(A001057(n))))`
-/

namespace A122670.P18405625307718315279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A067994 ((n : ℤ) - |A001057 n|).toNat)|

end

end A122670.P18405625307718315279

namespace A122670

/-- `abs(A067994(n-abs(A001057(n))))` -/
def P18405625307718315279.Spec : Prop :=
  ∀ n, P18405625307718315279.a n = A122670 n

end A122670

/-! ## A122670.P13707142239917854265

`abs(A067994(n-∑[A000035(n)]))`
-/

namespace A122670.P13707142239917854265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A122670.P13707142239917854265

namespace A122670

/-- `abs(A067994(n-∑[A000035(n)]))` -/
def P13707142239917854265.Spec : Prop :=
  ∀ n, P13707142239917854265.a n = A122670 n

end A122670

/-! ## A122670.P816094032711838824

`A067147(∑[A142150(n)])`
-/

namespace A122670.P816094032711838824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122670.P816094032711838824

namespace A122670

/-- `A067147(∑[A142150(n)])` -/
def P816094032711838824.Spec : Prop :=
  ∀ n, P816094032711838824.a n = A122670 n

end A122670

/-! ## A122670.P6938381244667135109

`A067147(A110660(n)/2)`
-/

namespace A122670.P6938381244667135109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (SequenceMachineLib.roundAway ((A110660 n : ℚ) / 2)).toNat

end

end A122670.P6938381244667135109

namespace A122670

/-- `A067147(A110660(n)/2)` -/
def P6938381244667135109.Spec : Prop :=
  ∀ n, P6938381244667135109.a n = A122670 n

end A122670

/-! ## A122670.P13660503199045458680

`A067147(A000217(n)-A001318(n))`
-/

namespace A122670.P13660503199045458680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A000217 n - A001318 n).toNat

end

end A122670.P13660503199045458680

namespace A122670

/-- `A067147(A000217(n)-A001318(n))` -/
def P13660503199045458680.Spec : Prop :=
  ∀ n, P13660503199045458680.a n = A122670 n

end A122670

/-! ## A122670.P940917877820836671

`A067147(A008805(n)-A008619(n))`
-/

namespace A122670.P940917877820836671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A008805 n - A008619 n).toNat

end

end A122670.P940917877820836671

namespace A122670

/-- `A067147(A008805(n)-A008619(n))` -/
def P940917877820836671.Spec : Prop :=
  ∀ n, P940917877820836671.a n = A122670 n

end A122670

/-! ## A122670.P481736222001246205

`A067147(A008805(n)+1)/A008619(n)`
-/

namespace A122670.P481736222001246205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067147 (A008805 n + 1).toNat : ℚ) / (A008619 n : ℚ)

end

end A122670.P481736222001246205

namespace A122670

/-- `A067147(A008805(n)+1)/A008619(n)` -/
def P481736222001246205.Spec : Prop :=
  ∀ n, P481736222001246205.a n = (A122670 n : ℚ)

end A122670

/-! ## A122670.P8936263872849320947

`A067147(A004525(A110660(n)))`
-/

namespace A122670.P8936263872849320947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A004525 (A110660 n).toNat).toNat

end

end A122670.P8936263872849320947

namespace A122670

/-- `A067147(A004525(A110660(n)))` -/
def P8936263872849320947.Spec : Prop :=
  ∀ n, P8936263872849320947.a n = A122670 n

end A122670

/-! ## A122670.P4420260283163162572

`A037224(n+1-A037224(A116891(n+1)))`
-/

namespace A122670.P4420260283163162572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037224 ((n + 1 : ℤ) - A037224 (A116891 (n + 1)).toNat).toNat

end

end A122670.P4420260283163162572

namespace A122670

/-- `A037224(n+1-A037224(A116891(n+1)))` -/
def P4420260283163162572.Spec : Prop :=
  ∀ n, P4420260283163162572.a n = A122670 n

end A122670

/-!
# A122671: Number of catacondensed coronoid systems with n hexagons with a single hole.

The programs for A122671, there is no canonical definition to state claims against.
-/

/-! ## A122671.P14614049973075078825

`xor(A025638(n+1), A274427(A150976(n)))`
-/

namespace A122671.P14614049973075078825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025638 (n + 1)) (A274427 (A150976 n).toNat)

end

end A122671.P14614049973075078825

/-!
# A122673: Number of animals with n nodes generated from the simple cubic lattice.

The programs for A122673, there is no canonical definition to state claims against.
-/

/-! ## A122673.P12611548602353158744

`A382303(n²+1)+1`
-/

namespace A122673.P12611548602353158744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382303 (n ^ 2 + 1) + 1

end

end A122673.P12611548602353158744

/-!
# A122674: Number of trees with n nodes generated from the simple cubic lattice.

The programs for A122674, there is no canonical definition to state claims against.
-/

/-! ## A122674.P11043918872025901688

`floor(∑[n+5]^((n+1)/5)²)`
-/

namespace A122674.P11043918872025901688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (((n + 1 : ℚ) / 5) ^ 2 : ℝ)⌋

end

end A122674.P11043918872025901688

/-!
# A122675: Number of "fragments" with n nodes generated from the simple cubic lattice.

The programs for A122675, there is no canonical definition to state claims against.
-/

/-! ## A122675.P14477488988767333785

`4*A089858(3*a(n-2))+1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A122675.P14477488988767333785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * A089858 (3 * a (n - 2)).toNat + 1

end

end A122675.P14477488988767333785

/-! ## A122675.P14270575582942826686

`A389584(A094433(n))`
-/

namespace A122675.P14270575582942826686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389584 (A094433 n).toNat

end

end A122675.P14270575582942826686

/-!
# A122676: Number of unbranched catacondensed azulenoids with n carbon atoms and C_s symmetry.

The programs for A122676, there is no canonical definition to state claims against.
-/

/-! ## A122676.P9203980291767609268

`A102121(n)*A104872(A092754(n+1))`
-/

namespace A122676.P9203980291767609268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102121 n * A104872 (A092754 (n + 1)).toNat

end

end A122676.P9203980291767609268

/-! ## A122676.P5596831191132406525

`A350355(A001372(n))`
-/

namespace A122676.P5596831191132406525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (A001372 n).toNat

end

end A122676.P5596831191132406525

/-!
# A122677: Number of catacondensed azulenoids with n carbon atoms.

The programs for A122677, there is no canonical definition to state claims against.
-/

/-! ## A122677.P167535164948397865

`A083691(n)-A135094(n)`
-/

namespace A122677.P167535164948397865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083691 n - A135094 n

end

end A122677.P167535164948397865

/-! ## A122677.P16116558316809078475

`∑[xor(A001003(n), A293137(n))]`
-/

namespace A122677.P16116558316809078475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001003 n) (A293137 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122677.P16116558316809078475

/-! ## A122677.P9268293507966470960

`∑[xor(A001003(n), A316355(n))]`
-/

namespace A122677.P9268293507966470960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001003 n) (A316355 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122677.P9268293507966470960

/-!
# A122678: Invariant number of polygons of n-circum-C_5 H_5 systems.

The programs for A122678, the canonical program `A122678.P7367556844513722558` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122678 has offset 1).

The definition of A122678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122678.P7367556844513722558

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=21`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122678

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P7367556844513722558.Spec : Prop :=
  ∀ n, P7367556844513722558.a n = A122678 (n + 1)

theorem P7367556844513722558.correct : P7367556844513722558.Spec := by
  intro n
  simp only [A122678, Nat.add_sub_cancel]

end A122678

/-! ## A122678.P16280716974585114190

`A106729(n)-4`
-/

namespace A122678.P16280716974585114190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106729 n - 4

end

end A122678.P16280716974585114190

namespace A122678

/-- `A106729(n)-4` -/
def P16280716974585114190.Spec : Prop :=
  ∀ n, P16280716974585114190.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P8849135738278241510

`record[a(n-2)-(a(n-1)+4)]` with `a(0)=1, a(1)=1`
-/

namespace A122678.P8849135738278241510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122678.P8849135738278241510

namespace A122678

/-- `record[a(n-2)-(a(n-1)+4)]` -/
def P8849135738278241510.Spec : Prop :=
  ∀ n, P8849135738278241510.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P5211974316579661071

`record[a(n-2)-4-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A122678.P5211974316579661071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - 4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122678.P5211974316579661071

namespace A122678

/-- `record[a(n-2)-4-a(n-1)]` -/
def P5211974316579661071.Spec : Prop :=
  ∀ n, P5211974316579661071.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P7574788999130631322

`3*a(n-1)+4-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A122678.P7574788999130631322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * a (n - 1) + (4 - a (n - 2))

end

end A122678.P7574788999130631322

namespace A122678

/-- `3*a(n-1)+4-a(n-2)` -/
def P7574788999130631322.Spec : Prop :=
  ∀ n, P7574788999130631322.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P6329786874473399624

`3*a(n-1)-(a(n-2)-4)` with `a(0)=1, a(1)=6`
-/

namespace A122678.P6329786874473399624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * a (n - 1) - (a (n - 2) - 4)

end

end A122678.P6329786874473399624

namespace A122678

/-- `3*a(n-1)-(a(n-2)-4)` -/
def P6329786874473399624.Spec : Prop :=
  ∀ n, P6329786874473399624.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P18246823447845877028

`∑[A054888(n)]`
-/

namespace A122678.P18246823447845877028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122678.P18246823447845877028

namespace A122678

/-- `∑[A054888(n)]` -/
def P18246823447845877028.Spec : Prop :=
  ∀ n, P18246823447845877028.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P984074354221713903

`A246639(n)-7`
-/

namespace A122678.P984074354221713903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246639 n - 7

end

end A122678.P984074354221713903

namespace A122678

/-- `A246639(n)-7` -/
def P984074354221713903.Spec : Prop :=
  ∀ n, P984074354221713903.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P14151796075119514290

`A232584(n+1)/2`
-/

namespace A122678.P14151796075119514290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232584 (n + 1) : ℚ) / 2

end

end A122678.P14151796075119514290

namespace A122678

/-- `A232584(n+1)/2` -/
def P14151796075119514290.Spec : Prop :=
  ∀ n, P14151796075119514290.a n = (A122678 (n + 1) : ℚ)

end A122678

/-! ## A122678.P6210425329772040953

`A289107(2*n)-1`
-/

namespace A122678.P6210425329772040953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289107 (2 * n) - 1

end

end A122678.P6210425329772040953

namespace A122678

/-- `A289107(2*n)-1` -/
def P6210425329772040953.Spec : Prop :=
  ∀ n, P6210425329772040953.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P15831604467513987838

`5*A027941(n)+1`
-/

namespace A122678.P15831604467513987838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A027941 n + 1

end

end A122678.P15831604467513987838

namespace A122678

/-- `5*A027941(n)+1` -/
def P15831604467513987838.Spec : Prop :=
  ∀ n, P15831604467513987838.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P16469788441874136428

`A153388(n)/2-3`
-/

namespace A122678.P16469788441874136428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153388 n : ℚ) / 2 - 3

end

end A122678.P16469788441874136428

namespace A122678

/-- `A153388(n)/2-3` -/
def P16469788441874136428.Spec : Prop :=
  ∀ n, P16469788441874136428.a n = (A122678 (n + 1) : ℚ)

end A122678

/-! ## A122678.P14997462809377210497

`A350919(n+1)-8`
-/

namespace A122678.P14997462809377210497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350919 (n + 1) - 8

end

end A122678.P14997462809377210497

namespace A122678

/-- `A350919(n+1)-8` -/
def P14997462809377210497.Spec : Prop :=
  ∀ n, P14997462809377210497.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P14616515820635701450

`5*A122367(n)-4`
-/

namespace A122678.P14616515820635701450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A122367 n - 4

end

end A122678.P14616515820635701450

namespace A122678

/-- `5*A122367(n)-4` -/
def P14616515820635701450.Spec : Prop :=
  ∀ n, P14616515820635701450.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P15105516982255132448

`A371843(Δ[n²])-3`
-/

namespace A122678.P15105516982255132448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A122678.P15105516982255132448

namespace A122678

/-- `A371843(Δ[n²])-3` -/
def P15105516982255132448.Spec : Prop :=
  ∀ n, P15105516982255132448.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P14874619893560101452

`∑[record[A203976(n+1)]]`
-/

namespace A122678.P14874619893560101452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122678.P14874619893560101452

namespace A122678

/-- `∑[record[A203976(n+1)]]` -/
def P14874619893560101452.Spec : Prop :=
  ∀ n, P14874619893560101452.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P17173971126835941282

`∑[A201157(n+1)]+1`
-/

namespace A122678.P17173971126835941282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A122678.P17173971126835941282

namespace A122678

/-- `∑[A201157(n+1)]+1` -/
def P17173971126835941282.Spec : Prop :=
  ∀ n, P17173971126835941282.a n = A122678 (n + 1)

end A122678

/-! ## A122678.P10479172675358493960

`∑[A022088(2*n)]+1`
-/

namespace A122678.P10479172675358493960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A122678.P10479172675358493960

namespace A122678

/-- `∑[A022088(2*n)]+1` -/
def P10479172675358493960.Spec : Prop :=
  ∀ n, P10479172675358493960.a n = A122678 (n + 1)

end A122678

/-!
# A122679: Invariant number of internal vertices of n-circum-C_5 H_5 systems.

The programs for A122679, the canonical program `A122679.P4297750469062219506` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122679 has offset 1).

The definition of A122679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122679.P4297750469062219506

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=25`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122679

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P4297750469062219506.Spec : Prop :=
  ∀ n, P4297750469062219506.a n = A122679 (n + 1)

theorem P4297750469062219506.correct : P4297750469062219506.Spec := by
  intro n
  simp only [A122679, Nat.add_sub_cancel]

end A122679

/-! ## A122679.P17822419456021411568

`5*A004146(n)`
-/

namespace A122679.P17822419456021411568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004146 n

end

end A122679.P17822419456021411568

namespace A122679

/-- `5*A004146(n)` -/
def P17822419456021411568.Spec : Prop :=
  ∀ n, P17822419456021411568.a n = A122679 (n + 1)

end A122679

/-! ## A122679.P4013320350996701353

`5*(floor((ϕ^n)²)-1)`
-/

namespace A122679.P4013320350996701353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (⌊(Real.goldenRatio ^ n) ^ 2⌋ - 1)

end

end A122679.P4013320350996701353

namespace A122679

/-- `5*(floor((ϕ^n)²)-1)` -/
def P4013320350996701353.Spec : Prop :=
  ∀ n, P4013320350996701353.a n = A122679 (n + 1)

end A122679

/-! ## A122679.P14870151297332171172

`xor(2, record[a(n-2)-(a(n-1)+8)])` with `a(0)=2, a(1)=-3, a(2)=2`
-/

namespace A122679.P14870151297332171172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -3, 2] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A122679.P14870151297332171172

namespace A122679

/-- `xor(2, record[a(n-2)-(a(n-1)+8)])` -/
def P14870151297332171172.Spec : Prop :=
  ∀ n, P14870151297332171172.a n = A122679 (n + 1)

end A122679

/-! ## A122679.P13802962461169852379

`lcm(5, A203976(n)²)`
-/

namespace A122679.P13802962461169852379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A203976 n ^ 2)

end

end A122679.P13802962461169852379

namespace A122679

/-- `lcm(5, A203976(n)²)` -/
def P13802962461169852379.Spec : Prop :=
  ∀ n, (P13802962461169852379.a n : ℤ) = A122679 (n + 1)

end A122679

/-! ## A122679.P18124764376014684692

`A280154(2*n)-10`
-/

namespace A122679.P18124764376014684692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 (2 * n) - 10

end

end A122679.P18124764376014684692

namespace A122679

/-- `A280154(2*n)-10` -/
def P18124764376014684692.Spec : Prop :=
  ∀ n, P18124764376014684692.a n = A122679 (n + 1)

end A122679

/-! ## A122679.P155213019301006771

`∑[record[5*A005013(n)]]`
-/

namespace A122679.P155213019301006771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122679.P155213019301006771

namespace A122679

/-- `∑[record[5*A005013(n)]]` -/
def P155213019301006771.Spec : Prop :=
  ∀ n, P155213019301006771.a n = A122679 (n + 1)

end A122679

/-! ## A122679.P6938415230757763629

`∑[2*A201157(n+1)]-A201157(n+1)`
-/

namespace A122679.P6938415230757763629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A201157 (n + 1)

end

end A122679.P6938415230757763629

namespace A122679

/-- `∑[2*A201157(n+1)]-A201157(n+1)` -/
def P6938415230757763629.Spec : Prop :=
  ∀ n, P6938415230757763629.a n = A122679 (n + 1)

end A122679

/-! ## A122679.P1566761149813994347

`A004146(n)+A081070(n)-A004146(n)²`
-/

namespace A122679.P1566761149813994347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n + (A081070 n - A004146 n ^ 2)

end

end A122679.P1566761149813994347

namespace A122679

/-- `A004146(n)+A081070(n)-A004146(n)²` -/
def P1566761149813994347.Spec : Prop :=
  ∀ n, P1566761149813994347.a n = A122679 (n + 1)

end A122679

/-!
# A122680: Number of possible basketball games that end in a tie (n:n). Equivalently, the number of walks on the square lattice from (0,0) to (n,n) where the allowed steps are {(1,0),(2,0),(3,0), (0,1),(0,2),(0,3)}.

The programs for A122680, there is no canonical definition to state claims against.
-/

/-! ## A122680.P10516007166276755981

`A383474(∑[4*n])`
-/

namespace A122680.P10516007166276755981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383474 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122680.P10516007166276755981

/-!
# A122681: Sum of the Wiener indices of all trees having n vertices.

The programs for A122681, there is no canonical definition to state claims against.
-/

/-! ## A122681.P10061741596648957643

`A238098(A139806(n))`
-/

namespace A122681.P10061741596648957643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238098 (A139806 n).toNat

end

end A122681.P10061741596648957643

/-! ## A122681.P3912605727356243606

`∑[A378181(A214766(n))]`
-/

namespace A122681.P3912605727356243606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378181 (A214766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122681.P3912605727356243606

/-!
# A122682: Total Wiener index of (rooted?) trees on n nodes (see Wagner for precise definition).

The programs for A122682, there is no canonical definition to state claims against.
-/

/-! ## A122682.P5656077778343366487

`A104320(A215463(n+1)+A215422(2*(n+1)))`
-/

namespace A122682.P5656077778343366487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104320 (A215463 (n + 1) + A215422 (2 * (n + 1))).toNat

end

end A122682.P5656077778343366487

/-!
# A122683: Squares with strictly increasing digits.

The programs for A122683, there is no canonical definition to state claims against.
-/

/-! ## A122683.P11093380634381875475

`A060810(n+1)²`
-/

namespace A122683.P11093380634381875475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (n + 1) ^ 2

end

end A122683.P11093380634381875475

/-! ## A122683.P14815654707287631601

`∩[A009993(n+1), n²]`
-/

namespace A122683.P14815654707287631601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A122683.P14815654707287631601

/-! ## A122683.P6281632597523730927

`record[A060810(A000119(n))²]`
-/

namespace A122683.P6281632597523730927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (A000119 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122683.P6281632597523730927

/-! ## A122683.P6282582934687192092

`record[A060810(A112384(n))²]`
-/

namespace A122683.P6282582934687192092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (A112384 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122683.P6282582934687192092

/-! ## A122683.P12409528609133784943

`A000290(A060810(comp[28*n]))`
-/

namespace A122683.P12409528609133784943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A060810 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A122683.P12409528609133784943

/-!
# A122684: Sum of all Wiener indices of "chemical" trees described by A000602(n).

The programs for A122684, there is no canonical definition to state claims against.
-/

/-! ## A122684.P7360457763964732653

`A006498(2*(n+1))-A307092(A099262(n+2))`
-/

namespace A122684.P7360457763964732653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * (n + 1)) - A307092 (A099262 (n + 2)).toNat

end

end A122684.P7360457763964732653

/-! ## A122684.P12410509398830783764

`A347301(A236002(n))`
-/

namespace A122684.P12410509398830783764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347301 (A236002 n).toNat

end

end A122684.P12410509398830783764

/-!
# A122685: a(n) = n! except that a(2) = -2 and a(2n) = 0 for n > 2.

The programs for A122685, there is no canonical definition to state claims against.
-/

/-! ## A122685.P7958376850332031677

`n!*A240330(A142150(n))`
-/

namespace A122685.P7958376850332031677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A240330 (A142150 n).toNat

end

end A122685.P7958376850332031677

/-! ## A122685.P14138843200478726876

`A000142(n)*A141679(A128918(n))`
-/

namespace A122685.P14138843200478726876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A141679 (A128918 n).toNat

end

end A122685.P14138843200478726876

/-! ## A122685.P11562613944015432986

`A000142(n)*A240330(A142150(n))`
-/

namespace A122685.P11562613944015432986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A240330 (A142150 n).toNat

end

end A122685.P11562613944015432986

/-! ## A122685.P18134775174160928583

`∏[A028310(n)]*A240330(A142150(n))`
-/

namespace A122685.P18134775174160928583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A240330 (A142150 n).toNat

end

end A122685.P18134775174160928583

/-! ## A122685.P5555751289245210321

`∏[A000007(n)+n]*A240330(A142150(n))`
-/

namespace A122685.P5555751289245210321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A240330 (A142150 n).toNat

end

end A122685.P5555751289245210321

/-!
# A122686: List of numbers that are not the Wiener index of any tree.

The programs for A122686, there is no canonical definition to state claims against.
-/

/-! ## A122686.P1860548194823577609

`comp[A196051(n+1)]`
-/

namespace A122686.P1860548194823577609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A122686.P1860548194823577609

/-! ## A122686.P2220061253301388020

`eq[char[A196051(n+1)], A002483(n)]`
-/

namespace A122686.P2220061253301388020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122686.P2220061253301388020

/-! ## A122686.P996770728042972926

`eq[char[A196051(n+1)], A063667(n)]`
-/

namespace A122686.P996770728042972926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122686.P996770728042972926

/-!
# A122688: Irregular triangle read by rows giving numbers of azulenoid isomers (see Brunvoll et al. for precise definition).

The programs for A122688, there is no canonical definition to state claims against.
-/

/-! ## A122688.P16129703202497970710

`A122689(n+1)-A028310(A122687(n+1))`
-/

namespace A122688.P16129703202497970710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122689 (n + 1) - A028310 (A122687 (n + 1)).toNat

end

end A122688.P16129703202497970710

/-!
# A122689: Irregular triangle read by rows giving numbers of azulenoid isomers (see Brunvoll et al. for precise definition).

The programs for A122689, there is no canonical definition to state claims against.
-/

/-! ## A122689.P11708325570006624770

`A028310(A122688(n+1)+A122687(n+1))`
-/

namespace A122689.P11708325570006624770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A122688 (n + 1) + A122687 (n + 1)).toNat

end

end A122689.P11708325570006624770

/-!
# A122690: a(n) = 5*a(n-1) + 4*a(n-2) with a(0)=1, a(1)=4.

The programs for A122690, the canonical program `A122690.P1290315161781690604` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122690 has offset 0).

The definition of A122690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+4*a(n-2)` (program `A122690.P1290315161781690604`, by `A122690.P1290315161781690604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122690.P1290315161781690604

`5*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122690

/-- `5*a(n-1)+4*a(n-2)` -/
def P1290315161781690604.Spec : Prop :=
  ∀ n, (P1290315161781690604.a n : ℤ) = A122690 n

theorem P1290315161781690604.correct : P1290315161781690604.Spec := by
  intro n
  simp only [A122690]

end A122690

/-! ## A122690.P1934737993271154487

`Δ[A015537(n)]`
-/

namespace A122690.P1934737993271154487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122690.P1934737993271154487

namespace A122690

/-- `Δ[A015537(n)]` -/
def P1934737993271154487.Spec : Prop :=
  ∀ n, P1934737993271154487.a n = A122690 n

end A122690

/-! ## A122690.P253307967546006954

`A015537(n+1)-A015537(n)`
-/

namespace A122690.P253307967546006954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015537 (n + 1) - A015537 n

end

end A122690.P253307967546006954

namespace A122690

/-- `A015537(n+1)-A015537(n)` -/
def P253307967546006954.Spec : Prop :=
  ∀ n, P253307967546006954.a n = A122690 n

end A122690

/-! ## A122690.P14200742689266360257

`A126501(n)-2*A015537(n)`
-/

namespace A122690.P14200742689266360257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126501 n - 2 * A015537 n

end

end A122690.P14200742689266360257

namespace A122690

/-- `A126501(n)-2*A015537(n)` -/
def P14200742689266360257.Spec : Prop :=
  ∀ n, P14200742689266360257.a n = A122690 n

end A122690

/-! ## A122690.P7360955661415703996

`Δ[A106567(n)/4]`
-/

namespace A122690.P7360955661415703996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106567 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122690.P7360955661415703996

namespace A122690

/-- `Δ[A106567(n)/4]` -/
def P7360955661415703996.Spec : Prop :=
  ∀ n, P7360955661415703996.a n = (A122690 n : ℚ)

end A122690

/-! ## A122690.P13728952027792219013

`Δ[Δ[A123270(n)/8]]`
-/

namespace A122690.P13728952027792219013
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123270 n : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122690.P13728952027792219013

namespace A122690

/-- `Δ[Δ[A123270(n)/8]]` -/
def P13728952027792219013.Spec : Prop :=
  ∀ n, P13728952027792219013.a n = (A122690 n : ℚ)

end A122690

/-!
# A122692: Cubeful numbers whose neighbors are also cubeful.

The programs for A122692, the canonical program `A122692.P4977079091436261815` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122692 has offset 1).

The definition of A122692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122692.P4977079091436261815

`∩[A068140(n+1)+1, A068140(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A122692

/-- `∩[A068140(n+1)+1, A068140(n+1)]` -/
def P4977079091436261815.Spec : Prop :=
  ∀ n, (P4977079091436261815.a n : ℤ) = A122692 (n + 1)

theorem P4977079091436261815.correct : P4977079091436261815.Spec := by
  intro n
  simp only [A122692, Nat.add_sub_cancel]

end A122692

/-! ## A122692.P3942813706370509280

`A349235(A077739(n+1))+2`
-/

namespace A122692.P3942813706370509280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349235 (A077739 (n + 1)).toNat + 2

end

end A122692.P3942813706370509280

namespace A122692

/-- `A349235(A077739(n+1))+2` -/
def P3942813706370509280.Spec : Prop :=
  ∀ n, P3942813706370509280.a n = A122692 (n + 1)

end A122692

/-!
# A122693: Bishops on an n X n board (see Robinson paper for details).

The programs for A122693, there is no canonical definition to state claims against.
-/

/-! ## A122693.P12885312075066858712

`ceil(n/2)*∏[(n%2)^n+n]`
-/

namespace A122693.P12885312075066858712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A122693.P12885312075066858712

/-! ## A122693.P12145404877214640035

`∏[(n%2)^n+n]*A110654(n)`
-/

namespace A122693.P12145404877214640035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A110654 n

end

end A122693.P12145404877214640035

/-! ## A122693.P17656284852209486722

`A001900(n)*A110654(n)`
-/

namespace A122693.P17656284852209486722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001900 n * A110654 n

end

end A122693.P17656284852209486722

/-! ## A122693.P5236281000193924290

`A001900(n)*A008624(2*n+1)`
-/

namespace A122693.P5236281000193924290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001900 n * A008624 (2 * n + 1)

end

end A122693.P5236281000193924290

/-! ## A122693.P17756327417278990786

`∏[A008619(A053438(n))]*A110654(n)`
-/

namespace A122693.P17756327417278990786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A110654 n

end

end A122693.P17756327417278990786

/-! ## A122693.P13546432056070223059

`∏[A065033(A014601(n))]*A110654(n)`
-/

namespace A122693.P13546432056070223059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A110654 n

end

end A122693.P13546432056070223059

/-! ## A122693.P349428684672029409

`∏[A065033(4*A110654(n))]*A110654(n)`
-/

namespace A122693.P349428684672029409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A110654 n

end

end A122693.P349428684672029409

/-! ## A122693.P9088698199846590367

`A001900(n)*A008619(n+1)-A001900(n)`
-/

namespace A122693.P9088698199846590367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001900 n * A008619 (n + 1) - A001900 n

end

end A122693.P9088698199846590367

/-! ## A122693.P8692914811767842275

`A081123(n+1)*A274497(n+1)*A081123(n)`
-/

namespace A122693.P8692914811767842275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (n + 1) * A274497 (n + 1) * A081123 n

end

end A122693.P8692914811767842275

/-!
# A122695: Number of edges in the n-th Mycielski graph.

The programs for A122695, the canonical program `A122695.P14785138290885544480` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122695 has offset 0).

The definition of A122695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122695.P14785138290885544480

`3*a(n-1)+3*2^(n-3)-1` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A122695

/-- `3*a(n-1)+3*2^(n-3)-1` -/
def P14785138290885544480.Spec : Prop :=
  ∀ n, P14785138290885544480.a n = (A122695 n : ℚ)

end A122695

/-! ## A122695.P13026048714335334413

`A245804(A289207(n))+A124302(n)`
-/

namespace A122695.P13026048714335334413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 (A289207 n).toNat + A124302 n

end

end A122695.P13026048714335334413

namespace A122695

/-- `A245804(A289207(n))+A124302(n)` -/
def P13026048714335334413.Spec : Prop :=
  ∀ n, P13026048714335334413.a n = A122695 n

end A122695

/-! ## A122695.P10327977454301385473

`A169651(n)-A007051(A289207(n))`
-/

namespace A122695.P10327977454301385473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169651 n - A007051 (A289207 n).toNat

end

end A122695.P10327977454301385473

namespace A122695

/-- `A169651(n)-A007051(A289207(n))` -/
def P10327977454301385473.Spec : Prop :=
  ∀ n, P10327977454301385473.a n = A122695 n

end A122695

/-! ## A122695.P9254321780801780723

`A000392(n)+Δ[A001047(A289207(n))]`
-/

namespace A122695.P9254321780801780723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + (f1 (n + 1) - f1 n)

end

end A122695.P9254321780801780723

namespace A122695

/-- `A000392(n)+Δ[A001047(A289207(n))]` -/
def P9254321780801780723.Spec : Prop :=
  ∀ n, P9254321780801780723.a n = A122695 n

end A122695

/-! ## A122695.P12476663889154281335

`A000392(n+1)-A001047(A289207(n))`
-/

namespace A122695.P12476663889154281335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - A001047 (A289207 n).toNat

end

end A122695.P12476663889154281335

namespace A122695

/-- `A000392(n+1)-A001047(A289207(n))` -/
def P12476663889154281335.Spec : Prop :=
  ∀ n, P12476663889154281335.a n = A122695 n

end A122695

/-! ## A122695.P9343273498227780733

`A000392(n+1)-Δ[A000392(A289207(n+1))]`
-/

namespace A122695.P9343273498227780733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - (f1 (n + 1) - f1 n)

end

end A122695.P9343273498227780733

namespace A122695

/-- `A000392(n+1)-Δ[A000392(A289207(n+1))]` -/
def P9343273498227780733.Spec : Prop :=
  ∀ n, P9343273498227780733.a n = A122695 n

end A122695

/-! ## A122695.P10078238025114674240

`Δ[A169651(n)]-A003462(n)`
-/

namespace A122695.P10078238025114674240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003462 n

end

end A122695.P10078238025114674240

namespace A122695

/-- `Δ[A169651(n)]-A003462(n)` -/
def P10078238025114674240.Spec : Prop :=
  ∀ n, P10078238025114674240.a n = A122695 n

end A122695

/-! ## A122695.P14516258307136635804

`A306306(A004275(n))-A052955(A004275(n))`
-/

namespace A122695.P14516258307136635804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306306 (A004275 n).toNat - A052955 (A004275 n).toNat

end

end A122695.P14516258307136635804

namespace A122695

/-- `A306306(A004275(n))-A052955(A004275(n))` -/
def P14516258307136635804.Spec : Prop :=
  ∀ n, P14516258307136635804.a n = A122695 n

end A122695

/-!
# A122696: 

The programs for A122696, there is no canonical definition to state claims against.
-/

/-! ## A122696.P17869430405758098968

`A157249(A050299(n+1))`
-/

namespace A122696.P17869430405758098968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157249 (A050299 (n + 1)).toNat

end

end A122696.P17869430405758098968

/-!
# A122698: a(1)=a(2)=1 then a(n) = Sum_{d|n, 1

The programs for A122698, the canonical program `A122698.P18060644383630824103` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122698 has offset 1).

The definition of A122698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122698.P3328125446226850385

`A097331(A123273(n))`
-/

namespace A122698.P3328125446226850385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A123273 n).toNat

end

end A122698.P3328125446226850385

namespace A122698

/-- `A097331(A123273(n))` -/
def P3328125446226850385.Spec : Prop :=
  ∀ n, P3328125446226850385.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P11760090177978649470

`char[2^n-1]*A069739(A000010(n+1))`
-/

namespace A122698.P11760090177978649470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A069739 (A000010 (n + 1)).toNat

end

end A122698.P11760090177978649470

namespace A122698

/-- `char[2^n-1]*A069739(A000010(n+1))` -/
def P11760090177978649470.Spec : Prop :=
  ∀ n, P11760090177978649470.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P18060644383630824103

`A000108(A014081(n))*A036987(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A122698

/-- `A000108(A014081(n))*A036987(n)` -/
def P18060644383630824103.Spec : Prop :=
  ∀ n, P18060644383630824103.a n = A122698 (n + 1)

theorem P18060644383630824103.correct : P18060644383630824103.Spec := by
  intro n
  simp only [A122698, Nat.add_sub_cancel]

end A122698

/-! ## A122698.P9293306086409812323

`A000108(A050605(n))*A036987(n)`
-/

namespace A122698.P9293306086409812323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A050605 n).toNat * A036987 n

end

end A122698.P9293306086409812323

namespace A122698

/-- `A000108(A050605(n))*A036987(n)` -/
def P9293306086409812323.Spec : Prop :=
  ∀ n, P9293306086409812323.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P995949825160264545

`A036987(n)*A069739(A008619(n))`
-/

namespace A122698.P995949825160264545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A069739 (A008619 n).toNat

end

end A122698.P995949825160264545

namespace A122698

/-- `A036987(n)*A069739(A008619(n))` -/
def P995949825160264545.Spec : Prop :=
  ∀ n, P995949825160264545.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P12012607751717876419

`A000108(A014081(n))*A209229(n+1)`
-/

namespace A122698.P12012607751717876419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A014081 n).toNat * A209229 (n + 1)

end

end A122698.P12012607751717876419

namespace A122698

/-- `A000108(A014081(n))*A209229(n+1)` -/
def P12012607751717876419.Spec : Prop :=
  ∀ n, P12012607751717876419.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P14893687144636540041

`A036987(n)*A088617(A141299(n+1))`
-/

namespace A122698.P14893687144636540041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A088617 (A141299 (n + 1)).toNat

end

end A122698.P14893687144636540041

namespace A122698

/-- `A036987(n)*A088617(A141299(n+1))` -/
def P14893687144636540041.Spec : Prop :=
  ∀ n, P14893687144636540041.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P2652582417437013487

`A000108(∑[A209229(n+3)])*A209229(n+1)`
-/

namespace A122698.P2652582417437013487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A209229 (n + 1)

end

end A122698.P2652582417437013487

namespace A122698

/-- `A000108(∑[A209229(n+3)])*A209229(n+1)` -/
def P2652582417437013487.Spec : Prop :=
  ∀ n, P2652582417437013487.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P6846189492770567895

`A097331(∑[A209229(A004526(n+1))])`
-/

namespace A122698.P6846189492770567895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122698.P6846189492770567895

namespace A122698

/-- `A097331(∑[A209229(A004526(n+1))])` -/
def P6846189492770567895.Spec : Prop :=
  ∀ n, P6846189492770567895.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P10956277903324386318

`A000108(A023416(n+2))*A036987(n)`
-/

namespace A122698.P10956277903324386318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A023416 (n + 2)).toNat * A036987 n

end

end A122698.P10956277903324386318

namespace A122698

/-- `A000108(A023416(n+2))*A036987(n)` -/
def P10956277903324386318.Spec : Prop :=
  ∀ n, P10956277903324386318.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P9761861084537862060

`A000108(A080791(n+2))*A036987(n)`
-/

namespace A122698.P9761861084537862060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A080791 (n + 2)).toNat * A036987 n

end

end A122698.P9761861084537862060

namespace A122698

/-- `A000108(A080791(n+2))*A036987(n)` -/
def P9761861084537862060.Spec : Prop :=
  ∀ n, P9761861084537862060.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P8178668429132792437

`Δ[ceil(log2(n+1))]*A246596(3*n+1)`
-/

namespace A122698.P8178668429132792437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A246596 (3 * n + 1)

end

end A122698.P8178668429132792437

namespace A122698

/-- `Δ[ceil(log2(n+1))]*A246596(3*n+1)` -/
def P8178668429132792437.Spec : Prop :=
  ∀ n, P8178668429132792437.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P11480632165113404665

`A097331(A111982(n))`
-/

namespace A122698.P11480632165113404665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A111982 n).toNat

end

end A122698.P11480632165113404665

namespace A122698

/-- `A097331(A111982(n))` -/
def P11480632165113404665.Spec : Prop :=
  ∀ n, P11480632165113404665.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P12379345658710817457

`A097331(∑[A097331(and(n+1, n-2))])`
-/

namespace A122698.P12379345658710817457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (Int.land (n + 1 : ℤ) ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122698.P12379345658710817457

namespace A122698

/-- `A097331(∑[A097331(and(n+1, n-2))])` -/
def P12379345658710817457.Spec : Prop :=
  ∀ n, P12379345658710817457.a n = A122698 (n + 1)

end A122698

/-! ## A122698.P9778416850689630705

`A197432(lcm(A001316(n+1)%4, A026741(n+1)))`
-/

namespace A122698.P9778416850689630705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197432 (Int.lcm (Int.tmod (A001316 (n + 1)) 4) (A026741 (n + 1)))

end

end A122698.P9778416850689630705

namespace A122698

/-- `A197432(lcm(A001316(n+1)%4, A026741(n+1)))` -/
def P9778416850689630705.Spec : Prop :=
  ∀ n, P9778416850689630705.a n = A122698 (n + 1)

end A122698

/-!
# A122699: Least integer that can be written as a sum of 3 squares in n nontrivial ways (ignoring order and signs).

The programs for A122699, there is no canonical definition to state claims against.
-/

/-! ## A122699.P766539379677586692

`A124970(n)-char[1]`
-/

namespace A122699.P766539379677586692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124970 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A122699.P766539379677586692

/-! ## A122699.P10292803522671144946

`A159075(n)+A124970(n)`
-/

namespace A122699.P10292803522671144946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A124970 n

end

end A122699.P10292803522671144946

/-! ## A122699.P15109167533449327640

`A060576(n)*A124970(n)`
-/

namespace A122699.P15109167533449327640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A124970 n

end

end A122699.P15109167533449327640

/-! ## A122699.P5937595962213709594

`A124970(n)%A075151(n)`
-/

namespace A122699.P5937595962213709594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124970 n) (A075151 n)

end

end A122699.P5937595962213709594

/-! ## A122699.P6999350142853026827

`lcm(A105812(n), A124970(n))`
-/

namespace A122699.P6999350142853026827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A124970 n)

end

end A122699.P6999350142853026827

/-! ## A122699.P9916615035513263851

`xor(A063524(n), A124970(n))`
-/

namespace A122699.P9916615035513263851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A124970 n)

end

end A122699.P9916615035513263851

/-! ## A122699.P16046699155215217476

`xor(A124970(n), A178333(n))`
-/

namespace A122699.P16046699155215217476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124970 n) (A178333 n)

end

end A122699.P16046699155215217476

/-! ## A122699.P14505024251095298751

`char[A014085(n)]*A124970(n)`
-/

namespace A122699.P14505024251095298751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124970 n

end

end A122699.P14505024251095298751

/-! ## A122699.P14579464687704638566

`char[A018837(n)]*A124970(n)`
-/

namespace A122699.P14579464687704638566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124970 n

end

end A122699.P14579464687704638566

/-! ## A122699.P17930500777092077610

`char[A099801(n)]*A124970(n)`
-/

namespace A122699.P17930500777092077610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A124970 n

end

end A122699.P17930500777092077610

/-! ## A122699.P7816166499439404830

`xor(char[A016760(n)], A124970(n))`
-/

namespace A122699.P7816166499439404830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124970 n)

end

end A122699.P7816166499439404830

/-! ## A122699.P10635756671180600805

`xor(char[A017080(n)], A124970(n))`
-/

namespace A122699.P10635756671180600805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124970 n)

end

end A122699.P10635756671180600805

/-! ## A122699.P2432992193425768536

`xor(char[A017282(n)], A124970(n))`
-/

namespace A122699.P2432992193425768536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124970 n)

end

end A122699.P2432992193425768536

/-! ## A122699.P1993361298580091435

`xor(char[A022524(n)], A124970(n))`
-/

namespace A122699.P1993361298580091435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022524 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124970 n)

end

end A122699.P1993361298580091435

/-! ## A122699.P4279725999900504146

`xor(char[A024015(n)], A124970(n))`
-/

namespace A122699.P4279725999900504146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024015 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124970 n)

end

end A122699.P4279725999900504146

/-! ## A122699.P12754217138993894649

`xor(char[A076338(n)], A124970(n))`
-/

namespace A122699.P12754217138993894649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A124970 n)

end

end A122699.P12754217138993894649

/-! ## A122699.P10585323483638891582

`xor(A000212(C(2, n)), A124970(n))`
-/

namespace A122699.P10585323483638891582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000212 (Nat.choose 2 n)) (A124970 n)

end

end A122699.P10585323483638891582

/-! ## A122699.P6387433850201701767

`xor(A002620(C(2, n)), A124970(n))`
-/

namespace A122699.P6387433850201701767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002620 (Nat.choose 2 n)) (A124970 n)

end

end A122699.P6387433850201701767

/-! ## A122699.P6470484364064820185

`xor(A000007(abs(1-n)), A124970(n))`
-/

namespace A122699.P6470484364064820185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 |1 - (n : ℤ)|.toNat) (A124970 n)

end

end A122699.P6470484364064820185

/-! ## A122699.P11213135729321866353

`floor(A124970(n)/A014963(∑[n+1]))`
-/

namespace A122699.P11213135729321866353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124970 n : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A122699.P11213135729321866353

