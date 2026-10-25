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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
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
import Seq.B006.C002
import Seq.B007.C000
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
# A046800: Number of distinct prime factors of 2^n-1.

The programs for A046800, there is no canonical definition to state claims against.
-/

/-! ## A046800.P1606885365237267319

`∑{d}[n, A086251(#)]`
-/

namespace A046800.P1606885365237267319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086251 d

end

end A046800.P1606885365237267319

/-! ## A046800.P13061057962888954284

`∑{d}[n, A001222(A063982(#))]`
-/

namespace A046800.P13061057962888954284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A063982 d).toNat

end

end A046800.P13061057962888954284

/-! ## A046800.P2196651444742227564

`A004525(2*log2(∏{d}[n, 2^A086251(#)]))`
-/

namespace A046800.P2196651444742227564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (2 * Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A086251 d : ℤ) : ℚ) : ℝ))).toNat

end

end A046800.P2196651444742227564

/-! ## A046800.P6667734644589128613

`A005843(log2(∏{d}[n, 2^A086251(#)]))/2`
-/

namespace A046800.P6667734644589128613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.roundAway (Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A086251 d : ℤ) : ℚ) : ℝ))).toNat : ℚ) / 2

end

end A046800.P6667734644589128613

/-! ## A046800.P12171171031704782702

`log2(∏{d}[n, 2^A086251(#)])%A000124(n)`
-/

namespace A046800.P12171171031704782702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A086251 d : ℤ) : ℚ) : ℝ))) (A000124 n)

end

end A046800.P12171171031704782702

/-! ## A046800.P3335772240519049183

`log2(∏{d}[n, 2^A086251(#)])*A014963(10*(n+1))`
-/

namespace A046800.P3335772240519049183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A086251 d : ℤ) : ℚ) : ℝ) * (A014963 (10 * (n + 1)) : ℝ)

end

end A046800.P3335772240519049183

/-! ## A046800.P11434174311176239228

`A001222(∏{d}[n, A063982(#)])`
-/

namespace A046800.P11434174311176239228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n), A063982 d).toNat

end

end A046800.P11434174311176239228

/-! ## A046800.P6829269565944791520

`A000005(∏{d}[n, A063982(#)])-1`
-/

namespace A046800.P6829269565944791520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ d ∈ Nat.divisors (f1 n), A063982 d).toNat - 1

end

end A046800.P6829269565944791520

/-! ## A046800.P5722554594827981339

`A001222(∏{d}[n, 2^A086251(#)])`
-/

namespace A046800.P5722554594827981339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A086251 d : ℤ))).toNat

end

end A046800.P5722554594827981339

/-! ## A046800.P7073145933452867487

`A032741(∏{d}[n, A063982(#)])`
-/

namespace A046800.P7073145933452867487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∏ d ∈ Nat.divisors (f1 n), A063982 d).toNat

end

end A046800.P7073145933452867487

/-!
# A046801: Number of divisors of 2^n-1.

The programs for A046801, there is no canonical definition to state claims against.
-/

/-! ## A046801.P5826195998369340986

`∑{d}[n+1, A059499(#)]`
-/

namespace A046801.P5826195998369340986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059499 d

end

end A046801.P5826195998369340986

/-! ## A046801.P9526733671767849291

`A366602(n+1)/A046798(n+1)`
-/

namespace A046801.P9526733671767849291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366602 (n + 1) : ℚ) / (A046798 (n + 1) : ℚ)

end

end A046801.P9526733671767849291

/-! ## A046801.P8139766877505111153

`∑{d}[n+1, A212957(A000096(#))]`
-/

namespace A046801.P8139766877505111153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212957 (A000096 d).toNat

end

end A046801.P8139766877505111153

/-! ## A046801.P13348902318721223217

`A000005(A278240(n+1))`
-/

namespace A046801.P13348902318721223217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278240 (n + 1)).toNat

end

end A046801.P13348902318721223217

/-!
# A046802: T(n, k) = Sum_{j=k..n} binomial(n, j)*E1(j, j-k), where E1 are the Eulerian numbers A173018. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A046802, there is no canonical definition to state claims against.
-/

/-! ## A046802.P3094626612388352903

`(A168287(n)+A007318(n))/2`
-/

namespace A046802.P3094626612388352903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168287 n + A007318 n : ℚ) / 2

end

end A046802.P3094626612388352903

/-! ## A046802.P9663425931757586194

`(A168287(n)+abs(A108086(n)))/2`
-/

namespace A046802.P9663425931757586194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168287 n + |A108086 n| : ℚ) / 2

end

end A046802.P9663425931757586194

/-! ## A046802.P10353168547084087057

`(A168287(n)+abs(A130595(n)))/2`
-/

namespace A046802.P10353168547084087057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168287 n + |A130595 n| : ℚ) / 2

end

end A046802.P10353168547084087057

/-! ## A046802.P11032343774036353611

`(A168287(n)+sqrt(A008459(n)))/2`
-/

namespace A046802.P11032343774036353611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A168287 n : ℝ) + Real.sqrt (A008459 n : ℝ)) / 2

end

end A046802.P11032343774036353611

/-! ## A046802.P14491513492864505799

`(A168287(n)+Δ[A102363(n)])/2`
-/

namespace A046802.P14491513492864505799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168287 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A046802.P14491513492864505799

/-! ## A046802.P688711362841472430

`(A168288(n)+A028326(n))/3`
-/

namespace A046802.P688711362841472430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168288 n + A028326 n : ℚ) / 3

end

end A046802.P688711362841472430

/-! ## A046802.P16852952341814526079

`ceil((A168288(n)+A109128(n))/3)`
-/

namespace A046802.P16852952341814526079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168288 n + A109128 n : ℚ) / 3⌉

end

end A046802.P16852952341814526079

/-! ## A046802.P16488596898851601304

`A168287(n)+A168287(n)-A168288(n)`
-/

namespace A046802.P16488596898851601304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + (A168287 n - A168288 n)

end

end A046802.P16488596898851601304

/-! ## A046802.P8237365459257045105

`2*A168287(n)-A168288(n)`
-/

namespace A046802.P8237365459257045105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168287 n - A168288 n

end

end A046802.P8237365459257045105

/-! ## A046802.P5367995330594509542

`A168288(n)+A168288(n)-A168290(n)`
-/

namespace A046802.P5367995330594509542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168288 n + (A168288 n - A168290 n)

end

end A046802.P5367995330594509542

/-! ## A046802.P6506545776057703907

`A168287(n)-(A168289(n)-A168288(n))`
-/

namespace A046802.P6506545776057703907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n - (A168289 n - A168288 n)

end

end A046802.P6506545776057703907

/-! ## A046802.P16578435853687814866

`A381888(n)/∑[A010054(n)]`
-/

namespace A046802.P16578435853687814866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381888 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A046802.P16578435853687814866

/-! ## A046802.P5380566561491096957

`A381888(n)/A002024(n+1)`
-/

namespace A046802.P5380566561491096957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381888 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A046802.P5380566561491096957

/-!
# A046803: Triangle of numbers related to Eulerian numbers.

The programs for A046803, there is no canonical definition to state claims against.
-/

/-! ## A046803.P238462069461227449

`A089854(A321331(n))`
-/

namespace A046803.P238462069461227449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A321331 n).toNat

end

end A046803.P238462069461227449

/-! ## A046803.P10094084513664079084

`A357134(A250485(n+1))`
-/

namespace A046803.P10094084513664079084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357134 (A250485 (n + 1)).toNat

end

end A046803.P10094084513664079084

/-! ## A046803.P8125062821389571176

`A089868(A002260(n+1)*A136126(n+1))`
-/

namespace A046803.P8125062821389571176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A002260 (n + 1) * A136126 (n + 1)).toNat

end

end A046803.P8125062821389571176

/-! ## A046803.P199842681838950082

`A089867(A002260(n+1)*A141689(n+1))`
-/

namespace A046803.P199842681838950082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A002260 (n + 1) * A141689 (n + 1)).toNat

end

end A046803.P199842681838950082

/-!
# A046804: a(n) = p mod (p mod 10) where p = prime(n).

The programs for A046804, the canonical program `A046804.P7362675821239578053` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046804 has offset 1).

The definition of A046804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046804.P7362675821239578053

`∑{d}[A000040(n+1), #%(#%10)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046804

/-- `∑{d}[A000040(n+1), #%(#%10)]` -/
def P7362675821239578053.Spec : Prop :=
  ∀ n, (P7362675821239578053.a n : ℤ) = A046804 (n + 1)

theorem P7362675821239578053.correct : P7362675821239578053.Spec := by
  intro n
  simp only [A046804, Nat.add_sub_cancel]

end A046804

/-! ## A046804.P14062690043281162887

`A000040(n+1)%A007652(n+1)`
-/

namespace A046804.P14062690043281162887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A007652 (n + 1))

end

end A046804.P14062690043281162887

namespace A046804

/-- `A000040(n+1)%A007652(n+1)` -/
def P14062690043281162887.Spec : Prop :=
  ∀ n, P14062690043281162887.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P13479544617917438317

`A092759(n+1)%A007652(n+1)`
-/

namespace A046804.P13479544617917438317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) (A007652 (n + 1))

end

end A046804.P13479544617917438317

namespace A046804

/-- `A092759(n+1)%A007652(n+1)` -/
def P13479544617917438317.Spec : Prop :=
  ∀ n, P13479544617917438317.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P17840731485584552715

`A268185(n+1)%A007652(n+1)`
-/

namespace A046804.P17840731485584552715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268185 (n + 1)) (A007652 (n + 1))

end

end A046804.P17840731485584552715

namespace A046804

/-- `A268185(n+1)%A007652(n+1)` -/
def P17840731485584552715.Spec : Prop :=
  ∀ n, P17840731485584552715.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P7315698679964180280

`A274698(n+1)%A007652(n+1)`
-/

namespace A046804.P7315698679964180280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274698 (n + 1)) (A007652 (n + 1))

end

end A046804.P7315698679964180280

namespace A046804

/-- `A274698(n+1)%A007652(n+1)` -/
def P7315698679964180280.Spec : Prop :=
  ∀ n, P7315698679964180280.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P8877618057608254217

`Δ[A007504(n)]%(5-A277097(n+1))`
-/

namespace A046804.P8877618057608254217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (5 - A277097 (n + 1))

end

end A046804.P8877618057608254217

namespace A046804

/-- `Δ[A007504(n)]%(5-A277097(n+1))` -/
def P8877618057608254217.Spec : Prop :=
  ∀ n, P8877618057608254217.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P12231767344054116684

`(A006093(n+1)+1)%A007652(n+1)`
-/

namespace A046804.P12231767344054116684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (A007652 (n + 1))

end

end A046804.P12231767344054116684

namespace A046804

/-- `(A006093(n+1)+1)%A007652(n+1)` -/
def P12231767344054116684.Spec : Prop :=
  ∀ n, P12231767344054116684.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P12854195788542779822

`(A040976(n+1)+2)%A007652(n+1)`
-/

namespace A046804.P12854195788542779822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) (A007652 (n + 1))

end

end A046804.P12854195788542779822

namespace A046804

/-- `(A040976(n+1)+2)%A007652(n+1)` -/
def P12854195788542779822.Spec : Prop :=
  ∀ n, P12854195788542779822.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P14047126940539643386

`A008578(n+2)%A007652(n+1)`
-/

namespace A046804.P14047126940539643386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A007652 (n + 1))

end

end A046804.P14047126940539643386

namespace A046804

/-- `A008578(n+2)%A007652(n+1)` -/
def P14047126940539643386.Spec : Prop :=
  ∀ n, P14047126940539643386.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P6796110586907074086

`record[A014963(n+2)]%A010879(A000040(n+1))`
-/

namespace A046804.P6796110586907074086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A010879 (A000040 (n + 1)).toNat)

end

end A046804.P6796110586907074086

namespace A046804

/-- `record[A014963(n+2)]%A010879(A000040(n+1))` -/
def P6796110586907074086.Spec : Prop :=
  ∀ n, P6796110586907074086.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P11099196242067132419

`(A039696(p?[A039698(n+1)])-1)%A007652(n+1)`
-/

namespace A046804.P11099196242067132419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039696 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1) (A007652 (n + 1))

end

end A046804.P11099196242067132419

namespace A046804

/-- `(A039696(p?[A039698(n+1)])-1)%A007652(n+1)` -/
def P11099196242067132419.Spec : Prop :=
  ∀ n, P11099196242067132419.a n = A046804 (n + 1)

end A046804

/-! ## A046804.P4878263981480337528

`A101257(A063482(n+1))`
-/

namespace A046804.P4878263981480337528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101257 (A063482 (n + 1)).toNat

end

end A046804.P4878263981480337528

namespace A046804

/-- `A101257(A063482(n+1))` -/
def P4878263981480337528.Spec : Prop :=
  ∀ n, P4878263981480337528.a n = A046804 (n + 1)

end A046804

/-!
# A046805: If n=sum a_i b_i, (a_i,b_i positive integers) then a(n)=max value of min(all a_i and b_i).

The programs for A046805, there is no canonical definition to state claims against.
-/

/-! ## A046805.P818490865417887108

`lcm(A033676(n+1), A327482(A326154(3*(n+2))))`
-/

namespace A046805.P818490865417887108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033676 (n + 1)) (A327482 (A326154 (3 * (n + 2))).toNat)

end

end A046805.P818490865417887108

/-! ## A046805.P17317383209435020103

`A000700(A360457(3*(n+1)))*A033676(n+1)`
-/

namespace A046805.P17317383209435020103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A360457 (3 * (n + 1))).toNat * A033676 (n + 1)

end

end A046805.P17317383209435020103

/-! ## A046805.P102826617970997233

`A055642(A300624(A033676(n+1))+A003415(n))`
-/

namespace A046805.P102826617970997233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A300624 (A033676 (n + 1)).toNat + A003415 n).toNat

end

end A046805.P102826617970997233

/-! ## A046805.P16925431380676734349

`A055642(A300624(A033676(n+1))+A298888(n+1))`
-/

namespace A046805.P16925431380676734349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A300624 (A033676 (n + 1)).toNat + A298888 (n + 1)).toNat

end

end A046805.P16925431380676734349

/-! ## A046805.P16859114325857408431

`A055642(A005408(A068509(n+1)^A033676(n+1)))`
-/

namespace A046805.P16859114325857408431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A005408 (SequenceMachineLib.roundAway ((A068509 (n + 1) : ℚ) ^ (A033676 (n + 1) : ℤ))).toNat).toNat

end

end A046805.P16859114325857408431

/-!
# A046806: Largest number m with A046805(m) = n.

The programs for A046806, there is no canonical definition to state claims against.
-/

/-! ## A046806.P6587893198957129545

`A253898(A301077(n+1))`
-/

namespace A046806.P6587893198957129545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253898 (A301077 (n + 1)).toNat

end

end A046806.P6587893198957129545

/-!
# A046807: Palindromes in factorial base.

The programs for A046807, there is no canonical definition to state claims against.
-/

/-! ## A046807.P2088684983358665934

`eq[0, A261424(A007623(n))]`
-/

namespace A046807.P2088684983358665934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A007623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046807.P2088684983358665934

/-! ## A046807.P7969676419655932340

`eq[0, A055945(A277012(n))]`
-/

namespace A046807.P7969676419655932340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046807.P7969676419655932340

/-! ## A046807.P3256065696993607392

`eq[A080300(n), A175919(A277012(n))]`
-/

namespace A046807.P3256065696993607392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046807.P3256065696993607392

/-! ## A046807.P3982738792322180784

`lt[A175919(A277012(n)), A035214(n)]`
-/

namespace A046807.P3982738792322180784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A277012 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046807.P3982738792322180784

/-! ## A046807.P11363566382674431528

`eq[A008683(48*(n+1)), A175919(A277012(n))]`
-/

namespace A046807.P11363566382674431528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (48 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046807.P11363566382674431528

/-!
# A046808: a(n) is the least integer greater than a(n-1) such that a(n-1)*2^a(n) + 1 is prime, a(1) = 1.

The programs for A046808, there is no canonical definition to state claims against.
-/

/-! ## A046808.P503903207489637850

`eq[A051291(A366766(n+1)), A273568(n)]`
-/

namespace A046808.P503903207489637850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (A366766 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046808.P503903207489637850

/-! ## A046808.P7143203283044705953

`eq[A068307(2*(n+2)), A068319(A068348(n+2))]`
-/

namespace A046808.P7143203283044705953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068319 (A068348 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046808.P7143203283044705953

/-!
# A046810: Number of anagrams of n that are primes.

The programs for A046810, there is no canonical definition to state claims against.
-/

/-! ## A046810.P5995979156193525618

`C(A055098(n+1), A326968(A086150(n+1)))`
-/

namespace A046810.P5995979156193525618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055098 (n + 1)).toNat (A326968 (A086150 (n + 1)).toNat).toNat

end

end A046810.P5995979156193525618

/-! ## A046810.P1705453366767892839

`and(A039999(n+1), A256824(n+1))`
-/

namespace A046810.P1705453366767892839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039999 (n + 1)) (A256824 (n + 1))

end

end A046810.P1705453366767892839

/-! ## A046810.P5615098096366986766

`and(A256824(n+1), A262988(n+1))`
-/

namespace A046810.P5615098096366986766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256824 (n + 1)) (A262988 (n + 1))

end

end A046810.P5615098096366986766

/-! ## A046810.P5543209044192407943

`and(A039999(n+1), A118762(A007947(n+1)))`
-/

namespace A046810.P5543209044192407943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039999 (n + 1)) (A118762 (A007947 (n + 1)).toNat)

end

end A046810.P5543209044192407943

/-! ## A046810.P15213216037617306168

`and(A039999(n+1), A118762(A019554(n+1)))`
-/

namespace A046810.P15213216037617306168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039999 (n + 1)) (A118762 (A019554 (n + 1)).toNat)

end

end A046810.P15213216037617306168

/-! ## A046810.P11864350683779006199

`and(A039999(n+1), A118762(A052410(n+1)))`
-/

namespace A046810.P11864350683779006199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039999 (n + 1)) (A118762 (A052410 (n + 1)).toNat)

end

end A046810.P11864350683779006199

/-! ## A046810.P6458321656136789624

`and(A118762(A007947(n+1)), A262988(n+1))`
-/

namespace A046810.P6458321656136789624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118762 (A007947 (n + 1)).toNat) (A262988 (n + 1))

end

end A046810.P6458321656136789624

/-! ## A046810.P12422604084364925762

`and(A118762(A052410(n+1)), A262988(n+1))`
-/

namespace A046810.P12422604084364925762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118762 (A052410 (n + 1)).toNat) (A262988 (n + 1))

end

end A046810.P12422604084364925762

/-! ## A046810.P7637064354728366519

`A039999(n+1)*A118626(n*A118626(n+2)+1)`
-/

namespace A046810.P7637064354728366519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1) * A118626 ((n : ℤ) * A118626 (n + 2) + 1).toNat

end

end A046810.P7637064354728366519

/-! ## A046810.P15107460762288114643

`and(A039999(n+1), A118762(n+1))`
-/

namespace A046810.P15107460762288114643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039999 (n + 1)) (A118762 (n + 1))

end

end A046810.P15107460762288114643

/-!
# A046811: Numbers (with nonzero digits only) where A046810 increases.

The programs for A046811, there is no canonical definition to state claims against.
-/

/-! ## A046811.P9716045209411853314

`A046813(A046812(n+1))`
-/

namespace A046811.P9716045209411853314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046813 (A046812 (n + 1)).toNat

end

end A046811.P9716045209411853314

/-! ## A046811.P9345756148192711831

`A046888(A056804(n+1))`
-/

namespace A046811.P9345756148192711831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046888 (A056804 (n + 1)).toNat

end

end A046811.P9345756148192711831

/-! ## A046811.P7608250730067032185

`record[A004719(A046888(n+1))]`
-/

namespace A046811.P7608250730067032185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A046888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046811.P7608250730067032185

/-!
# A046813: Smallest number m with nonzero digits such that A046810(m)=n.

The programs for A046813, there is no canonical definition to state claims against.
-/

/-! ## A046813.P18178277776642968506

`A184955(3*n)+A046811(n+1)`
-/

namespace A046813.P18178277776642968506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (3 * n) + A046811 (n + 1)

end

end A046813.P18178277776642968506

/-!
# A046814: Row sums of triangle A046527.

The programs for A046814, the canonical program `A046814.P8865889614070120161` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046814 has offset 0).

The definition of A046814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046814.P8865889614070120161

`(9*n-1)*a(n-1)/(n+1)-10*(2*n-3)*a(n-2)/(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046814

/-- `(9*n-1)*a(n-1)/(n+1)-10*(2*n-3)*a(n-2)/(n+1)` -/
def P8865889614070120161.Spec : Prop :=
  ∀ n, P8865889614070120161.a n = (A046814 n : ℚ)

end A046814

/-! ## A046814.P3636399386478952193

`5*a(n-1)-A007054(n-1)` with `a(0)=1`
-/

namespace A046814.P3636399386478952193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A007054 (n - 1)

end

end A046814.P3636399386478952193

namespace A046814

/-- `5*a(n-1)-A007054(n-1)` -/
def P3636399386478952193.Spec : Prop :=
  ∀ n, P3636399386478952193.a n = A046814 n

end A046814

/-! ## A046814.P17641423078877009086

`2*A046748(n)-A046885(n+1)`
-/

namespace A046814.P17641423078877009086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046748 n - A046885 (n + 1)

end

end A046814.P17641423078877009086

namespace A046814

/-- `2*A046748(n)-A046885(n+1)` -/
def P17641423078877009086.Spec : Prop :=
  ∀ n, P17641423078877009086.a n = A046814 n

end A046814

/-! ## A046814.P7850037674742193261

`A281861(2*n)+A000108(n)`
-/

namespace A046814.P7850037674742193261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281861 (2 * n) + A000108 n

end

end A046814.P7850037674742193261

namespace A046814

/-- `A281861(2*n)+A000108(n)` -/
def P7850037674742193261.Spec : Prop :=
  ∀ n, P7850037674742193261.a n = A046814 n

end A046814

/-! ## A046814.P9180830769435737414

`A281861(2*n)+A089408(2*n+1)`
-/

namespace A046814.P9180830769435737414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281861 (2 * n) + A089408 (2 * n + 1)

end

end A046814.P9180830769435737414

namespace A046814

/-- `A281861(2*n)+A089408(2*n+1)` -/
def P9180830769435737414.Spec : Prop :=
  ∀ n, P9180830769435737414.a n = A046814 n

end A046814

/-!
# A046815: Smallest number which can be written as the sum of distinct Fibonacci numbers in n ways and such that the Zeckendorf representation of the number uses only even-subscripted Fibonacci numbers.

The programs for A046815, there is no canonical definition to state claims against.
-/

/-! ## A046815.P1673958510492148646

`A034690(A032188(n+1)+n)`
-/

namespace A046815.P1673958510492148646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (A032188 (n + 1) + (n : ℤ)).toNat

end

end A046815.P1673958510492148646

/-!
# A046816: Pascal's tetrahedron: entries in 3-dimensional version of Pascal triangle, or trinomial coefficients.

The programs for A046816, there is no canonical definition to state claims against.
-/

/-! ## A046816.P8336122166523246681

`A261356(n)/A000079(A056558(n))`
-/

namespace A046816.P8336122166523246681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261356 n : ℚ) / (A000079 (A056558 n).toNat : ℚ)

end

end A046816.P8336122166523246681

/-! ## A046816.P13656015897308290848

`A261357(n)/A000079(A056557(n))`
-/

namespace A046816.P13656015897308290848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261357 n : ℚ) / (A000079 (A056557 n).toNat : ℚ)

end

end A046816.P13656015897308290848

/-! ## A046816.P13562047025776335172

`A140531(A274079(n+1))*A261356(n)/A000079(A056557(n))`
-/

namespace A046816.P13562047025776335172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140531 (A274079 (n + 1)).toNat * A261356 n : ℚ) / (A000079 (A056557 n).toNat : ℚ)

end

end A046816.P13562047025776335172

/-! ## A046816.P1616483616262405822

`A261356(n)/A000079(Δ[A123575(n)])`
-/

namespace A046816.P1616483616262405822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261356 n : ℚ) / (A000079 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A046816.P1616483616262405822

/-! ## A046816.P14229418402412367008

`A130321(A332662(2*n))*A261356(n)/A000079(A056557(n))`
-/

namespace A046816.P14229418402412367008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 (A332662 (2 * n)).toNat * A261356 n : ℚ) / (A000079 (A056557 n).toNat : ℚ)

end

end A046816.P14229418402412367008

/-! ## A046816.P18209628266562617187

`A261356(n)/A006519(A014311(n+1))`
-/

namespace A046816.P18209628266562617187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261356 n : ℚ) / (A006519 (A014311 (n + 1)).toNat : ℚ)

end

end A046816.P18209628266562617187

/-! ## A046816.P7163268975226464883

`A261356(n)/A006519(A173589(n+1))`
-/

namespace A046816.P7163268975226464883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261356 n : ℚ) / (A006519 (A173589 (n + 1)).toNat : ℚ)

end

end A046816.P7163268975226464883

/-! ## A046816.P14462098484775070231

`A189225(eq[0, A127324(n)])`
-/

namespace A046816.P14462098484775070231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046816.P14462098484775070231

/-! ## A046816.P1357785402964049307

`A189225(A123575(n)+n)`
-/

namespace A046816.P1357785402964049307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189225 (A123575 n + (n : ℤ)).toNat

end

end A046816.P1357785402964049307

/-! ## A046816.P10785505373492599382

`A189225(∑[A056558(n)]+n)`
-/

namespace A046816.P10785505373492599382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189225 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A046816.P10785505373492599382

/-!
# A046817: Triangle of generalized Stirling numbers of 2nd kind.

The programs for A046817, there is no canonical definition to state claims against.
-/

/-! ## A046817.P11729052676283517794

`A039810(A038722(n+1))`
-/

namespace A046817.P11729052676283517794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A038722 (n + 1)).toNat

end

end A046817.P11729052676283517794

/-! ## A046817.P1590320477897478179

`A039810(A061579(n)+1)`
-/

namespace A046817.P1590320477897478179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A061579 n + 1).toNat

end

end A046817.P1590320477897478179

/-! ## A046817.P18351934690064553247

`A039810(A093995(n+1)-n)`
-/

namespace A046817.P18351934690064553247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A046817.P18351934690064553247

/-! ## A046817.P15269981570346410124

`A039810(A002024(n+1)²-n)`
-/

namespace A046817.P15269981570346410124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A046817.P15269981570346410124

/-! ## A046817.P7005022200044659364

`A039810(A123578(n+1)²-n)`
-/

namespace A046817.P7005022200044659364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A123578 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A046817.P7005022200044659364

/-! ## A046817.P1476682448370097774

`A130191(A038722(n+1)+A002024(n+1))`
-/

namespace A046817.P1476682448370097774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A046817.P1476682448370097774

/-! ## A046817.P14817492586560161065

`A039810(A123578(n+1)*A123578(n+1)-n)`
-/

namespace A046817.P14817492586560161065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (A123578 (n + 1) * A123578 (n + 1) - (n : ℤ)).toNat

end

end A046817.P14817492586560161065

/-!
# A046818: Number of 1's in binary expansion of 3n+1.

The programs for A046818, the canonical program `A046818.P4833358550115723064` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046818 has offset 0).

The definition of A046818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046818.P8269175207539913262

`A240883(n)+1`
-/

namespace A046818.P8269175207539913262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 n + 1

end

end A046818.P8269175207539913262

namespace A046818

/-- `A240883(n)+1` -/
def P8269175207539913262.Spec : Prop :=
  ∀ n, P8269175207539913262.a n = A046818 n

theorem P8269175207539913262.correct : P8269175207539913262.Spec := by
  intro n
  simp only [A046818, Nat.add_sub_cancel, A046818.P8269175207539913262.a, A046818.P4833358550115723064.a, A000120, A000120.P2816527436160941581.a, A240883, A240883.P5378419761383427474.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046818

/-! ## A046818.P4833358550115723064

`A000120(3*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046818

/-- `A000120(3*n+1)` -/
def P4833358550115723064.Spec : Prop :=
  ∀ n, P4833358550115723064.a n = A046818 n

theorem P4833358550115723064.correct : P4833358550115723064.Spec := by
  intro n
  simp only [A046818]

end A046818

/-! ## A046818.P12299227554494297175

`log2(A351864(n))+1`
-/

namespace A046818.P12299227554494297175
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A351864 n : ℝ) + 1

end

end A046818.P12299227554494297175

namespace A046818

/-- `log2(A351864(n))+1` -/
def P12299227554494297175.Spec : Prop :=
  ∀ n, P12299227554494297175.a n = (A046818 n : ℝ)

end A046818

/-! ## A046818.P1630333814676454518

`log2(A001316(3*n+1))`
-/

namespace A046818.P1630333814676454518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (3 * n + 1) : ℝ)

end

end A046818.P1630333814676454518

namespace A046818

/-- `log2(A001316(3*n+1))` -/
def P1630333814676454518.Spec : Prop :=
  ∀ n, P1630333814676454518.a n = (A046818 n : ℝ)

end A046818

/-! ## A046818.P8668049433962138048

`A005496(A240883(n))`
-/

namespace A046818.P8668049433962138048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A240883 n).toNat

end

end A046818.P8668049433962138048

namespace A046818

/-- `A005496(A240883(n))` -/
def P8668049433962138048.Spec : Prop :=
  ∀ n, P8668049433962138048.a n = A046818 n

end A046818

/-! ## A046818.P464858073531774363

`A000005(A351864(n))`
-/

namespace A046818.P464858073531774363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A351864 n).toNat

end

end A046818.P464858073531774363

namespace A046818

/-- `A000005(A351864(n))` -/
def P464858073531774363.Spec : Prop :=
  ∀ n, P464858073531774363.a n = A046818 n

end A046818

/-! ## A046818.P3632304628196835375

`A000523(2*A351864(n))`
-/

namespace A046818.P3632304628196835375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A351864 n).toNat

end

end A046818.P3632304628196835375

namespace A046818

/-- `A000523(2*A351864(n))` -/
def P3632304628196835375.Spec : Prop :=
  ∀ n, P3632304628196835375.a n = A046818 n

end A046818

/-! ## A046818.P3785936938743283095

`A000523(A001316(3*n+1)+1)`
-/

namespace A046818.P3785936938743283095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 (3 * n + 1) + 1).toNat

end

end A046818.P3785936938743283095

namespace A046818

/-- `A000523(A001316(3*n+1)+1)` -/
def P3785936938743283095.Spec : Prop :=
  ∀ n, P3785936938743283095.a n = A046818 n

end A046818

/-! ## A046818.P1330483164799146250

`A064894(A001316(3*n+1)+1)`
-/

namespace A046818.P1330483164799146250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A001316 (3 * n + 1) + 1).toNat

end

end A046818.P1330483164799146250

namespace A046818

/-- `A064894(A001316(3*n+1)+1)` -/
def P1330483164799146250.Spec : Prop :=
  ∀ n, P1330483164799146250.a n = A046818 n

end A046818

/-! ## A046818.P964765843698416694

`A002487(A001316(3*n+1)+2)`
-/

namespace A046818.P964765843698416694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A001316 (3 * n + 1) + 2).toNat

end

end A046818.P964765843698416694

namespace A046818

/-- `A002487(A001316(3*n+1)+2)` -/
def P964765843698416694.Spec : Prop :=
  ∀ n, P964765843698416694.a n = A046818 n

end A046818

/-! ## A046818.P18143607898296438625

`A001511(A001316(3*n+1)/2)`
-/

namespace A046818.P18143607898296438625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A001316 (3 * n + 1) : ℚ) / 2)).toNat

end

end A046818.P18143607898296438625

namespace A046818

/-- `A001511(A001316(3*n+1)/2)` -/
def P18143607898296438625.Spec : Prop :=
  ∀ n, P18143607898296438625.a n = A046818 n

end A046818

/-! ## A046818.P6980593618537818277

`∑{d}[A001316(3*n+1), A059841(#)]`
-/

namespace A046818.P6980593618537818277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 d

end

end A046818.P6980593618537818277

namespace A046818

/-- `∑{d}[A001316(3*n+1), A059841(#)]` -/
def P6980593618537818277.Spec : Prop :=
  ∀ n, P6980593618537818277.a n = A046818 n

end A046818

/-! ## A046818.P6502079038712681091

`2*n+1-A005187(A007494(n))+n`
-/

namespace A046818.P6502079038712681091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A005187 (A007494 n).toNat + (n : ℤ)

end

end A046818.P6502079038712681091

namespace A046818

/-- `2*n+1-A005187(A007494(n))+n` -/
def P6502079038712681091.Spec : Prop :=
  ∀ n, P6502079038712681091.a n = A046818 n

end A046818

/-! ## A046818.P11893656436510479364

`A046819(2*n)`
-/

namespace A046818.P11893656436510479364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046819 (2 * n)

end

end A046818.P11893656436510479364

namespace A046818

/-- `A046819(2*n)` -/
def P11893656436510479364.Spec : Prop :=
  ∀ n, P11893656436510479364.a n = A046818 n

end A046818

/-! ## A046818.P15271148465193301361

`A036555(Δ[n²])-1`
-/

namespace A046818.P15271148465193301361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A046818.P15271148465193301361

namespace A046818

/-- `A036555(Δ[n²])-1` -/
def P15271148465193301361.Spec : Prop :=
  ∀ n, P15271148465193301361.a n = A046818 n

end A046818

/-! ## A046818.P3271319778957053644

`log2(A134660(2*n+1))-1`
-/

namespace A046818.P3271319778957053644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A134660 (2 * n + 1) : ℝ) - 1

end

end A046818.P3271319778957053644

namespace A046818

/-- `log2(A134660(2*n+1))-1` -/
def P3271319778957053644.Spec : Prop :=
  ∀ n, P3271319778957053644.a n = (A046818 n : ℝ)

end A046818

/-! ## A046818.P18419431736447267293

`∑{digits}[1-A190944(2*n+1), #]`
-/

namespace A046818.P18419431736447267293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A190944 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A046818.P18419431736447267293

namespace A046818

/-- `∑{digits}[1-A190944(2*n+1), #]` -/
def P18419431736447267293.Spec : Prop :=
  ∀ n, (P18419431736447267293.a n : ℤ) = A046818 n

end A046818

/-! ## A046818.P15655901190672449613

`A001222(A134660(2*n+1)/2)`
-/

namespace A046818.P15655901190672449613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A134660 (2 * n + 1) : ℚ) / 2)).toNat

end

end A046818.P15655901190672449613

namespace A046818

/-- `A001222(A134660(2*n+1)/2)` -/
def P15655901190672449613.Spec : Prop :=
  ∀ n, P15655901190672449613.a n = A046818 n

end A046818

/-! ## A046818.P16935215495544395389

`A001222(A000010(A134660(2*n+1)))`
-/

namespace A046818.P16935215495544395389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (A134660 (2 * n + 1)).toNat).toNat

end

end A046818.P16935215495544395389

namespace A046818

/-- `A001222(A000010(A134660(2*n+1)))` -/
def P16935215495544395389.Spec : Prop :=
  ∀ n, P16935215495544395389.a n = A046818 n

end A046818

/-! ## A046818.P2020079524412732627

`A061338(A328034(2*n+1))`
-/

namespace A046818.P2020079524412732627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (A328034 (2 * n + 1)).toNat

end

end A046818.P2020079524412732627

namespace A046818

/-- `A061338(A328034(2*n+1))` -/
def P2020079524412732627.Spec : Prop :=
  ∀ n, P2020079524412732627.a n = A046818 n

end A046818

/-!
# A046819: Number of 1's in binary expansion of 3n+2.

The programs for A046819, the canonical program `A046819.P1212913902005017791` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046819 has offset 0).

The definition of A046819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046819.P18432122346632113884

`log2(A001316(3*n+2))`
-/

namespace A046819.P18432122346632113884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (3 * n + 2) : ℝ)

end

end A046819.P18432122346632113884

namespace A046819

/-- `log2(A001316(3*n+2))` -/
def P18432122346632113884.Spec : Prop :=
  ∀ n, P18432122346632113884.a n = (A046819 n : ℝ)

end A046819

/-! ## A046819.P4202559158017943330

`A000005(A001316(3*n+2)/2)`
-/

namespace A046819.P4202559158017943330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001316 (3 * n + 2) : ℚ) / 2)).toNat

end

end A046819.P4202559158017943330

namespace A046819

/-- `A000005(A001316(3*n+2)/2)` -/
def P4202559158017943330.Spec : Prop :=
  ∀ n, P4202559158017943330.a n = A046819 n

end A046819

/-! ## A046819.P1212913902005017791

`A001511(A001316(3*n+2)/2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046819

/-- `A001511(A001316(3*n+2)/2)` -/
def P1212913902005017791.Spec : Prop :=
  ∀ n, P1212913902005017791.a n = A046819 n

theorem P1212913902005017791.correct : P1212913902005017791.Spec := by
  intro n
  simp only [A046819]

end A046819

/-! ## A046819.P14569676102445947767

`A005361(3*A001316(3*n+2))`
-/

namespace A046819.P14569676102445947767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (3 * A001316 (3 * n + 2)).toNat

end

end A046819.P14569676102445947767

namespace A046819

/-- `A005361(3*A001316(3*n+2))` -/
def P14569676102445947767.Spec : Prop :=
  ∀ n, P14569676102445947767.a n = A046819 n

end A046819

/-! ## A046819.P17979569057319009075

`A029931(A001316(3*n+2)/2)`
-/

namespace A046819.P17979569057319009075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((A001316 (3 * n + 2) : ℚ) / 2)).toNat

end

end A046819.P17979569057319009075

namespace A046819

/-- `A029931(A001316(3*n+2)/2)` -/
def P17979569057319009075.Spec : Prop :=
  ∀ n, P17979569057319009075.a n = A046819 n

end A046819

/-! ## A046819.P2986738048868497470

`A051903(3*A001316(3*n+2))`
-/

namespace A046819.P2986738048868497470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (3 * A001316 (3 * n + 2)).toNat

end

end A046819.P2986738048868497470

namespace A046819

/-- `A051903(3*A001316(3*n+2))` -/
def P2986738048868497470.Spec : Prop :=
  ∀ n, P2986738048868497470.a n = A046819 n

end A046819

/-! ## A046819.P6281555476751477537

`A000027(val(A001316(3*n+2), 2))`
-/

namespace A046819.P6281555476751477537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.valuation (A001316 (3 * n + 2)).toNat 2)

end

end A046819.P6281555476751477537

namespace A046819

/-- `A000027(val(A001316(3*n+2), 2))` -/
def P6281555476751477537.Spec : Prop :=
  ∀ n, P6281555476751477537.a n = A046819 n

end A046819

/-! ## A046819.P1137309894380040864

`A001222(A001316(2*(n+1)+n))`
-/

namespace A046819.P1137309894380040864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (2 * (n + 1) + n)).toNat

end

end A046819.P1137309894380040864

namespace A046819

/-- `A001222(A001316(2*(n+1)+n))` -/
def P1137309894380040864.Spec : Prop :=
  ∀ n, P1137309894380040864.a n = A046819 n

end A046819

/-! ## A046819.P14614558338298021873

`A033265(A001316(2*n+n+2))`
-/

namespace A046819.P14614558338298021873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A001316 (2 * n + (n + 2))).toNat

end

end A046819.P14614558338298021873

namespace A046819

/-- `A033265(A001316(2*n+n+2))` -/
def P14614558338298021873.Spec : Prop :=
  ∀ n, P14614558338298021873.a n = A046819 n

end A046819

/-! ## A046819.P3811693259475208139

`A000005(A001316(6*n+5))-2`
-/

namespace A046819.P3811693259475208139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 (6 * n + 5)).toNat - 2

end

end A046819.P3811693259475208139

namespace A046819

/-- `A000005(A001316(6*n+5))-2` -/
def P3811693259475208139.Spec : Prop :=
  ∀ n, P3811693259475208139.a n = A046819 n

end A046819

/-! ## A046819.P15995404436010143597

`A000120(A173732(n))+1`
-/

namespace A046819.P15995404436010143597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A173732 n).toNat + 1

end

end A046819.P15995404436010143597

namespace A046819

/-- `A000120(A173732(n))+1` -/
def P15995404436010143597.Spec : Prop :=
  ∀ n, P15995404436010143597.a n = A046819 n

end A046819

/-! ## A046819.P2825774073670070982

`A000120(A109168(n+1)+n)`
-/

namespace A046819.P2825774073670070982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A109168 (n + 1) + (n : ℤ)).toNat

end

end A046819.P2825774073670070982

namespace A046819

/-- `A000120(A109168(n+1)+n)` -/
def P2825774073670070982.Spec : Prop :=
  ∀ n, P2825774073670070982.a n = A046819 n

end A046819

/-! ## A046819.P11492926951910631751

`A000120(A140472(n+1)+n)`
-/

namespace A046819.P11492926951910631751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A140472 (n + 1) + (n : ℤ)).toNat

end

end A046819.P11492926951910631751

namespace A046819

/-- `A000120(A140472(n+1)+n)` -/
def P11492926951910631751.Spec : Prop :=
  ∀ n, P11492926951910631751.a n = A046819 n

end A046819

/-! ## A046819.P18257756585132170617

`∑{digits}[A007088(6*n+4), #]`
-/

namespace A046819.P18257756585132170617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (6 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A046819.P18257756585132170617

namespace A046819

/-- `∑{digits}[A007088(6*n+4), #]` -/
def P18257756585132170617.Spec : Prop :=
  ∀ n, (P18257756585132170617.a n : ℤ) = A046819 n

end A046819

/-! ## A046819.P6831466327556020192

`A046818(A047444(n+1))`
-/

namespace A046819.P6831466327556020192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 (A047444 (n + 1)).toNat

end

end A046819.P6831466327556020192

namespace A046819

/-- `A046818(A047444(n+1))` -/
def P6831466327556020192.Spec : Prop :=
  ∀ n, P6831466327556020192.a n = A046819 n

end A046819

/-! ## A046819.P11006561843836901154

`A046818(A047485(n+1))`
-/

namespace A046819.P11006561843836901154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 (A047485 (n + 1)).toNat

end

end A046819.P11006561843836901154

namespace A046819

/-- `A046818(A047485(n+1))` -/
def P11006561843836901154.Spec : Prop :=
  ∀ n, P11006561843836901154.a n = A046819 n

end A046819

/-! ## A046819.P13066126652796413691

`A046818(Δ[n²])`
-/

namespace A046819.P13066126652796413691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046819.P13066126652796413691

namespace A046819

/-- `A046818(Δ[n²])` -/
def P13066126652796413691.Spec : Prop :=
  ∀ n, P13066126652796413691.a n = A046819 n

end A046819

/-! ## A046819.P10742227499393452108

`A240883(Δ[n²])+1`
-/

namespace A046819.P10742227499393452108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A046819.P10742227499393452108

namespace A046819

/-- `A240883(Δ[n²])+1` -/
def P10742227499393452108.Spec : Prop :=
  ∀ n, P10742227499393452108.a n = A046819 n

end A046819

/-! ## A046819.P17553287395722454316

`log2(A351864(2*n+1))+1`
-/

namespace A046819.P17553287395722454316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A351864 (2 * n + 1) : ℝ) + 1

end

end A046819.P17553287395722454316

namespace A046819

/-- `log2(A351864(2*n+1))+1` -/
def P17553287395722454316.Spec : Prop :=
  ∀ n, P17553287395722454316.a n = (A046819 n : ℝ)

end A046819

/-! ## A046819.P3301555492443586037

`A005496(A240883(2*n+1))`
-/

namespace A046819.P3301555492443586037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A240883 (2 * n + 1)).toNat

end

end A046819.P3301555492443586037

namespace A046819

/-- `A005496(A240883(2*n+1))` -/
def P3301555492443586037.Spec : Prop :=
  ∀ n, P3301555492443586037.a n = A046819 n

end A046819

/-!
# A046820: Number of 1's in binary expansion of 5n.

The programs for A046820, the canonical program `A046820.P8521944609786113338` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046820 has offset 0).

The definition of A046820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046820.P8521944609786113338

`A000120(5*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046820

/-- `A000120(5*n)` -/
def P8521944609786113338.Spec : Prop :=
  ∀ n, P8521944609786113338.a n = A046820 n

theorem P8521944609786113338.correct : P8521944609786113338.Spec := by
  intro n
  simp only [A046820]

end A046820

/-! ## A046820.P13994463194564041279

`log2(A001316(5*n))`
-/

namespace A046820.P13994463194564041279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (5 * n) : ℝ)

end

end A046820.P13994463194564041279

namespace A046820

/-- `log2(A001316(5*n))` -/
def P13994463194564041279.Spec : Prop :=
  ∀ n, P13994463194564041279.a n = (A046820 n : ℝ)

end A046820

/-! ## A046820.P4039498252194984991

`A001222(A001316(6*n-n))`
-/

namespace A046820.P4039498252194984991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (6 * n - n)).toNat

end

end A046820.P4039498252194984991

namespace A046820

/-- `A001222(A001316(6*n-n))` -/
def P4039498252194984991.Spec : Prop :=
  ∀ n, P4039498252194984991.a n = A046820 n

end A046820

/-! ## A046820.P8207449907584573687

`∑{digits}[A007088(5*n), #]`
-/

namespace A046820.P8207449907584573687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A046820.P8207449907584573687

namespace A046820

/-- `∑{digits}[A007088(5*n), #]` -/
def P8207449907584573687.Spec : Prop :=
  ∀ n, (P8207449907584573687.a n : ℤ) = A046820 n

end A046820

/-! ## A046820.P9825882030944855878

`A046821(n*A000034(n))-1`
-/

namespace A046820.P9825882030944855878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 ((n : ℤ) * A000034 n).toNat - 1

end

end A046820.P9825882030944855878

namespace A046820

/-- `A046821(n*A000034(n))-1` -/
def P9825882030944855878.Spec : Prop :=
  ∀ n, P9825882030944855878.a n = A046820 n

end A046820

/-! ## A046820.P9116853999169306973

`A046821(2*n)-1`
-/

namespace A046820.P9116853999169306973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (2 * n) - 1

end

end A046820.P9116853999169306973

namespace A046820

/-- `A046821(2*n)-1` -/
def P9116853999169306973.Spec : Prop :=
  ∀ n, P9116853999169306973.a n = A046820 n

end A046820

/-! ## A046820.P13110357680801709096

`A046823(4*n)-2`
-/

namespace A046820.P13110357680801709096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (4 * n) - 2

end

end A046820.P13110357680801709096

namespace A046820

/-- `A046823(4*n)-2` -/
def P13110357680801709096.Spec : Prop :=
  ∀ n, P13110357680801709096.a n = A046820 n

end A046820

/-! ## A046820.P15774314031142735104

`A274009(A271508(n+1))`
-/

namespace A046820.P15774314031142735104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A271508 (n + 1)).toNat

end

end A046820.P15774314031142735104

namespace A046820

/-- `A274009(A271508(n+1))` -/
def P15774314031142735104.Spec : Prop :=
  ∀ n, P15774314031142735104.a n = A046820 n

end A046820

/-! ## A046820.P17685056806283995326

`A001222(A071044(5*n))`
-/

namespace A046820.P17685056806283995326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (5 * n)).toNat

end

end A046820.P17685056806283995326

namespace A046820

/-- `A001222(A071044(5*n))` -/
def P17685056806283995326.Spec : Prop :=
  ∀ n, P17685056806283995326.a n = A046820 n

end A046820

/-! ## A046820.P16486879324570008379

`A274009(A087445(n+1)-n)`
-/

namespace A046820.P16486879324570008379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A087445 (n + 1) - (n : ℤ)).toNat

end

end A046820.P16486879324570008379

namespace A046820

/-- `A274009(A087445(n+1)-n)` -/
def P16486879324570008379.Spec : Prop :=
  ∀ n, P16486879324570008379.a n = A046820 n

end A046820

/-! ## A046820.P8251632023845042083

`A005811(A341916(5*n))`
-/

namespace A046820.P8251632023845042083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (5 * n)).toNat

end

end A046820.P8251632023845042083

namespace A046820

/-- `A005811(A341916(5*n))` -/
def P8251632023845042083.Spec : Prop :=
  ∀ n, P8251632023845042083.a n = A046820 n

end A046820

/-! ## A046820.P11644887082019231603

`A001222(A278222(5*n))`
-/

namespace A046820.P11644887082019231603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (5 * n)).toNat

end

end A046820.P11644887082019231603

namespace A046820

/-- `A001222(A278222(5*n))` -/
def P11644887082019231603.Spec : Prop :=
  ∀ n, P11644887082019231603.a n = A046820 n

end A046820

/-! ## A046820.P9284492547986543838

`A048881(10*n)`
-/

namespace A046820.P9284492547986543838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (10 * n)

end

end A046820.P9284492547986543838

namespace A046820

/-- `A048881(10*n)` -/
def P9284492547986543838.Spec : Prop :=
  ∀ n, P9284492547986543838.a n = A046820 n

end A046820

/-! ## A046820.P14029437659716555586

`A274009(A017281(n))`
-/

namespace A046820.P14029437659716555586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A017281 n).toNat

end

end A046820.P14029437659716555586

namespace A046820

/-- `A274009(A017281(n))` -/
def P14029437659716555586.Spec : Prop :=
  ∀ n, P14029437659716555586.a n = A046820 n

end A046820

/-! ## A046820.P11309964935681202550

`A274009(A017305(n)-2)`
-/

namespace A046820.P11309964935681202550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A017305 n - 2).toNat

end

end A046820.P11309964935681202550

namespace A046820

/-- `A274009(A017305(n)-2)` -/
def P11309964935681202550.Spec : Prop :=
  ∀ n, P11309964935681202550.a n = A046820 n

end A046820

/-! ## A046820.P8453716880854979892

`A000120(A008592(n)+1)-1`
-/

namespace A046820.P8453716880854979892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008592 n + 1).toNat - 1

end

end A046820.P8453716880854979892

namespace A046820

/-- `A000120(A008592(n)+1)-1` -/
def P8453716880854979892.Spec : Prop :=
  ∀ n, P8453716880854979892.a n = A046820 n

end A046820

/-! ## A046820.P9559440161616610213

`A274009(A273669(2*n+1)-1)`
-/

namespace A046820.P9559440161616610213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A273669 (2 * n + 1) - 1).toNat

end

end A046820.P9559440161616610213

namespace A046820

/-- `A274009(A273669(2*n+1)-1)` -/
def P9559440161616610213.Spec : Prop :=
  ∀ n, P9559440161616610213.a n = A046820 n

end A046820

/-! ## A046820.P16249720914245548576

`A151902(A008597(n))`
-/

namespace A046820.P16249720914245548576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 (A008597 n).toNat

end

end A046820.P16249720914245548576

namespace A046820

/-- `A151902(A008597(n))` -/
def P16249720914245548576.Spec : Prop :=
  ∀ n, P16249720914245548576.a n = A046820 n

end A046820

/-! ## A046820.P17873314850329813489

`A151902(A128470(n))`
-/

namespace A046820.P17873314850329813489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 (A128470 n).toNat

end

end A046820.P17873314850329813489

namespace A046820

/-- `A151902(A128470(n))` -/
def P17873314850329813489.Spec : Prop :=
  ∀ n, P17873314850329813489.a n = A046820 n

end A046820

/-! ## A046820.P15977908941012054818

`A151902(A249674(n))`
-/

namespace A046820.P15977908941012054818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 (A249674 n).toNat

end

end A046820.P15977908941012054818

namespace A046820

/-- `A151902(A249674(n))` -/
def P15977908941012054818.Spec : Prop :=
  ∀ n, P15977908941012054818.a n = A046820 n

end A046820

/-!
# A046821: Number of 1's in binary expansion of 5n+1.

The programs for A046821, the canonical program `A046821.P4299228859060915380` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046821 has offset 0).

The definition of A046821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046821.P4299228859060915380

`log2(A001316(5*n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046821

/-- `log2(A001316(5*n+1))` -/
def P4299228859060915380.Spec : Prop :=
  ∀ n, P4299228859060915380.a n = (A046821 n : ℝ)

end A046821

/-! ## A046821.P6411916215460262132

`A001222(A001316(4*n+n+1))`
-/

namespace A046821.P6411916215460262132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (4 * n + (n + 1))).toNat

end

end A046821.P6411916215460262132

namespace A046821

/-- `A001222(A001316(4*n+n+1))` -/
def P6411916215460262132.Spec : Prop :=
  ∀ n, P6411916215460262132.a n = A046821 n

end A046821

/-! ## A046821.P7693079410731051766

`A046822(2*n)`
-/

namespace A046821.P7693079410731051766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046822 (2 * n)

end

end A046821.P7693079410731051766

namespace A046821

/-- `A046822(2*n)` -/
def P7693079410731051766.Spec : Prop :=
  ∀ n, P7693079410731051766.a n = A046821 n

end A046821

/-! ## A046821.P693463125878405039

`A046823(2*n)-1`
-/

namespace A046821.P693463125878405039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (2 * n) - 1

end

end A046821.P693463125878405039

namespace A046821

/-- `A046823(2*n)-1` -/
def P693463125878405039.Spec : Prop :=
  ∀ n, P693463125878405039.a n = A046821 n

end A046821

/-! ## A046821.P9707562947261465308

`∑{e}[A278222(A016861(n)), #]`
-/

namespace A046821.P9707562947261465308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A016861 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A046821.P9707562947261465308

namespace A046821

/-- `∑{e}[A278222(A016861(n)), #]` -/
def P9707562947261465308.Spec : Prop :=
  ∀ n, (P9707562947261465308.a n : ℤ) = A046821 n

end A046821

/-! ## A046821.P2810455675477631015

`A046824(4*n)`
-/

namespace A046821.P2810455675477631015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046824 (4 * n)

end

end A046821.P2810455675477631015

namespace A046821

/-- `A046824(4*n)` -/
def P2810455675477631015.Spec : Prop :=
  ∀ n, P2810455675477631015.a n = A046821 n

end A046821

/-! ## A046821.P17078052373444439715

`A000005(A048896(5*n))`
-/

namespace A046821.P17078052373444439715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048896 (5 * n)).toNat

end

end A046821.P17078052373444439715

namespace A046821

/-- `A000005(A048896(5*n))` -/
def P17078052373444439715.Spec : Prop :=
  ∀ n, P17078052373444439715.a n = A046821 n

end A046821

/-! ## A046821.P8040425187896158499

`A000120(5*n+1)`
-/

namespace A046821.P8040425187896158499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n + 1)

end

end A046821.P8040425187896158499

namespace A046821

/-- `A000120(5*n+1)` -/
def P8040425187896158499.Spec : Prop :=
  ∀ n, P8040425187896158499.a n = A046821 n

end A046821

/-! ## A046821.P18013691287101884312

`A048881(5*n)+1`
-/

namespace A046821.P18013691287101884312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (5 * n) + 1

end

end A046821.P18013691287101884312

namespace A046821

/-- `A048881(5*n)+1` -/
def P18013691287101884312.Spec : Prop :=
  ∀ n, P18013691287101884312.a n = A046821 n

end A046821

/-! ## A046821.P18365591840514081797

`A274009(A273669(n+1)-2)`
-/

namespace A046821.P18365591840514081797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A273669 (n + 1) - 2).toNat

end

end A046821.P18365591840514081797

namespace A046821

/-- `A274009(A273669(n+1)-2)` -/
def P18365591840514081797.Spec : Prop :=
  ∀ n, P18365591840514081797.a n = A046821 n

end A046821

/-! ## A046821.P18293269647320649481

`A001222(A071044(5*n+1))`
-/

namespace A046821.P18293269647320649481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (5 * n + 1)).toNat

end

end A046821.P18293269647320649481

namespace A046821

/-- `A001222(A071044(5*n+1))` -/
def P18293269647320649481.Spec : Prop :=
  ∀ n, P18293269647320649481.a n = A046821 n

end A046821

/-! ## A046821.P12815058073224395321

`A080791(A054429(5*n+1))+1`
-/

namespace A046821.P12815058073224395321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A054429 (5 * n + 1)).toNat + 1

end

end A046821.P12815058073224395321

namespace A046821

/-- `A080791(A054429(5*n+1))+1` -/
def P12815058073224395321.Spec : Prop :=
  ∀ n, P12815058073224395321.a n = A046821 n

end A046821

/-! ## A046821.P7077256546196237312

`A005811(A341916(2*n+3*n+1))`
-/

namespace A046821.P7077256546196237312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (2 * n + (3 * n + 1))).toNat

end

end A046821.P7077256546196237312

namespace A046821

/-- `A005811(A341916(2*n+3*n+1))` -/
def P7077256546196237312.Spec : Prop :=
  ∀ n, P7077256546196237312.a n = A046821 n

end A046821

/-! ## A046821.P10704225165609438645

`A046823(A017077(n))`
-/

namespace A046821.P10704225165609438645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (A017077 n).toNat

end

end A046821.P10704225165609438645

namespace A046821

/-- `A046823(A017077(n))` -/
def P10704225165609438645.Spec : Prop :=
  ∀ n, P10704225165609438645.a n = A046821 n

end A046821

/-! ## A046821.P6023807472705208961

`A001222(A278222(2*n+3*n+1))`
-/

namespace A046821.P6023807472705208961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (2 * n + (3 * n + 1))).toNat

end

end A046821.P6023807472705208961

namespace A046821

/-- `A001222(A278222(2*n+3*n+1))` -/
def P6023807472705208961.Spec : Prop :=
  ∀ n, P6023807472705208961.a n = A046821 n

end A046821

/-! ## A046821.P10307859523562355021

`A274009(A017305(n))`
-/

namespace A046821.P10307859523562355021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A017305 n).toNat

end

end A046821.P10307859523562355021

namespace A046821

/-- `A274009(A017305(n))` -/
def P10307859523562355021.Spec : Prop :=
  ∀ n, P10307859523562355021.a n = A046821 n

end A046821

/-! ## A046821.P14431434327215963624

`A274009(A017281(n)+2)`
-/

namespace A046821.P14431434327215963624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A017281 n + 2).toNat

end

end A046821.P14431434327215963624

namespace A046821

/-- `A274009(A017281(n)+2)` -/
def P14431434327215963624.Spec : Prop :=
  ∀ n, P14431434327215963624.a n = A046821 n

end A046821

/-! ## A046821.P5169347403412194236

`A000120(A017293(n)+1)-1`
-/

namespace A046821.P5169347403412194236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A017293 n + 1).toNat - 1

end

end A046821.P5169347403412194236

namespace A046821

/-- `A000120(A017293(n)+1)-1` -/
def P5169347403412194236.Spec : Prop :=
  ∀ n, P5169347403412194236.a n = A046821 n

end A046821

/-! ## A046821.P4107598097777542905

`A274009(A271508(2*n+1)+2)`
-/

namespace A046821.P4107598097777542905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A271508 (2 * n + 1) + 2).toNat

end

end A046821.P4107598097777542905

namespace A046821

/-- `A274009(A271508(2*n+1)+2)` -/
def P4107598097777542905.Spec : Prop :=
  ∀ n, P4107598097777542905.a n = A046821 n

end A046821

/-! ## A046821.P11851275889590656438

`A048881(A346303(A346304(n+1))+n+1)`
-/

namespace A046821.P11851275889590656438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A346303 (A346304 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A046821.P11851275889590656438

namespace A046821

/-- `A048881(A346303(A346304(n+1))+n+1)` -/
def P11851275889590656438.Spec : Prop :=
  ∀ n, P11851275889590656438.a n = A046821 n

end A046821

/-!
# A046822: Number of 1's in binary expansion of 5n+2.

The programs for A046822, the canonical program `A046822.P3385769472462405505` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046822 has offset 0).

The definition of A046822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046822.P16795385993738676930

`log2(A001316(4*n+n+2))`
-/

namespace A046822.P16795385993738676930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (4 * n + (n + 2)) : ℝ)

end

end A046822.P16795385993738676930

namespace A046822

/-- `log2(A001316(4*n+n+2))` -/
def P16795385993738676930.Spec : Prop :=
  ∀ n, P16795385993738676930.a n = (A046822 n : ℝ)

end A046822

/-! ## A046822.P3385769472462405505

`val(A001316(A016873(n)), 2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046822

/-- `val(A001316(A016873(n)), 2)` -/
def P3385769472462405505.Spec : Prop :=
  ∀ n, (P3385769472462405505.a n : ℤ) = A046822 n

theorem P3385769472462405505.correct : P3385769472462405505.Spec := by
  intro n
  simp only [A046822]

end A046822

/-! ## A046822.P13926899817480757096

`A001222(A001316(5*n+2))`
-/

namespace A046822.P13926899817480757096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (5 * n + 2)).toNat

end

end A046822.P13926899817480757096

namespace A046822

/-- `A001222(A001316(5*n+2))` -/
def P13926899817480757096.Spec : Prop :=
  ∀ n, P13926899817480757096.a n = A046822 n

end A046822

/-! ## A046822.P691062646875410040

`A046824(2*n)`
-/

namespace A046822.P691062646875410040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046824 (2 * n)

end

end A046822.P691062646875410040

namespace A046822

/-- `A046824(2*n)` -/
def P691062646875410040.Spec : Prop :=
  ∀ n, P691062646875410040.a n = A046822 n

end A046822

/-! ## A046822.P4481439714332006787

`A046820(Δ[n²])-1`
-/

namespace A046822.P4481439714332006787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046820 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A046822.P4481439714332006787

namespace A046822

/-- `A046820(Δ[n²])-1` -/
def P4481439714332006787.Spec : Prop :=
  ∀ n, P4481439714332006787.a n = A046822 n

end A046822

/-! ## A046822.P9216488036788929085

`A046823(4*n+1)`
-/

namespace A046822.P9216488036788929085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (4 * n + 1)

end

end A046822.P9216488036788929085

namespace A046822

/-- `A046823(4*n+1)` -/
def P9216488036788929085.Spec : Prop :=
  ∀ n, P9216488036788929085.a n = A046822 n

end A046822

/-! ## A046822.P1388099865773028637

`A000120(A006370(n)+2*n+1)`
-/

namespace A046822.P1388099865773028637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006370 n + (2 * n + 1 : ℤ)).toNat

end

end A046822.P1388099865773028637

namespace A046822

/-- `A000120(A006370(n)+2*n+1)` -/
def P1388099865773028637.Spec : Prop :=
  ∀ n, P1388099865773028637.a n = A046822 n

end A046822

/-! ## A046822.P2244598787008975585

`A000120(5*n+2)`
-/

namespace A046822.P2244598787008975585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n + 2)

end

end A046822.P2244598787008975585

namespace A046822

/-- `A000120(5*n+2)` -/
def P2244598787008975585.Spec : Prop :=
  ∀ n, P2244598787008975585.a n = A046822 n

end A046822

/-! ## A046822.P98114778801286269

`5*n+2-A011371(5*n+2)`
-/

namespace A046822.P98114778801286269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) - A011371 (5 * n + 2)

end

end A046822.P98114778801286269

namespace A046822

/-- `5*n+2-A011371(5*n+2)` -/
def P98114778801286269.Spec : Prop :=
  ∀ n, P98114778801286269.a n = A046822 n

end A046822

/-! ## A046822.P15395499446764468154

`A092391(5*n+2)-(5*n+2)`
-/

namespace A046822.P15395499446764468154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (5 * n + 2) - (5 * n + 2 : ℤ)

end

end A046822.P15395499446764468154

namespace A046822

/-- `A092391(5*n+2)-(5*n+2)` -/
def P15395499446764468154.Spec : Prop :=
  ∀ n, P15395499446764468154.a n = A046822 n

end A046822

/-! ## A046822.P2077021216774326648

`A274009(A271508(n+1)+2)`
-/

namespace A046822.P2077021216774326648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A271508 (n + 1) + 2).toNat

end

end A046822.P2077021216774326648

namespace A046822

/-- `A274009(A271508(n+1)+2)` -/
def P2077021216774326648.Spec : Prop :=
  ∀ n, P2077021216774326648.a n = A046822 n

end A046822

/-! ## A046822.P11120643136319485716

`A000005(A048896(5*n+1))`
-/

namespace A046822.P11120643136319485716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048896 (5 * n + 1)).toNat

end

end A046822.P11120643136319485716

namespace A046822

/-- `A000005(A048896(5*n+1))` -/
def P11120643136319485716.Spec : Prop :=
  ∀ n, P11120643136319485716.a n = A046822 n

end A046822

/-! ## A046822.P7759112126103337332

`A001222(A071044(5*n+2))`
-/

namespace A046822.P7759112126103337332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (5 * n + 2)).toNat

end

end A046822.P7759112126103337332

namespace A046822

/-- `A001222(A071044(5*n+2))` -/
def P7759112126103337332.Spec : Prop :=
  ∀ n, P7759112126103337332.a n = A046822 n

end A046822

/-! ## A046822.P10322961858567234861

`A000120(A004767(n)+n-1)%24`
-/

namespace A046822.P10322961858567234861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A004767 n + ((n : ℤ) - 1)).toNat) 24

end

end A046822.P10322961858567234861

namespace A046822

/-- `A000120(A004767(n)+n-1)%24` -/
def P10322961858567234861.Spec : Prop :=
  ∀ n, P10322961858567234861.a n = A046822 n

end A046822

/-! ## A046822.P15608180792928076930

`A000120(A016873(n))*A177704(2*n)`
-/

namespace A046822.P15608180792928076930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A016873 n).toNat * A177704 (2 * n)

end

end A046822.P15608180792928076930

namespace A046822

/-- `A000120(A016873(n))*A177704(2*n)` -/
def P15608180792928076930.Spec : Prop :=
  ∀ n, P15608180792928076930.a n = A046822 n

end A046822

/-! ## A046822.P10064946818615912911

`A046821(A017101(n))`
-/

namespace A046822.P10064946818615912911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (A017101 n).toNat

end

end A046822.P10064946818615912911

namespace A046822

/-- `A046821(A017101(n))` -/
def P10064946818615912911.Spec : Prop :=
  ∀ n, P10064946818615912911.a n = A046822 n

end A046822

/-! ## A046822.P9280361417634339999

`A046823(A017077(n)+2)-1`
-/

namespace A046822.P9280361417634339999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (A017077 n + 2).toNat - 1

end

end A046822.P9280361417634339999

namespace A046822

/-- `A046823(A017077(n)+2)-1` -/
def P9280361417634339999.Spec : Prop :=
  ∀ n, P9280361417634339999.a n = A046822 n

end A046822

/-! ## A046822.P14253356500016468177

`A001222(A278222(5*n+2))`
-/

namespace A046822.P14253356500016468177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (5 * n + 2)).toNat

end

end A046822.P14253356500016468177

namespace A046822

/-- `A001222(A278222(5*n+2))` -/
def P14253356500016468177.Spec : Prop :=
  ∀ n, P14253356500016468177.a n = A046822 n

end A046822

/-! ## A046822.P5419517472669873722

`A274009(5*(2*n+1))`
-/

namespace A046822.P5419517472669873722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (5 * (2 * n + 1))

end

end A046822.P5419517472669873722

namespace A046822

/-- `A274009(5*(2*n+1))` -/
def P5419517472669873722.Spec : Prop :=
  ∀ n, P5419517472669873722.a n = A046822 n

end A046822

/-! ## A046822.P4449769864030971290

`val(A105321(10*n+5), 2)`
-/

namespace A046822.P4449769864030971290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105321 (10 * n + 5)).toNat 2

end

end A046822.P4449769864030971290

namespace A046822

/-- `val(A105321(10*n+5), 2)` -/
def P4449769864030971290.Spec : Prop :=
  ∀ n, (P4449769864030971290.a n : ℤ) = A046822 n

end A046822

/-!
# A046823: Number of 1's in binary expansion of 5n+3.

The programs for A046823, the canonical program `A046823.P14777892315166642419` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046823 has offset 0).

The definition of A046823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046823.P14777892315166642419

`log2(A001316(5*n+3))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046823

/-- `log2(A001316(5*n+3))` -/
def P14777892315166642419.Spec : Prop :=
  ∀ n, P14777892315166642419.a n = (A046823 n : ℝ)

end A046823

/-! ## A046823.P2164605177348265506

`A000027(∑{digits}[A007088(5*n+3), #])`
-/

namespace A046823.P2164605177348265506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A046823.P2164605177348265506

namespace A046823

/-- `A000027(∑{digits}[A007088(5*n+3), #])` -/
def P2164605177348265506.Spec : Prop :=
  ∀ n, P2164605177348265506.a n = A046823 n

end A046823

/-! ## A046823.P11558229642934405481

`∑{digits}[A007088(5*n+3), A000217(#)]`
-/

namespace A046823.P11558229642934405481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000217 x).sum

end

end A046823.P11558229642934405481

namespace A046823

/-- `∑{digits}[A007088(5*n+3), A000217(#)]` -/
def P11558229642934405481.Spec : Prop :=
  ∀ n, P11558229642934405481.a n = A046823 n

end A046823

/-! ## A046823.P4902318471532212258

`A046821(Δ[n²])`
-/

namespace A046823.P4902318471532212258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046823.P4902318471532212258

namespace A046823

/-- `A046821(Δ[n²])` -/
def P4902318471532212258.Spec : Prop :=
  ∀ n, P4902318471532212258.a n = A046823 n

end A046823

/-! ## A046823.P16530207895641637298

`A046822(Δ[n²])-1`
-/

namespace A046823.P16530207895641637298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046822 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A046823.P16530207895641637298

namespace A046823

/-- `A046822(Δ[n²])-1` -/
def P16530207895641637298.Spec : Prop :=
  ∀ n, P16530207895641637298.a n = A046823 n

end A046823

/-! ## A046823.P11000470996663395225

`filter[A046821(2*n+1), A102609(#)]`
-/

namespace A046823.P11000470996663395225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A046823.P11000470996663395225

namespace A046823

/-- `filter[A046821(2*n+1), A102609(#)]` -/
def P11000470996663395225.Spec : Prop :=
  ∀ n, P11000470996663395225.a n = A046823 n

end A046823

/-! ## A046823.P17622111848790191282

`A046822(4*n+2)`
-/

namespace A046823.P17622111848790191282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046822 (4 * n + 2)

end

end A046823.P17622111848790191282

namespace A046823

/-- `A046822(4*n+2)` -/
def P17622111848790191282.Spec : Prop :=
  ∀ n, P17622111848790191282.a n = A046823 n

end A046823

/-! ## A046823.P11397039293349297704

`∑{e}[A278222(A016885(n)), #]`
-/

namespace A046823.P11397039293349297704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A046823.P11397039293349297704

namespace A046823

/-- `∑{e}[A278222(A016885(n)), #]` -/
def P11397039293349297704.Spec : Prop :=
  ∀ n, (P11397039293349297704.a n : ℤ) = A046823 n

end A046823

/-! ## A046823.P14497030929538276940

`A000120(5*n+3)`
-/

namespace A046823.P14497030929538276940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n + 3)

end

end A046823.P14497030929538276940

namespace A046823

/-- `A000120(5*n+3)` -/
def P14497030929538276940.Spec : Prop :=
  ∀ n, P14497030929538276940.a n = A046823 n

end A046823

/-! ## A046823.P16825915557881459579

`A274009(A273669(n+1))`
-/

namespace A046823.P16825915557881459579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A273669 (n + 1)).toNat

end

end A046823.P16825915557881459579

namespace A046823

/-- `A274009(A273669(n+1))` -/
def P16825915557881459579.Spec : Prop :=
  ∀ n, P16825915557881459579.a n = A046823 n

end A046823

/-! ## A046823.P17565492363525713066

`A000120(Δ[A005475(n)])%18`
-/

namespace A046823.P17565492363525713066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (f1 (n + 1) - f1 n).toNat) 18

end

end A046823.P17565492363525713066

namespace A046823

/-- `A000120(Δ[A005475(n)])%18` -/
def P17565492363525713066.Spec : Prop :=
  ∀ n, P17565492363525713066.a n = A046823 n

end A046823

/-! ## A046823.P11524421578610838350

`A274009(A271508(n+2)-2)`
-/

namespace A046823.P11524421578610838350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A271508 (n + 2) - 2).toNat

end

end A046823.P11524421578610838350

namespace A046823

/-- `A274009(A271508(n+2)-2)` -/
def P11524421578610838350.Spec : Prop :=
  ∀ n, P11524421578610838350.a n = A046823 n

end A046823

/-! ## A046823.P1978732479958764406

`A001222(A071044(5*n+3))`
-/

namespace A046823.P1978732479958764406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (5 * n + 3)).toNat

end

end A046823.P1978732479958764406

namespace A046823

/-- `A001222(A071044(5*n+3))` -/
def P1978732479958764406.Spec : Prop :=
  ∀ n, P1978732479958764406.a n = A046823 n

end A046823

/-! ## A046823.P18161035448060077012

`A000120(A004767(n)+n)%24`
-/

namespace A046823.P18161035448060077012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A004767 n + (n : ℤ)).toNat) 24

end

end A046823.P18161035448060077012

namespace A046823

/-- `A000120(A004767(n)+n)%24` -/
def P18161035448060077012.Spec : Prop :=
  ∀ n, P18161035448060077012.a n = A046823 n

end A046823

/-! ## A046823.P2866247367020312728

`A005811(A341916(2*(n+1)+3*n+1))`
-/

namespace A046823.P2866247367020312728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (2 * (n + 1) + (3 * n + 1))).toNat

end

end A046823.P2866247367020312728

namespace A046823

/-- `A005811(A341916(2*(n+1)+3*n+1))` -/
def P2866247367020312728.Spec : Prop :=
  ∀ n, P2866247367020312728.a n = A046823 n

end A046823

/-! ## A046823.P11358843347048936420

`A046824(8*n+4)`
-/

namespace A046823.P11358843347048936420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046824 (8 * n + 4)

end

end A046823.P11358843347048936420

namespace A046823

/-- `A046824(8*n+4)` -/
def P11358843347048936420.Spec : Prop :=
  ∀ n, P11358843347048936420.a n = A046823 n

end A046823

/-! ## A046823.P8698375953168273297

`A046821(A017101(n)+2)-1`
-/

namespace A046823.P8698375953168273297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (A017101 n + 2).toNat - 1

end

end A046823.P8698375953168273297

namespace A046823

/-- `A046821(A017101(n)+2)-1` -/
def P8698375953168273297.Spec : Prop :=
  ∀ n, P8698375953168273297.a n = A046823 n

end A046823

/-! ## A046823.P3334666052558441501

`A001222(A278222(5*n+3))`
-/

namespace A046823.P3334666052558441501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (5 * n + 3)).toNat

end

end A046823.P3334666052558441501

namespace A046823

/-- `A001222(A278222(5*n+3))` -/
def P3334666052558441501.Spec : Prop :=
  ∀ n, P3334666052558441501.a n = A046823 n

end A046823

/-! ## A046823.P5328819038096209324

`A274009(A017353(n))`
-/

namespace A046823.P5328819038096209324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A017353 n).toNat

end

end A046823.P5328819038096209324

namespace A046823

/-- `A274009(A017353(n))` -/
def P5328819038096209324.Spec : Prop :=
  ∀ n, P5328819038096209324.a n = A046823 n

end A046823

/-! ## A046823.P7739822053962712445

`A274009(A160912(n+2))`
-/

namespace A046823.P7739822053962712445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A160912 (n + 2)).toNat

end

end A046823.P7739822053962712445

namespace A046823

/-- `A274009(A160912(n+2))` -/
def P7739822053962712445.Spec : Prop :=
  ∀ n, P7739822053962712445.a n = A046823 n

end A046823

/-!
# A046824: Number of 1's in binary expansion of 5n+4.

The programs for A046824, the canonical program `A046824.P13810941798240372756` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046824 has offset 0).

The definition of A046824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046824.P4453947592713563879

`A001222(A001316(5*n+4))`
-/

namespace A046824.P4453947592713563879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (5 * n + 4)).toNat

end

end A046824.P4453947592713563879

namespace A046824

/-- `A001222(A001316(5*n+4))` -/
def P4453947592713563879.Spec : Prop :=
  ∀ n, P4453947592713563879.a n = A046824 n

end A046824

/-! ## A046824.P13810941798240372756

`A046820(n+1)-Δ[A000120(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046824

/-- `A046820(n+1)-Δ[A000120(n)]` -/
def P13810941798240372756.Spec : Prop :=
  ∀ n, P13810941798240372756.a n = A046824 n

theorem P13810941798240372756.correct : P13810941798240372756.Spec := by
  intro n
  simp only [A046824]

end A046824

/-! ## A046824.P18256082601103483542

`A046820(n+1)+A000120(n)-A000120(n+1)`
-/

namespace A046824.P18256082601103483542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046820 (n + 1) + (A000120 n - A000120 (n + 1))

end

end A046824.P18256082601103483542

namespace A046824

/-- `A046820(n+1)+A000120(n)-A000120(n+1)` -/
def P18256082601103483542.Spec : Prop :=
  ∀ n, P18256082601103483542.a n = A046824 n

theorem P18256082601103483542.correct : P18256082601103483542.Spec := by
  intro n
  simp only [A046824, Nat.add_sub_cancel, A046824.P18256082601103483542.a, A046824.P13810941798240372756.f1, A046824.P13810941798240372756.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A046824

/-! ## A046824.P3000473683306903444

`A046823(Δ[n²])`
-/

namespace A046824.P3000473683306903444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046824.P3000473683306903444

namespace A046824

/-- `A046823(Δ[n²])` -/
def P3000473683306903444.Spec : Prop :=
  ∀ n, P3000473683306903444.a n = A046824 n

end A046824

/-! ## A046824.P2845818692114064690

`filter[A046823(2*n+1), A102609(#)]`
-/

namespace A046824.P2845818692114064690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A046824.P2845818692114064690

namespace A046824

/-- `filter[A046823(2*n+1), A102609(#)]` -/
def P2845818692114064690.Spec : Prop :=
  ∀ n, P2845818692114064690.a n = A046824 n

end A046824

/-! ## A046824.P10535260096421071093

`filter[A046823(2*n+1), A133011(#)]`
-/

namespace A046824.P10535260096421071093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A046824.P10535260096421071093

namespace A046824

/-- `filter[A046823(2*n+1), A133011(#)]` -/
def P10535260096421071093.Spec : Prop :=
  ∀ n, P10535260096421071093.a n = A046824 n

end A046824

/-! ## A046824.P18072088920635458202

`A000120(A109168(n+1)+2*n+1)`
-/

namespace A046824.P18072088920635458202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A109168 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A046824.P18072088920635458202

namespace A046824

/-- `A000120(A109168(n+1)+2*n+1)` -/
def P18072088920635458202.Spec : Prop :=
  ∀ n, P18072088920635458202.a n = A046824 n

end A046824

/-! ## A046824.P5823761498056967299

`A000120(A140472(n+1)+2*n+1)`
-/

namespace A046824.P5823761498056967299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A140472 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A046824.P5823761498056967299

namespace A046824

/-- `A000120(A140472(n+1)+2*n+1)` -/
def P5823761498056967299.Spec : Prop :=
  ∀ n, P5823761498056967299.a n = A046824 n

end A046824

/-! ## A046824.P11700259594678618715

`A001222(A268444(5*n+4))`
-/

namespace A046824.P11700259594678618715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 (5 * n + 4)).toNat

end

end A046824.P11700259594678618715

namespace A046824

/-- `A001222(A268444(5*n+4))` -/
def P11700259594678618715.Spec : Prop :=
  ∀ n, P11700259594678618715.a n = A046824 n

end A046824

/-! ## A046824.P18387784548613450304

`A046821(3*(n+1)+n)`
-/

namespace A046824.P18387784548613450304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046821 (3 * (n + 1) + n)

end

end A046824.P18387784548613450304

namespace A046824

/-- `A046821(3*(n+1)+n)` -/
def P18387784548613450304.Spec : Prop :=
  ∀ n, P18387784548613450304.a n = A046824 n

end A046824

/-! ## A046824.P2567239914185255557

`A046822(A017137(n)/2)-1`
-/

namespace A046824.P2567239914185255557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046822 (SequenceMachineLib.roundAway ((A017137 n : ℚ) / 2)).toNat - 1

end

end A046824.P2567239914185255557

namespace A046824

/-- `A046822(A017137(n)/2)-1` -/
def P2567239914185255557.Spec : Prop :=
  ∀ n, P2567239914185255557.a n = A046824 n

end A046824

/-! ## A046824.P17940048048265956391

`A000120(5*n+4)`
-/

namespace A046824.P17940048048265956391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n + 4)

end

end A046824.P17940048048265956391

namespace A046824

/-- `A000120(5*n+4)` -/
def P17940048048265956391.Spec : Prop :=
  ∀ n, P17940048048265956391.a n = A046824 n

end A046824

/-! ## A046824.P14762346813051860351

`5*n+4-A011371(5*n+4)`
-/

namespace A046824.P14762346813051860351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 4 : ℤ) - A011371 (5 * n + 4)

end

end A046824.P14762346813051860351

namespace A046824

/-- `5*n+4-A011371(5*n+4)` -/
def P14762346813051860351.Spec : Prop :=
  ∀ n, P14762346813051860351.a n = A046824 n

end A046824

/-! ## A046824.P5170993585202771645

`A001222(A071044(5*n+4))`
-/

namespace A046824.P5170993585202771645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (5 * n + 4)).toNat

end

end A046824.P5170993585202771645

namespace A046824

/-- `A001222(A071044(5*n+4))` -/
def P5170993585202771645.Spec : Prop :=
  ∀ n, P5170993585202771645.a n = A046824 n

end A046824

/-! ## A046824.P11587255956143677319

`A005811(A341916(5*(n+1)-1))`
-/

namespace A046824.P11587255956143677319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (5 * (n + 1) - 1)).toNat

end

end A046824.P11587255956143677319

namespace A046824

/-- `A005811(A341916(5*(n+1)-1))` -/
def P11587255956143677319.Spec : Prop :=
  ∀ n, P11587255956143677319.a n = A046824 n

end A046824

/-! ## A046824.P14301064195795439531

`A046822(A017137(n))`
-/

namespace A046824.P14301064195795439531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046822 (A017137 n).toNat

end

end A046824.P14301064195795439531

namespace A046824

/-- `A046822(A017137(n))` -/
def P14301064195795439531.Spec : Prop :=
  ∀ n, P14301064195795439531.a n = A046824 n

end A046824

/-! ## A046824.P5616722956928217184

`A001222(A278222(5*n+4))`
-/

namespace A046824.P5616722956928217184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (5 * n + 4)).toNat

end

end A046824.P5616722956928217184

namespace A046824

/-- `A001222(A278222(5*n+4))` -/
def P5616722956928217184.Spec : Prop :=
  ∀ n, P5616722956928217184.a n = A046824 n

end A046824

/-! ## A046824.P4829866860894236459

`A274009(10*n+9)`
-/

namespace A046824.P4829866860894236459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (10 * n + 9)

end

end A046824.P4829866860894236459

namespace A046824

/-- `A274009(10*n+9)` -/
def P4829866860894236459.Spec : Prop :=
  ∀ n, P4829866860894236459.a n = A046824 n

end A046824

/-! ## A046824.P12885408026025384410

`A000120(A017377(n))-1`
-/

namespace A046824.P12885408026025384410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A017377 n).toNat - 1

end

end A046824.P12885408026025384410

namespace A046824

/-- `A000120(A017377(n))-1` -/
def P12885408026025384410.Spec : Prop :=
  ∀ n, P12885408026025384410.a n = A046824 n

end A046824

/-! ## A046824.P12707830283237213836

`A000120(A017365(n))%12`
-/

namespace A046824.P12707830283237213836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A017365 n).toNat) 12

end

end A046824.P12707830283237213836

namespace A046824

/-- `A000120(A017365(n))%12` -/
def P12707830283237213836.Spec : Prop :=
  ∀ n, P12707830283237213836.a n = A046824 n

end A046824

/-!
# A046825: Numerator of Sum_{k=0..n} 1/binomial(n,k).

The programs for A046825, there is no canonical definition to state claims against.
-/

/-! ## A046825.P952891214437964155

`A003149(n)/A000142(n)*A046826(n)`
-/

namespace A046825.P952891214437964155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003149 n : ℚ) / (A000142 n : ℚ) * (A046826 n : ℚ)

end

end A046825.P952891214437964155

/-! ## A046825.P4739073849538171735

`A003149(n)/gcd(A003149(n), A214080(n²))`
-/

namespace A046825.P4739073849538171735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003149 n : ℚ) / (Int.gcd (A003149 n) (A214080 (n ^ 2)) : ℚ)

end

end A046825.P4739073849538171735

/-! ## A046825.P4372822954950386704

`∑[A186374(n+1)]/A000142(n)*A046826(n)`
-/

namespace A046825.P4372822954950386704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000142 n : ℚ) * (A046826 n : ℚ)

end

end A046825.P4372822954950386704

/-! ## A046825.P12440968294138258229

`A025527(n+1)*A025533(n)/A000142(n)*A046826(n)`
-/

namespace A046825.P12440968294138258229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025527 (n + 1) * A025533 n : ℚ) / (A000142 n : ℚ) * (A046826 n : ℚ)

end

end A046825.P12440968294138258229

/-! ## A046825.P12020423424375292717

`A084938(∑[n+2]+3)/A000142(n)*A046826(n)`
-/

namespace A046825.P12020423424375292717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / (A000142 n : ℚ) * (A046826 n : ℚ)

end

end A046825.P12020423424375292717

/-!
# A046826: Denominator of Sum_{k=0..n} 1/binomial(n,k).

The programs for A046826, there is no canonical definition to state claims against.
-/

/-! ## A046826.P17955034747906644915

`lcm(n+1, A241519(n))/(n+1)`
-/

namespace A046826.P17955034747906644915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A241519 n) : ℚ) / (n + 1 : ℚ)

end

end A046826.P17955034747906644915

/-! ## A046826.P3519494407683228184

`A241519(n)/gcd(n+1, A241519(n))`
-/

namespace A046826.P3519494407683228184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241519 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A241519 n) : ℚ)

end

end A046826.P3519494407683228184

/-! ## A046826.P287229867758498832

`A000142(n)/A003149(n)*A046825(n)`
-/

namespace A046826.P287229867758498832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A003149 n : ℚ) * (A046825 n : ℚ)

end

end A046826.P287229867758498832

/-! ## A046826.P12689204186704679817

`A000142(n)/∑[A186374(n+1)]*A046825(n)`
-/

namespace A046826.P12689204186704679817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A046825 n : ℚ)

end

end A046826.P12689204186704679817

/-! ## A046826.P8280247473353327022

`A000142(n)/A084938(∑[n+2]+3)*A046825(n)`
-/

namespace A046826.P8280247473353327022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) * (A046825 n : ℚ)

end

end A046826.P8280247473353327022

/-!
# A046827: Numbers k such that k^2 contains all the digits of k with the same or higher multiplicity.

The programs for A046827, there is no canonical definition to state claims against.
-/

/-! ## A046827.P15200573548492624786

`A064827(n)+a(ceil(1/n)-1)` with `a(0)=0`
-/

namespace A046827.P15200573548492624786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064827 n + a (⌈1 / (n : ℚ)⌉ - 1).toNat

end

end A046827.P15200573548492624786

/-! ## A046827.P8196332889978279540

`A064827(round(acot(n)+n))%(n+1)²`
-/

namespace A046827.P8196332889978279540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064827 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) ((n + 1) ^ 2 : ℤ)

end

end A046827.P8196332889978279540

/-! ## A046827.P16366711519267618378

`A064827(round(acot(3-a(n-1))+n))` with `a(0)=0`
-/

namespace A046827.P16366711519267618378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064827 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (3 - a (n - 1) : ℝ) + (n : ℝ))).toNat

end

end A046827.P16366711519267618378

/-! ## A046827.P2738806012114037404

`A064827(round(sqrt(n²+1)))%∑[8*n+1]`
-/

namespace A046827.P2738806012114037404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064827 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A046827.P2738806012114037404

/-! ## A046827.P8044959418498255100

`A064827(round(1/((n-2)*a(n-1)+11)+n))` with `a(0)=0`
-/

namespace A046827.P8044959418498255100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064827 (SequenceMachineLib.roundAway (1 / (((n : ℤ) - 2) * a (n - 1) + 11 : ℚ) + (n : ℚ))).toNat

end

end A046827.P8044959418498255100

/-! ## A046827.P1143492852735534742

`∪[A064827(n+1), A001737(n)]`
-/

namespace A046827.P1143492852735534742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046827.P1143492852735534742

/-! ## A046827.P8173782415297775063

`A064827(A028310(n))-C(2, n+2)`
-/

namespace A046827.P8173782415297775063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064827 (A028310 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A046827.P8173782415297775063

/-! ## A046827.P6152553566121039321

`record[n%2*A064827(A008619(n))]`
-/

namespace A046827.P6152553566121039321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A064827 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046827.P6152553566121039321

/-! ## A046827.P8421127005289200976

`A054977(a(n-1))*A064827(n)` with `a(0)=0, a(1)=1`
-/

namespace A046827.P8421127005289200976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A054977 (a (n - 1)).toNat * A064827 n

end

end A046827.P8421127005289200976

/-!
# A046828: Digits of n^2 include digits of n, n does not end in 0.

The programs for A046828, there is no canonical definition to state claims against.
-/

/-! ## A046828.P148961060733936622

`∩[A046827(n+1), A067251(n+1)]`
-/

namespace A046828.P148961060733936622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046828.P148961060733936622

/-! ## A046828.P16914956025315217996

`∩[A064827(n+1), A067251(n+1)]`
-/

namespace A046828.P16914956025315217996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046828.P16914956025315217996

/-! ## A046828.P13249759076414585159

`∩[A064827(n+1), A342851(n+1)]`
-/

namespace A046828.P13249759076414585159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046828.P13249759076414585159

/-! ## A046828.P5101012028754314341

`record[A004151(A064827(n+1))]`
-/

namespace A046828.P5101012028754314341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A064827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046828.P5101012028754314341

/-! ## A046828.P6017242204054551676

`record[A004151(A046827(n+2))]`
-/

namespace A046828.P6017242204054551676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A046827 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046828.P6017242204054551676

/-! ## A046828.P8083741099631429873

`filter[A046827(n+1), A168184(#)]`
-/

namespace A046828.P8083741099631429873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046828.P8083741099631429873

/-! ## A046828.P8344903951930391540

`filter[A064827(n+1), A168184(#)]`
-/

namespace A046828.P8344903951930391540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046828.P8344903951930391540

/-!
# A046829: Numbers k such that digits of k^2 include digits of k as subsequence.

The programs for A046829, there is no canonical definition to state claims against.
-/

/-! ## A046829.P12798249620767261371

`∪[A007924(n), A052212(n+1)]`
-/

namespace A046829.P12798249620767261371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046829.P12798249620767261371

/-! ## A046829.P7159535817470505953

`∪[A070189(n), A052212(n+1)]`
-/

namespace A046829.P7159535817470505953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046829.P7159535817470505953

/-! ## A046829.P10671484345286206738

`ceil(A052212(A028310(n))-acot(n))`
-/

namespace A046829.P10671484345286206738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052212 (A028310 n).toNat : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A046829.P10671484345286206738

/-! ## A046829.P2559886625955039428

`A052212(A028310(n))-A000007(n)`
-/

namespace A046829.P2559886625955039428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (A028310 n).toNat - A000007 n

end

end A046829.P2559886625955039428

/-! ## A046829.P5052981462234340411

`A052212(A028310(n))*A057427(n)`
-/

namespace A046829.P5052981462234340411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (A028310 n).toNat * A057427 n

end

end A046829.P5052981462234340411

/-! ## A046829.P2218904838640287387

`lcm(A052212(A028310(n)), A062157(n))`
-/

namespace A046829.P2218904838640287387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052212 (A028310 n).toNat) (A062157 n)

end

end A046829.P2218904838640287387

/-! ## A046829.P16463008314806987016

`and(A052212(A028310(n)), A057428(n))`
-/

namespace A046829.P16463008314806987016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052212 (A028310 n).toNat) (A057428 n)

end

end A046829.P16463008314806987016

/-! ## A046829.P3746788950321380522

`A052212(A000007(n)+n)-A000007(n)`
-/

namespace A046829.P3746788950321380522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A046829.P3746788950321380522

/-! ## A046829.P16899070973216854337

`A052212(A001281(A004277(n)))%A052212(n+1)`
-/

namespace A046829.P16899070973216854337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052212 (A001281 (A004277 n).toNat).toNat) (A052212 (n + 1))

end

end A046829.P16899070973216854337

/-! ## A046829.P16202164270547446851

`A000035(A000040(n+1))*A052212(A028310(n))`
-/

namespace A046829.P16202164270547446851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000040 (n + 1)).toNat * A052212 (A028310 n).toNat

end

end A046829.P16202164270547446851

/-! ## A046829.P15492128429325072818

`eq[2, A391816(n)]`
-/

namespace A046829.P15492128429325072818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046829.P15492128429325072818

/-!
# A046830: Digits of n^2 include digits of n as subsequence, n does not end in 0.

The programs for A046830, there is no canonical definition to state claims against.
-/

/-! ## A046830.P13058718130444439752

`∩[A046828(n+1), A046829(n+1)]`
-/

namespace A046830.P13058718130444439752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046830.P13058718130444439752

/-! ## A046830.P10112558495797250061

`∩[A046828(n+1), A052212(n+1)]`
-/

namespace A046830.P10112558495797250061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046830.P10112558495797250061

/-! ## A046830.P4719452728476098245

`∩[A046829(n+1), A067251(n+1)]`
-/

namespace A046830.P4719452728476098245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046830.P4719452728476098245

/-! ## A046830.P9492316829442626233

`∩[A052212(n+1), A067251(n+1)]`
-/

namespace A046830.P9492316829442626233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046830.P9492316829442626233

/-! ## A046830.P6703958933051152118

`∩[A052212(n+1), A342851(n+1)]`
-/

namespace A046830.P6703958933051152118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046830.P6703958933051152118

/-! ## A046830.P6150196114947586564

`record[A004151(A052212(n+1))]`
-/

namespace A046830.P6150196114947586564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A052212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046830.P6150196114947586564

/-! ## A046830.P2684870907589269391

`record[A004151(A046829(n+2))]`
-/

namespace A046830.P2684870907589269391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A046829 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046830.P2684870907589269391

/-! ## A046830.P16135194128688666571

`filter[A046829(n+1), A168184(#)]`
-/

namespace A046830.P16135194128688666571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046830.P16135194128688666571

/-! ## A046830.P3819614292959904856

`filter[A052212(n+1), A168184(#)]`
-/

namespace A046830.P3819614292959904856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046830.P3819614292959904856

/-!
# A046831: Numbers k such that decimal expansion of k^2 contains k as a substring and k does not end in 0.

The programs for A046831, there is no canonical definition to state claims against.
-/

/-! ## A046831.P8223604298478937869

`∩[A018834(n+1), A046830(n+1)]`
-/

namespace A046831.P8223604298478937869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046831.P8223604298478937869

/-! ## A046831.P4894500987353333672

`∩[A018834(n+1), A046828(n+1)]`
-/

namespace A046831.P4894500987353333672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046831.P4894500987353333672

/-! ## A046831.P1671106895656170727

`filter[A018834(n+1), A168046(#)]`
-/

namespace A046831.P1671106895656170727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A046831.P1671106895656170727

/-! ## A046831.P15233082837691940065

`filter[A018834(n+1), A168184(#)]`
-/

namespace A046831.P15233082837691940065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046831.P15233082837691940065

/-! ## A046831.P14336026290048881708

`filter[A018834(n+2), A209929(#)]`
-/

namespace A046831.P14336026290048881708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A046831.P14336026290048881708

/-!
# A046833: Internal digits of n^2 include digits of n, n does not end in 0.

The programs for A046833, there is no canonical definition to state claims against.
-/

/-! ## A046833.P25359899660984038

`∩[A046828(n+1), A046832(n+1)]`
-/

namespace A046833.P25359899660984038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046833.P25359899660984038

/-! ## A046833.P13613769420481920582

`filter[A046832(n+1), A168184(#)]`
-/

namespace A046833.P13613769420481920582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A046833.P13613769420481920582

/-!
# A046834: Internal digits of n^2 include digits of n as subsequence.

The programs for A046834, there is no canonical definition to state claims against.
-/

/-! ## A046834.P14875262073064914106

`A046836(A100793(n))`
-/

namespace A046834.P14875262073064914106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046836 (A100793 n).toNat

end

end A046834.P14875262073064914106

/-! ## A046834.P10827433181551607212

`A046836(A001096(n)+1)`
-/

namespace A046834.P10827433181551607212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046836 (A001096 n + 1).toNat

end

end A046834.P10827433181551607212

/-!
# A046835: Internal digits of n^2 include digits of n as subsequence, n does not end in 0.

The programs for A046835, there is no canonical definition to state claims against.
-/

/-! ## A046835.P17687084417675974508

`∩[A046830(n+1), A046834(n+1)]`
-/

namespace A046835.P17687084417675974508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046835.P17687084417675974508

/-! ## A046835.P2510310992667965791

`∩[A046833(n+1), A046834(n+1)]`
-/

namespace A046835.P2510310992667965791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046835.P2510310992667965791

/-! ## A046835.P15638614147131504567

`∩[A046828(n+1), A046834(n+1)]`
-/

namespace A046835.P15638614147131504567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046835.P15638614147131504567

/-! ## A046835.P4241535460220888972

`filter[A046834(n+1), A011558(#)]`
-/

namespace A046835.P4241535460220888972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A046835.P4241535460220888972

/-!
# A046836: Internal digits of n^2 include digits of n as substring.

The programs for A046836, there is no canonical definition to state claims against.
-/

/-! ## A046836.P7992297566596371682

`∩[A018834(n+1), A046834(n+1)]`
-/

namespace A046836.P7992297566596371682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046836.P7992297566596371682

/-!
# A046837: Internal digits of k^2 include digits of k as substring, k does not end in 0.

The programs for A046837, there is no canonical definition to state claims against.
-/

/-! ## A046837.P6687901326879973424

`∩[A018834(n+1), A046835(n+1)]`
-/

namespace A046837.P6687901326879973424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046837.P6687901326879973424

/-! ## A046837.P9329218928783129535

`∩[A046831(n+1), A046835(n+1)]`
-/

namespace A046837.P9329218928783129535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046837.P9329218928783129535

/-! ## A046837.P4995055757723783956

`∩[A046831(n+1), A046836(n+1)]`
-/

namespace A046837.P4995055757723783956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046837.P4995055757723783956

/-! ## A046837.P7186105839446337411

`∩[A046835(n+1), A046836(n+1)]`
-/

namespace A046837.P7186105839446337411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046837.P7186105839446337411

/-!
# A046838: Numbers k such that k^2 can be obtained from k by inserting a block of digits.

The programs for A046838, there is no canonical definition to state claims against.
-/

/-! ## A046838.P11136688184631671137

`∪[A003226(n+1), A045953(n+1)]`
-/

namespace A046838.P11136688184631671137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046838.P11136688184631671137

/-! ## A046838.P17749725804498870440

`filter[A046829(n+1), A114213(#)]`
-/

namespace A046838.P17749725804498870440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A046838.P17749725804498870440

/-!
# A046839: Numbers k such that the number of divisors of k divides the sum of cubes of divisors of k.

The programs for A046839, the canonical program `A046839.P16105332668956259502` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046839 has offset 1).

The definition of A046839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046839.P16105332668956259502

`lt[A001158(n+1)%A000005(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046839

/-- `lt[A001158(n+1)%A000005(n+1), 1]+1` -/
def P16105332668956259502.Spec : Prop :=
  ∀ n, (P16105332668956259502.a n : ℤ) = A046839 (n + 1)

theorem P16105332668956259502.correct : P16105332668956259502.Spec := by
  intro n
  simp only [A046839, Nat.add_sub_cancel]

end A046839

/-! ## A046839.P8233046278763860180

`∪[A000578(3*n+4), A003601(n+1)]%A206512(n+1)`
-/

namespace A046839.P8233046278763860180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A206512 (n + 1))

end

end A046839.P8233046278763860180

namespace A046839

/-- `∪[A000578(3*n+4), A003601(n+1)]%A206512(n+1)` -/
def P8233046278763860180.Spec : Prop :=
  ∀ n, P8233046278763860180.a n = A046839 (n + 1)

end A046839

/-!
# A046840: Numbers k such that the number of divisors of k divides the sum of the 4th powers of the divisors of k.

The programs for A046840, the canonical program `A046840.P11712278196667640381` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046840 has offset 1).

The definition of A046840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046840.P11712278196667640381

`eq[0, A001159(n+1)%A000005(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046840

/-- `eq[0, A001159(n+1)%A000005(n+1)]+1` -/
def P11712278196667640381.Spec : Prop :=
  ∀ n, (P11712278196667640381.a n : ℤ) = A046840 (n + 1)

theorem P11712278196667640381.correct : P11712278196667640381.Spec := by
  intro n
  simp only [A046840, Nat.add_sub_cancel]

end A046840

/-! ## A046840.P5916033046183471660

`A003159(A129657(n+1)%A329318(n+5))`
-/

namespace A046840.P5916033046183471660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (Int.tmod (A129657 (n + 1)) (A329318 (n + 5))).toNat

end

end A046840.P5916033046183471660

namespace A046840

/-- `A003159(A129657(n+1)%A329318(n+5))` -/
def P5916033046183471660.Spec : Prop :=
  ∀ n, P5916033046183471660.a n = A046840 (n + 1)

end A046840

/-!
# A046841: Numbers whose sum of divisors divides their sum of cubes of divisors.

The programs for A046841, the canonical program `A046841.P12442994457345878225` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046841 has offset 1).

The definition of A046841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046841.P12442994457345878225

`eq[1, A091258(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046841

/-- `eq[1, A091258(n+1)]+1` -/
def P12442994457345878225.Spec : Prop :=
  ∀ n, (P12442994457345878225.a n : ℤ) = A046841 (n + 1)

theorem P12442994457345878225.correct : P12442994457345878225.Spec := by
  intro n
  simp only [A046841, Nat.add_sub_cancel]

end A046841

/-! ## A046841.P16270392437407762220

`eq[A000005(A000203(n+1)), A073809(n+1)]+1`
-/

namespace A046841.P16270392437407762220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046841.P16270392437407762220

namespace A046841

/-- `eq[A000005(A000203(n+1)), A073809(n+1)]+1` -/
def P16270392437407762220.Spec : Prop :=
  ∀ n, (P16270392437407762220.a n : ℤ) = A046841 (n + 1)

end A046841

/-! ## A046841.P6171944068381182578

`record[n+1-A001158(n+1)%A000203(n+1)]`
-/

namespace A046841.P6171944068381182578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A001158 (n + 1)) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046841.P6171944068381182578

namespace A046841

/-- `record[n+1-A001158(n+1)%A000203(n+1)]` -/
def P6171944068381182578.Spec : Prop :=
  ∀ n, P6171944068381182578.a n = A046841 (n + 1)

end A046841

/-! ## A046841.P13282367531822203037

`record[(n+1)/A002264(A091258(n+1)+3)]`
-/

namespace A046841.P13282367531822203037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002264 (A091258 (n + 1) + 3).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046841.P13282367531822203037

namespace A046841

/-- `record[(n+1)/A002264(A091258(n+1)+3)]` -/
def P13282367531822203037.Spec : Prop :=
  ∀ n, P13282367531822203037.a n = (A046841 (n + 1) : ℚ)

end A046841

/-! ## A046841.P5392251332057439491

`record[(n+1)/A081753(3*A091258(n+1))]`
-/

namespace A046841.P5392251332057439491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A081753 (3 * A091258 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046841.P5392251332057439491

namespace A046841

/-- `record[(n+1)/A081753(3*A091258(n+1))]` -/
def P5392251332057439491.Spec : Prop :=
  ∀ n, P5392251332057439491.a n = (A046841 (n + 1) : ℚ)

end A046841

/-!
# A046842: Primes of form k*2^k - k - 1.

The programs for A046842, there is no canonical definition to state claims against.
-/

/-! ## A046842.P9286678931526930068

`A066524(A046843(n+1))-1`
-/

namespace A046842.P9286678931526930068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (A046843 (n + 1)).toNat - 1

end

end A046842.P9286678931526930068

/-!
# A046846: Primes of form k*2^k - (k-1).

The programs for A046846, there is no canonical definition to state claims against.
-/

/-! ## A046846.P8144551822807062922

`A002064(A046847(n+1))-A046847(n+1)`
-/

namespace A046846.P8144551822807062922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (A046847 (n + 1)).toNat - A046847 (n + 1)

end

end A046846.P8144551822807062922

/-!
# A046847: Numbers k such that k*2^k - (k-1) is prime.

The programs for A046847, there is no canonical definition to state claims against.
-/

/-! ## A046847.P436849268016343787

`eq[2, A283450(n+1)]+1`
-/

namespace A046847.P436849268016343787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046847.P436849268016343787

/-! ## A046847.P15686764187706231054

`record[A000010(A228814(2*n+1)*A335607(n)+n+1)]`
-/

namespace A046847.P15686764187706231054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A228814 (2 * n + 1) * A335607 n + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046847.P15686764187706231054

/-!
# A046848: Primes of form k*2^k+(k-1).

The programs for A046848, there is no canonical definition to state claims against.
-/

/-! ## A046848.P15642653864082706374

`A069229(A046849(n+1))-1`
-/

namespace A046848.P15642653864082706374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 (A046849 (n + 1)).toNat - 1

end

end A046848.P15642653864082706374

/-!
# A046851: Numbers n such that n^2 can be obtained from n by inserting internal (but not necessarily contiguous) digits.

The programs for A046851, there is no canonical definition to state claims against.
-/

/-! ## A046851.P3947284552588278907

`∩[A046829(n+1), A086457(n+1)]`
-/

namespace A046851.P3947284552588278907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046851.P3947284552588278907

/-! ## A046851.P26843698030868295

`∩[A086457(n+1), A378048(n+1)]`
-/

namespace A046851.P26843698030868295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046851.P26843698030868295

/-! ## A046851.P17742802615260740172

`or(A086457(n+1), A181735(A000011(n)))`
-/

namespace A046851.P17742802615260740172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086457 (n + 1)) (A181735 (A000011 n).toNat)

end

end A046851.P17742802615260740172

/-! ## A046851.P12589493282018150848

`A184955(A213356(n+1))+A086457(n+1)`
-/

namespace A046851.P12589493282018150848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A213356 (n + 1)).toNat + A086457 (n + 1)

end

end A046851.P12589493282018150848

/-! ## A046851.P11415244381581634570

`A086457(A032555(n+1))`
-/

namespace A046851.P11415244381581634570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086457 (A032555 (n + 1)).toNat

end

end A046851.P11415244381581634570

/-!
# A046852: Numerator of sum of reciprocals of first n palindromic primes.

The programs for A046852, there is no canonical definition to state claims against.
-/

/-! ## A046852.P2265956211461767429

`∑{p}[A046853(n+1), A046853(n+1)/#]`
-/

namespace A046852.P2265956211461767429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046853 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A046853 (n + 1) : ℚ) / (p : ℚ)

end

end A046852.P2265956211461767429

/-!
# A046853: Denominator of sum of reciprocals of first n palindromic primes.

The programs for A046853, there is no canonical definition to state claims against.
-/

/-! ## A046853.P10203128662877179121

`∏[A002385(n+1)]`
-/

namespace A046853.P10203128662877179121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046853.P10203128662877179121

/-! ## A046853.P18127086795679546708

`∏[A069217(n+2)]`
-/

namespace A046853.P18127086795679546708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046853.P18127086795679546708

/-! ## A046853.P10508718577765814280

`A030522(n+1)+1`
-/

namespace A046853.P10508718577765814280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030522 (n + 1) + 1

end

end A046853.P10508718577765814280

/-! ## A046853.P3498975344345809531

`A030521(n+1)-1`
-/

namespace A046853.P3498975344345809531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030521 (n + 1) - 1

end

end A046853.P3498975344345809531

/-!
# A046854: Triangle read by rows: T(n, k) = binomial(floor((n+k)/2), k), n >= k >= 0.

The programs for A046854, the canonical program `A046854.P6336279902607506651` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046854 has offset 0).

The definition of A046854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046854.P16554008359975241317

`abs(A066170(n))`
-/

namespace A046854.P16554008359975241317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066170 n|

end

end A046854.P16554008359975241317

namespace A046854

/-- `abs(A066170(n))` -/
def P16554008359975241317.Spec : Prop :=
  ∀ n, P16554008359975241317.a n = A046854 n

end A046854

/-! ## A046854.P3115467045658649257

`abs(A130777(n))`
-/

namespace A046854.P3115467045658649257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130777 n|

end

end A046854.P3115467045658649257

namespace A046854

/-- `abs(A130777(n))` -/
def P3115467045658649257.Spec : Prop :=
  ∀ n, P3115467045658649257.a n = A046854 n

end A046854

/-! ## A046854.P9241767316905699772

`abs(A187660(n))`
-/

namespace A046854.P9241767316905699772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187660 n|

end

end A046854.P9241767316905699772

namespace A046854

/-- `abs(A187660(n))` -/
def P9241767316905699772.Spec : Prop :=
  ∀ n, P9241767316905699772.a n = A046854 n

end A046854

/-! ## A046854.P12435387599052185455

`ceil(A131270(n)/2)`
-/

namespace A046854.P12435387599052185455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131270 n : ℚ) / 2⌉

end

end A046854.P12435387599052185455

namespace A046854

/-- `ceil(A131270(n)/2)` -/
def P12435387599052185455.Spec : Prop :=
  ∀ n, P12435387599052185455.a n = A046854 n

end A046854

/-! ## A046854.P519338705969171725

`ceil(A131301(n)/3)`
-/

namespace A046854.P519338705969171725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131301 n : ℚ) / 3⌉

end

end A046854.P519338705969171725

namespace A046854

/-- `ceil(A131301(n)/3)` -/
def P519338705969171725.Spec : Prop :=
  ∀ n, P519338705969171725.a n = A046854 n

end A046854

/-! ## A046854.P6336279902607506651

`A102426(A246694(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046854

/-- `A102426(A246694(n))` -/
def P6336279902607506651.Spec : Prop :=
  ∀ n, P6336279902607506651.a n = A046854 n

theorem P6336279902607506651.correct : P6336279902607506651.Spec := by
  intro n
  simp only [A046854]

end A046854

/-! ## A046854.P7774946746758684474

`A028326(n)-A131238(n)`
-/

namespace A046854.P7774946746758684474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131238 n

end

end A046854.P7774946746758684474

namespace A046854

/-- `A028326(n)-A131238(n)` -/
def P7774946746758684474.Spec : Prop :=
  ∀ n, P7774946746758684474.a n = A046854 n

theorem P7774946746758684474.correct : P7774946746758684474.Spec := by
  intro n
  simp only [A046854, Nat.add_sub_cancel, A046854.P7774946746758684474.a, A046854.P6336279902607506651.a, A028326, A028326.P16610217584664895500.a, A102426, A102426.P776678391830445668.a, A131238, A131238.P9762830409068789865.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A007318, A007318.P302227728145965961.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A092865, A092865.P9800871042429563602.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A033999, A033999.P17703899380244199787.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A091995, A091995.P16558306300262697301.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A046854

/-! ## A046854.P14264256578316562223

`A123486(n)/A130321(n)`
-/

namespace A046854.P14264256578316562223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123486 n : ℚ) / (A130321 n : ℚ)

end

end A046854.P14264256578316562223

namespace A046854

/-- `A123486(n)/A130321(n)` -/
def P14264256578316562223.Spec : Prop :=
  ∀ n, P14264256578316562223.a n = (A046854 n : ℚ)

end A046854

/-! ## A046854.P17173172417125992707

`gcd(A000038(n), A066170(n))`
-/

namespace A046854.P17173172417125992707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A066170 n)

end

end A046854.P17173172417125992707

namespace A046854

/-- `gcd(A000038(n), A066170(n))` -/
def P17173172417125992707.Spec : Prop :=
  ∀ n, (P17173172417125992707.a n : ℤ) = A046854 n

end A046854

/-! ## A046854.P8777149321002226705

`gcd(A010816(n), A130777(n))`
-/

namespace A046854.P8777149321002226705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A130777 n)

end

end A046854.P8777149321002226705

namespace A046854

/-- `gcd(A010816(n), A130777(n))` -/
def P8777149321002226705.Spec : Prop :=
  ∀ n, (P8777149321002226705.a n : ℤ) = A046854 n

end A046854

/-! ## A046854.P636122869947859731

`gcd(A123486(n), A131241(n))`
-/

namespace A046854.P636122869947859731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123486 n) (A131241 n)

end

end A046854.P636122869947859731

namespace A046854

/-- `gcd(A123486(n), A131241(n))` -/
def P636122869947859731.Spec : Prop :=
  ∀ n, (P636122869947859731.a n : ℤ) = A046854 n

end A046854

/-! ## A046854.P15719360944889600891

`lcm(A020985(n), A066170(n))`
-/

namespace A046854.P15719360944889600891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A066170 n)

end

end A046854.P15719360944889600891

namespace A046854

/-- `lcm(A020985(n), A066170(n))` -/
def P15719360944889600891.Spec : Prop :=
  ∀ n, (P15719360944889600891.a n : ℤ) = A046854 n

end A046854

/-! ## A046854.P15250681314785580142

`lcm(A033999(n), A130777(n))`
-/

namespace A046854.P15250681314785580142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A130777 n)

end

end A046854.P15250681314785580142

namespace A046854

/-- `lcm(A033999(n), A130777(n))` -/
def P15250681314785580142.Spec : Prop :=
  ∀ n, (P15250681314785580142.a n : ℤ) = A046854 n

end A046854

/-! ## A046854.P7199604308250154123

`abs(A108299(A038722(n+2)))`
-/

namespace A046854.P7199604308250154123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (A038722 (n + 2)).toNat|

end

end A046854.P7199604308250154123

namespace A046854

/-- `abs(A108299(A038722(n+2)))` -/
def P7199604308250154123.Spec : Prop :=
  ∀ n, P7199604308250154123.a n = A046854 n

end A046854

/-! ## A046854.P132012279361324767

`abs(A108299(A114327(n)+n))`
-/

namespace A046854.P132012279361324767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (A114327 n + (n : ℤ)).toNat|

end

end A046854.P132012279361324767

namespace A046854

/-- `abs(A108299(A114327(n)+n))` -/
def P132012279361324767.Spec : Prop :=
  ∀ n, P132012279361324767.a n = A046854 n

end A046854

/-! ## A046854.P17090469431882680032

`A073044(n+1)-A153764(n)`
-/

namespace A046854.P17090469431882680032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073044 (n + 1) - A153764 n

end

end A046854.P17090469431882680032

namespace A046854

/-- `A073044(n+1)-A153764(n)` -/
def P17090469431882680032.Spec : Prop :=
  ∀ n, P17090469431882680032.a n = A046854 n

theorem P17090469431882680032.correct : P17090469431882680032.Spec := by
  intro n
  simp only [A046854, Nat.add_sub_cancel, A046854.P17090469431882680032.a, A046854.P6336279902607506651.a, A073044, A073044.P10684047990476463728.a, A102426, A102426.P776678391830445668.a, A153764, A153764.P10706953389234343808.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A061579, A061579.P7462537595056690109.a, A098925, A098925.P12998610641323261996.a, A103631, A103631.P9894107747466964003.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A065941, A065941.P15522671980025678303.a, A092865, A092865.P9800871042429563602.a, A374439, A374439.P2263089578454840483.a, A002262, A002262.P12129691700837801527.a, A007318, A007318.P302227728145965961.a, A033999, A033999.P17703899380244199787.a, A060510, A060510.P11373370070759543181.a, A091995, A091995.P16558306300262697301.a, A108299, A108299.P8064445673908937225.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A046854

/-! ## A046854.P859282632085480726

`A007318(n)+A007318(n)-A131238(n)`
-/

namespace A046854.P859282632085480726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A007318 n - A131238 n)

end

end A046854.P859282632085480726

namespace A046854

/-- `A007318(n)+A007318(n)-A131238(n)` -/
def P859282632085480726.Spec : Prop :=
  ∀ n, P859282632085480726.a n = A046854 n

theorem P859282632085480726.correct : P859282632085480726.Spec := by
  intro n
  simp only [A046854, Nat.add_sub_cancel, A046854.P859282632085480726.a, A046854.P6336279902607506651.a, A007318, A007318.P302227728145965961.a, A102426, A102426.P776678391830445668.a, A131238, A131238.P9762830409068789865.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A028326, A028326.P16610217584664895500.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A092865, A092865.P9800871042429563602.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A033999, A033999.P17703899380244199787.a, A091995, A091995.P16558306300262697301.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A046854

/-! ## A046854.P18434919783436300152

`A131375(n)+A168561(n)-A007318(n)`
-/

namespace A046854.P18434919783436300152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131375 n + (A168561 n - A007318 n)

end

end A046854.P18434919783436300152

namespace A046854

/-- `A131375(n)+A168561(n)-A007318(n)` -/
def P18434919783436300152.Spec : Prop :=
  ∀ n, P18434919783436300152.a n = A046854 n

theorem P18434919783436300152.correct : P18434919783436300152.Spec := by
  intro n
  simp only [A046854, Nat.add_sub_cancel, A046854.P18434919783436300152.a, A046854.P6336279902607506651.a, A007318, A007318.P302227728145965961.a, A102426, A102426.P776678391830445668.a, A131375, A131375.P2872443932390034919.a, A168561, A168561.P906342881231109173.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A098925, A098925.P12998610641323261996.a, A134513, A134513.P11345042164523319292.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A092865, A092865.P9800871042429563602.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A033999, A033999.P17703899380244199787.a, A091995, A091995.P16558306300262697301.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A046854

/-! ## A046854.P15335593532714079720

`A065941(n)+A131270(n)-A131373(n)`
-/

namespace A046854.P15335593532714079720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131270 n - A131373 n)

end

end A046854.P15335593532714079720

namespace A046854

/-- `A065941(n)+A131270(n)-A131373(n)` -/
def P15335593532714079720.Spec : Prop :=
  ∀ n, P15335593532714079720.a n = A046854 n

theorem P15335593532714079720.correct : P15335593532714079720.Spec := by
  intro n
  simp only [A046854, Nat.add_sub_cancel, A046854.P15335593532714079720.a, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A102426, A102426.P776678391830445668.a, A131270, A131270.P17225762557638996417.a, A131373, A131373.P5409400150504785590.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A098925, A098925.P12998610641323261996.a, A108299, A108299.P8064445673908937225.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A039961, A039961.P8581143921981610919.a, A092865, A092865.P9800871042429563602.a, A002262, A002262.P12129691700837801527.a, A007318, A007318.P302227728145965961.a, A033999, A033999.P17703899380244199787.a, A061579, A061579.P7462537595056690109.a, A091995, A091995.P16558306300262697301.a, A130777, A130777.P39247602111540675.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A046854

/-! ## A046854.P7282538065316531911

`A065941(n)+A131373(n)-A131268(n)`
-/

namespace A046854.P7282538065316531911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131373 n - A131268 n)

end

end A046854.P7282538065316531911

namespace A046854

/-- `A065941(n)+A131373(n)-A131268(n)` -/
def P7282538065316531911.Spec : Prop :=
  ∀ n, P7282538065316531911.a n = A046854 n

end A046854

/-!
# A046855: a(n) = Sum_{i=0..n} binomial(2^n-1, i).

The programs for A046855, there is no canonical definition to state claims against.
-/

/-! ## A046855.P7342311068889028002

`A001527(n)/2`
-/

namespace A046855.P7342311068889028002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001527 n : ℚ) / 2

end

end A046855.P7342311068889028002

/-! ## A046855.P4214295406788185082

`(A136556(n)+A066384(n))/2`
-/

namespace A046855.P4214295406788185082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136556 n + A066384 n : ℚ) / 2

end

end A046855.P4214295406788185082

/-! ## A046855.P9587319964483897312

`2^A008683(A006450(n+1))*A001527(n)`
-/

namespace A046855.P9587319964483897312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A001527 n : ℚ)

end

end A046855.P9587319964483897312

/-! ## A046855.P6011278805454581845

`A008949((4^n-2^n)/2+n)`
-/

namespace A046855.P6011278805454581845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 + (n : ℚ))).toNat

end

end A046855.P6011278805454581845

/-!
# A046857: 

The programs for A046857, there is no canonical definition to state claims against.
-/

/-! ## A046857.P1464110443652904956

`(2^(n+1))!/(n+1)!²`
-/

namespace A046857.P1464110443652904956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 ^ (n + 1)) : ℚ) / (Nat.factorial (n + 1) ^ 2 : ℚ)

end

end A046857.P1464110443652904956

/-!
# A046860: Triangle giving a(n,k) = number of k-colored labeled graphs with n nodes.

The programs for A046860, there is no canonical definition to state claims against.
-/

/-! ## A046860.P6919153743218936034

`A058843(n+1)*A166350(n+1)`
-/

namespace A046860.P6919153743218936034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058843 (n + 1) * A166350 (n + 1)

end

end A046860.P6919153743218936034

/-! ## A046860.P9031639023737918525

`A002260(n+1)!*A058843(n+1)`
-/

namespace A046860.P9031639023737918525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A058843 (n + 1)

end

end A046860.P9031639023737918525

/-! ## A046860.P6739639559023103159

`A011266(A002260(n+1))*A058875(n+1)`
-/

namespace A046860.P6739639559023103159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011266 (A002260 (n + 1)).toNat * A058875 (n + 1)

end

end A046860.P6739639559023103159

/-! ## A046860.P7358591291397608336

`A058875(n+1)*A166350(n+1)*A000079(A112367(n))`
-/

namespace A046860.P7358591291397608336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058875 (n + 1) * A166350 (n + 1) * A000079 (A112367 n).toNat

end

end A046860.P7358591291397608336

/-! ## A046860.P5478573011087670487

`A000079(A112367(n))*A058875(n+1)*A002260(n+1)!`
-/

namespace A046860.P5478573011087670487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A112367 n).toNat * A058875 (n + 1) * (Nat.factorial (A002260 (n + 1)).toNat : ℤ)

end

end A046860.P5478573011087670487

/-!
# A046861: Lower members of a "good pair" of the form (k, 2*k +- 1).

The programs for A046861, there is no canonical definition to state claims against.
-/

/-! ## A046861.P5629852109355040184

`or(1, floor(A046862(n+1)/2))`
-/

namespace A046861.P5629852109355040184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(A046862 (n + 1) : ℚ) / 2⌋

end

end A046861.P5629852109355040184

/-! ## A046861.P4108570240971378028

`2*floor(A046862(round(sqrt((n+1)²+1)))/4)+1`
-/

namespace A046861.P4108570240971378028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A046862 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat : ℚ) / 4⌋ + 1

end

end A046861.P4108570240971378028

/-! ## A046861.P10356955200892964623

`A249916(floor(A046862(n+1)/4))`
-/

namespace A046861.P10356955200892964623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 ⌊(A046862 (n + 1) : ℚ) / 4⌋.toNat

end

end A046861.P10356955200892964623

/-! ## A046861.P12941880478756086115

`A004277(floor(A046862(n+1)/4)+1)-1`
-/

namespace A046861.P12941880478756086115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (⌊(A046862 (n + 1) : ℚ) / 4⌋ + 1).toNat - 1

end

end A046861.P12941880478756086115

/-! ## A046861.P3623031817562263131

`A007318(∑[n])+2*floor(A046862(n+1)/4)`
-/

namespace A046861.P3623031817562263131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * ⌊(A046862 (n + 1) : ℚ) / 4⌋

end

end A046861.P3623031817562263131

/-!
# A046862: Upper members of a "good pair" of the form (k, 2*k +- 1).

The programs for A046862, there is no canonical definition to state claims against.
-/

/-! ## A046862.P16965842174614053229

`A147666(A046861(n+1))`
-/

namespace A046862.P16965842174614053229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (A046861 (n + 1)).toNat

end

end A046862.P16965842174614053229

/-! ## A046862.P18123578521450592185

`A047266(A046861(n+1)+1)`
-/

namespace A046862.P18123578521450592185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (A046861 (n + 1) + 1).toNat

end

end A046862.P18123578521450592185

/-! ## A046862.P17263185453084821454

`A249916(A046861(n+1)-1)`
-/

namespace A046862.P17263185453084821454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (A046861 (n + 1) - 1).toNat

end

end A046862.P17263185453084821454

/-!
# A046864: Smallest number whose digits sum to n-th prime.

The programs for A046864, the canonical program `A046864.P8515681666187092735` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046864 has offset 1).

The definition of A046864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046864.P964360192701286541

`A051885(Δ[A007504(n)])`
-/

namespace A046864.P964360192701286541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (f1 (n + 1) - f1 n).toNat

end

end A046864.P964360192701286541

namespace A046864

/-- `A051885(Δ[A007504(n)])` -/
def P964360192701286541.Spec : Prop :=
  ∀ n, P964360192701286541.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P8515681666187092735

`A051885(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046864

/-- `A051885(A000040(n+1))` -/
def P8515681666187092735.Spec : Prop :=
  ∀ n, P8515681666187092735.a n = A046864 (n + 1)

theorem P8515681666187092735.correct : P8515681666187092735.Spec := by
  intro n
  simp only [A046864, Nat.add_sub_cancel]

end A046864

/-! ## A046864.P16148980493712422436

`A051885(A008578(n+2))`
-/

namespace A046864.P16148980493712422436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A008578 (n + 2)).toNat

end

end A046864.P16148980493712422436

namespace A046864

/-- `A051885(A008578(n+2))` -/
def P16148980493712422436.Spec : Prop :=
  ∀ n, P16148980493712422436.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P796675501180032533

`A051885(A182986(n+2))`
-/

namespace A046864.P796675501180032533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A182986 (n + 2)).toNat

end

end A046864.P796675501180032533

namespace A046864

/-- `A051885(A182986(n+2))` -/
def P796675501180032533.Spec : Prop :=
  ∀ n, P796675501180032533.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P11231942650424176131

`A051885(record[A006530(n+2)])`
-/

namespace A046864.P11231942650424176131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046864.P11231942650424176131

namespace A046864

/-- `A051885(record[A006530(n+2)])` -/
def P11231942650424176131.Spec : Prop :=
  ∀ n, P11231942650424176131.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P13320677032381675059

`A051885(record[A008472(n+2)])`
-/

namespace A046864.P13320677032381675059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046864.P13320677032381675059

namespace A046864

/-- `A051885(record[A008472(n+2)])` -/
def P13320677032381675059.Spec : Prop :=
  ∀ n, P13320677032381675059.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P3449926055818723207

`A051885(record[A014963(n+2)])`
-/

namespace A046864.P3449926055818723207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046864.P3449926055818723207

namespace A046864

/-- `A051885(record[A014963(n+2)])` -/
def P3449926055818723207.Spec : Prop :=
  ∀ n, P3449926055818723207.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P4421829676001526383

`A051885(record[A020639(n+2)])`
-/

namespace A046864.P4421829676001526383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046864.P4421829676001526383

namespace A046864

/-- `A051885(record[A020639(n+2)])` -/
def P4421829676001526383.Spec : Prop :=
  ∀ n, P4421829676001526383.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P782205638310771794

`A051885(A008864(n+1)-1)`
-/

namespace A046864.P782205638310771794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A008864 (n + 1) - 1).toNat

end

end A046864.P782205638310771794

namespace A046864

/-- `A051885(A008864(n+1)-1)` -/
def P782205638310771794.Spec : Prop :=
  ∀ n, P782205638310771794.a n = A046864 (n + 1)

theorem P782205638310771794.correct : P782205638310771794.Spec := by
  intro n
  simp only [A046864, Nat.add_sub_cancel, A046864.P782205638310771794.a, A046864.P8515681666187092735.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A051885, A051885.P11585152797781986562.a, A037124, A037124.P10531659379818548989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046864

/-! ## A046864.P4993525947881781348

`A051885(record[A000010(n+1)+1])`
-/

namespace A046864.P4993525947881781348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046864.P4993525947881781348

namespace A046864

/-- `A051885(record[A000010(n+1)+1])` -/
def P4993525947881781348.Spec : Prop :=
  ∀ n, P4993525947881781348.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P9250401606387177618

`A037124(A000040(n+1)+1)-1`
-/

namespace A046864.P9250401606387177618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A000040 (n + 1) + 1).toNat - 1

end

end A046864.P9250401606387177618

namespace A046864

/-- `A037124(A000040(n+1)+1)-1` -/
def P9250401606387177618.Spec : Prop :=
  ∀ n, P9250401606387177618.a n = A046864 (n + 1)

end A046864

/-! ## A046864.P2172666012896747461

`A051885(A007504(n+1)-A007504(n))`
-/

namespace A046864.P2172666012896747461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A007504 (n + 1) - A007504 n).toNat

end

end A046864.P2172666012896747461

namespace A046864

/-- `A051885(A007504(n+1)-A007504(n))` -/
def P2172666012896747461.Spec : Prop :=
  ∀ n, P2172666012896747461.a n = A046864 (n + 1)

end A046864

/-!
# A046867: Numbers k such that 10*11^k - 1 is prime.

The programs for A046867, there is no canonical definition to state claims against.
-/

/-! ## A046867.P12235744991646506362

`A307113(A231654(n+2))`
-/

namespace A046867.P12235744991646506362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307113 (A231654 (n + 2)).toNat

end

end A046867.P12235744991646506362

/-!
# A046868: Numbers n such that prime(n)^2 > prime(n-1)*prime(n+1).

The programs for A046868, the canonical program `A046868.P12771719425983285755` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046868 has offset 1).

The definition of A046868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046868.P9463385758867558995

`A333231(n+1)+1`
-/

namespace A046868.P9463385758867558995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1) + 1

end

end A046868.P9463385758867558995

namespace A046868

/-- `A333231(n+1)+1` -/
def P9463385758867558995.Spec : Prop :=
  ∀ n, P9463385758867558995.a n = A046868 (n + 1)

theorem P9463385758867558995.correct : P9463385758867558995.Spec := by
  intro n
  simp only [A046868, Nat.add_sub_cancel, A046868.P9463385758867558995.a, A046868.P12771719425983285755.f1, A046868.P12771719425983285755.f2, A046868.P12771719425983285755.a, A036263, A036263.P14888342997651084870.a, A333231, A333231.P6834028189182866023.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046868

/-! ## A046868.P12771719425983285755

`lt[A036263(n+1), 1]+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046868

/-- `lt[A036263(n+1), 1]+2` -/
def P12771719425983285755.Spec : Prop :=
  ∀ n, (P12771719425983285755.a n : ℤ) = A046868 (n + 1)

theorem P12771719425983285755.correct : P12771719425983285755.Spec := by
  intro n
  simp only [A046868, Nat.add_sub_cancel]

end A046868

/-! ## A046868.P962600343033664449

`A233671(n+1)-A391658(n+1)`
-/

namespace A046868.P962600343033664449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - A391658 (n + 1)

end

end A046868.P962600343033664449

namespace A046868

/-- `A233671(n+1)-A391658(n+1)` -/
def P962600343033664449.Spec : Prop :=
  ∀ n, P962600343033664449.a n = A046868 (n + 1)

theorem P962600343033664449.correct : P962600343033664449.Spec := by
  intro n
  simp only [A046868, Nat.add_sub_cancel, A046868.P962600343033664449.a, A046868.P12771719425983285755.f1, A046868.P12771719425983285755.f2, A046868.P12771719425983285755.a, A036263, A036263.P14888342997651084870.a, A233671, A233671.P2639350309273888819.f1, A233671.P2639350309273888819.f2, A233671.P2639350309273888819.a, A391658, A391658.P1593916310506347255.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046868

/-! ## A046868.P13241491825492065713

`∪[A064113(n+1), A258026(n+1)]+1`
-/

namespace A046868.P13241491825492065713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A046868.P13241491825492065713

namespace A046868

/-- `∪[A064113(n+1), A258026(n+1)]+1` -/
def P13241491825492065713.Spec : Prop :=
  ∀ n, (P13241491825492065713.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P7284449155784067431

`eq[A079054(n+2)², A079054(n+2)]+2`
-/

namespace A046868.P7284449155784067431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A046868.P7284449155784067431

namespace A046868

/-- `eq[A079054(n+2)², A079054(n+2)]+2` -/
def P7284449155784067431.Spec : Prop :=
  ∀ n, (P7284449155784067431.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P13366492614181327535

`filter[n+2, A139312(#)]`
-/

namespace A046868.P13366492614181327535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A139312 (f1 j) = 1) n)

end

end A046868.P13366492614181327535

namespace A046868

/-- `filter[n+2, A139312(#)]` -/
def P13366492614181327535.Spec : Prop :=
  ∀ n, (P13366492614181327535.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P11439270926523210441

`lt[Δ[A050216(n)], n]+1`
-/

namespace A046868.P11439270926523210441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A046868.P11439270926523210441

namespace A046868

/-- `lt[Δ[A050216(n)], n]+1` -/
def P11439270926523210441.Spec : Prop :=
  ∀ n, (P11439270926523210441.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P1341030012909999270

`lt[0, A056221(n+1)]+2`
-/

namespace A046868.P1341030012909999270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A046868.P1341030012909999270

namespace A046868

/-- `lt[0, A056221(n+1)]+2` -/
def P1341030012909999270.Spec : Prop :=
  ∀ n, (P1341030012909999270.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P3358045116322471318

`lt[1, A228098(n+1)]+2`
-/

namespace A046868.P3358045116322471318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A046868.P3358045116322471318

namespace A046868

/-- `lt[1, A228098(n+1)]+2` -/
def P3358045116322471318.Spec : Prop :=
  ∀ n, (P3358045116322471318.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P10495250964610148818

`lt[1, A108415(n+2)]+2`
-/

namespace A046868.P10495250964610148818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A046868.P10495250964610148818

namespace A046868

/-- `lt[1, A108415(n+2)]+2` -/
def P10495250964610148818.Spec : Prop :=
  ∀ n, (P10495250964610148818.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P5736712605868335491

`lt[A320146(n+2), n]+2`
-/

namespace A046868.P5736712605868335491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A046868.P5736712605868335491

namespace A046868

/-- `lt[A320146(n+2), n]+2` -/
def P5736712605868335491.Spec : Prop :=
  ∀ n, (P5736712605868335491.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P47925279436824591

`lt[Δ[A001223(n+1)], 1]+2`
-/

namespace A046868.P47925279436824591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A046868.P47925279436824591

namespace A046868

/-- `lt[Δ[A001223(n+1)], 1]+2` -/
def P47925279436824591.Spec : Prop :=
  ∀ n, (P47925279436824591.a n : ℤ) = A046868 (n + 1)

theorem P47925279436824591.correct : P47925279436824591.Spec := by
  intro n
  simp only [A046868, Nat.add_sub_cancel, A046868.P47925279436824591.f2, A046868.P47925279436824591.f1, A046868.P47925279436824591.f3, A046868.P47925279436824591.a, A046868.P12771719425983285755.f1, A046868.P12771719425983285755.f2, A046868.P12771719425983285755.a, A001223, A001223.P5083310856331133973.a, A036263, A036263.P14888342997651084870.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046868

/-! ## A046868.P2265808301161297737

`lt[Δ[A046933(n+1)], 1]+2`
-/

namespace A046868.P2265808301161297737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A046868.P2265808301161297737

namespace A046868

/-- `lt[Δ[A046933(n+1)], 1]+2` -/
def P2265808301161297737.Spec : Prop :=
  ∀ n, (P2265808301161297737.a n : ℤ) = A046868 (n + 1)

theorem P2265808301161297737.correct : P2265808301161297737.Spec := by
  intro n
  simp only [A046868, Nat.add_sub_cancel, A046868.P2265808301161297737.f2, A046868.P2265808301161297737.f1, A046868.P2265808301161297737.f3, A046868.P2265808301161297737.a, A046868.P12771719425983285755.f1, A046868.P12771719425983285755.f2, A046868.P12771719425983285755.a, A036263, A036263.P14888342997651084870.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046868

/-! ## A046868.P17000705688004184384

`lt[Δ[A218075(n+1)], 1]+2`
-/

namespace A046868.P17000705688004184384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A046868.P17000705688004184384

namespace A046868

/-- `lt[Δ[A218075(n+1)], 1]+2` -/
def P17000705688004184384.Spec : Prop :=
  ∀ n, (P17000705688004184384.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P13264205021582868598

`lt[Δ[Δ[A000040(n+1)]], 1]+2`
-/

namespace A046868.P13264205021582868598
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 2

end

end A046868.P13264205021582868598

namespace A046868

/-- `lt[Δ[Δ[A000040(n+1)]], 1]+2` -/
def P13264205021582868598.Spec : Prop :=
  ∀ n, (P13264205021582868598.a n : ℤ) = A046868 (n + 1)

theorem P13264205021582868598.correct : P13264205021582868598.Spec := by
  intro n
  simp only [A046868, Nat.add_sub_cancel, A046868.P13264205021582868598.f3, A046868.P13264205021582868598.f2, A046868.P13264205021582868598.f1, A046868.P13264205021582868598.f4, A046868.P13264205021582868598.a, A046868.P12771719425983285755.f1, A046868.P12771719425983285755.f2, A046868.P12771719425983285755.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046868

/-! ## A046868.P10587148713442243464

`lt[Δ[Δ[A040976(n+2)]²], 3]+3`
-/

namespace A046868.P10587148713442243464
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 3

end

end A046868.P10587148713442243464

namespace A046868

/-- `lt[Δ[Δ[A040976(n+2)]²], 3]+3` -/
def P10587148713442243464.Spec : Prop :=
  ∀ n, (P10587148713442243464.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P3239550504578922964

`A020725(A333231(n+1))`
-/

namespace A046868.P3239550504578922964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A333231 (n + 1)).toNat

end

end A046868.P3239550504578922964

namespace A046868

/-- `A020725(A333231(n+1))` -/
def P3239550504578922964.Spec : Prop :=
  ∀ n, P3239550504578922964.a n = A046868 (n + 1)

end A046868

/-! ## A046868.P8072728822126359349

`lt[A001223(n+1), A076368(n+1)]+1`
-/

namespace A046868.P8072728822126359349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046868.P8072728822126359349

namespace A046868

/-- `lt[A001223(n+1), A076368(n+1)]+1` -/
def P8072728822126359349.Spec : Prop :=
  ∀ n, (P8072728822126359349.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P14988618631577014751

`lt[A162345(n+1), A076368(n+1)]+1`
-/

namespace A046868.P14988618631577014751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046868.P14988618631577014751

namespace A046868

/-- `lt[A162345(n+1), A076368(n+1)]+1` -/
def P14988618631577014751.Spec : Prop :=
  ∀ n, (P14988618631577014751.a n : ℤ) = A046868 (n + 1)

end A046868

/-! ## A046868.P712533189917563672

`eq[A001223(n+2), A051702(n+2)]+2`
-/

namespace A046868.P712533189917563672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A046868.P712533189917563672

namespace A046868

/-- `eq[A001223(n+2), A051702(n+2)]+2` -/
def P712533189917563672.Spec : Prop :=
  ∀ n, (P712533189917563672.a n : ℤ) = A046868 (n + 1)

end A046868

/-!
# A046869: Good primes (version 1): prime(n)^2 > prime(n-1)*prime(n+1).

The programs for A046869, the canonical program `A046869.P16773520886354257536` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046869 has offset 1).

The definition of A046869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046869.P14986490495254920187

`∪[A006562(n+1), A051634(n+1)]`
-/

namespace A046869.P14986490495254920187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046869.P14986490495254920187

namespace A046869

/-- `∪[A006562(n+1), A051634(n+1)]` -/
def P14986490495254920187.Spec : Prop :=
  ∀ n, (P14986490495254920187.a n : ℤ) = A046869 (n + 1)

end A046869

/-! ## A046869.P14863698952860657542

`∪[A051634(n+1), A071680(n+1)]`
-/

namespace A046869.P14863698952860657542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046869.P14863698952860657542

namespace A046869

/-- `∪[A051634(n+1), A071680(n+1)]` -/
def P14863698952860657542.Spec : Prop :=
  ∀ n, (P14863698952860657542.a n : ℤ) = A046869 (n + 1)

end A046869

/-! ## A046869.P16773520886354257536

`A000040(A046868(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046869

/-- `A000040(A046868(n+1))` -/
def P16773520886354257536.Spec : Prop :=
  ∀ n, P16773520886354257536.a n = A046869 (n + 1)

theorem P16773520886354257536.correct : P16773520886354257536.Spec := by
  intro n
  simp only [A046869, Nat.add_sub_cancel]

end A046869

/-! ## A046869.P11648120813727095426

`A045344(A333231(n+1))`
-/

namespace A046869.P11648120813727095426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A333231 (n + 1)).toNat

end

end A046869.P11648120813727095426

namespace A046869

/-- `A045344(A333231(n+1))` -/
def P11648120813727095426.Spec : Prop :=
  ∀ n, P11648120813727095426.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P12218426173870414739

`A008578(A046868(n+1)+1)`
-/

namespace A046869.P12218426173870414739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046868 (n + 1) + 1).toNat

end

end A046869.P12218426173870414739

namespace A046869

/-- `A008578(A046868(n+1)+1)` -/
def P12218426173870414739.Spec : Prop :=
  ∀ n, P12218426173870414739.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P18024317589405936929

`A000040(A333231(n+1)+1)`
-/

namespace A046869.P18024317589405936929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333231 (n + 1) + 1).toNat

end

end A046869.P18024317589405936929

namespace A046869

/-- `A000040(A333231(n+1)+1)` -/
def P18024317589405936929.Spec : Prop :=
  ∀ n, P18024317589405936929.a n = A046869 (n + 1)

theorem P18024317589405936929.correct : P18024317589405936929.Spec := by
  intro n
  simp only [A046869, Nat.add_sub_cancel, A046869.P18024317589405936929.a, A046869.P16773520886354257536.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046868, A046868.P12771719425983285755.f1, A046868.P12771719425983285755.f2, A046868.P12771719425983285755.a, A333231, A333231.P6834028189182866023.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046869

/-! ## A046869.P7943057603630636202

`A045344(A046868(n+1)-1)`
-/

namespace A046869.P7943057603630636202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A046868 (n + 1) - 1).toNat

end

end A046869.P7943057603630636202

namespace A046869

/-- `A045344(A046868(n+1)-1)` -/
def P7943057603630636202.Spec : Prop :=
  ∀ n, P7943057603630636202.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P11998769982447939950

`A000040(lt[A320146(n+2), n]+2)`
-/

namespace A046869.P11998769982447939950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A046869.P11998769982447939950

namespace A046869

/-- `A000040(lt[A320146(n+2), n]+2)` -/
def P11998769982447939950.Spec : Prop :=
  ∀ n, P11998769982447939950.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P2491839822532285557

`p?[A045344(n+1)-A051702(n+1)]`
-/

namespace A046869.P2491839822532285557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - A051702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046869.P2491839822532285557

namespace A046869

/-- `p?[A045344(n+1)-A051702(n+1)]` -/
def P2491839822532285557.Spec : Prop :=
  ∀ n, P2491839822532285557.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P3740527798089989474

`p?[or(A045344(n+1), A079054(n+2))]`
-/

namespace A046869.P3740527798089989474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045344 (n + 1)) (A079054 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046869.P3740527798089989474

namespace A046869

/-- `p?[or(A045344(n+1), A079054(n+2))]` -/
def P3740527798089989474.Spec : Prop :=
  ∀ n, P3740527798089989474.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P7602965638835028650

`p?[or(A065091(n+1), A079054(n+2))]`
-/

namespace A046869.P7602965638835028650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065091 (n + 1)) (A079054 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046869.P7602965638835028650

namespace A046869

/-- `p?[or(A065091(n+1), A079054(n+2))]` -/
def P7602965638835028650.Spec : Prop :=
  ∀ n, P7602965638835028650.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P8827805943445987555

`A006005(A046868(n+1)%(∑[n+3]+1))`
-/

namespace A046869.P8827805943445987555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A046868 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A046869.P8827805943445987555

namespace A046869

/-- `A006005(A046868(n+1)%(∑[n+3]+1))` -/
def P8827805943445987555.Spec : Prop :=
  ∀ n, P8827805943445987555.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P1948107938496822614

`A006005(A046868(n+1)+A000007(n+1))`
-/

namespace A046869.P1948107938496822614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A046868 (n + 1) + A000007 (n + 1)).toNat

end

end A046869.P1948107938496822614

namespace A046869

/-- `A006005(A046868(n+1)+A000007(n+1))` -/
def P1948107938496822614.Spec : Prop :=
  ∀ n, P1948107938496822614.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P17652161521505233781

`A000040(A233671(n+1)-A391658(n+1))`
-/

namespace A046869.P17652161521505233781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233671 (n + 1) - A391658 (n + 1)).toNat

end

end A046869.P17652161521505233781

namespace A046869

/-- `A000040(A233671(n+1)-A391658(n+1))` -/
def P17652161521505233781.Spec : Prop :=
  ∀ n, P17652161521505233781.a n = A046869 (n + 1)

theorem P17652161521505233781.correct : P17652161521505233781.Spec := by
  intro n
  simp only [A046869, Nat.add_sub_cancel, A046869.P17652161521505233781.a, A046869.P16773520886354257536.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046868, A046868.P12771719425983285755.f1, A046868.P12771719425983285755.f2, A046868.P12771719425983285755.a, A233671, A233671.P2639350309273888819.f1, A233671.P2639350309273888819.f2, A233671.P2639350309273888819.a, A391658, A391658.P1593916310506347255.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046869

/-! ## A046869.P13692477425595721073

`A006005(A046868(n+1))%A343449(n+1)`
-/

namespace A046869.P13692477425595721073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (A046868 (n + 1)).toNat) (A343449 (n + 1))

end

end A046869.P13692477425595721073

namespace A046869

/-- `A006005(A046868(n+1))%A343449(n+1)` -/
def P13692477425595721073.Spec : Prop :=
  ∀ n, P13692477425595721073.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P18253043512666830548

`A065091(lt[A001223(n+1), A076368(n+1)])`
-/

namespace A046869.P18253043512666830548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046869.P18253043512666830548

namespace A046869

/-- `A065091(lt[A001223(n+1), A076368(n+1)])` -/
def P18253043512666830548.Spec : Prop :=
  ∀ n, P18253043512666830548.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P16416558748819663287

`A065091(lt[A162345(n+1), A076368(n+1)])`
-/

namespace A046869.P16416558748819663287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046869.P16416558748819663287

namespace A046869

/-- `A065091(lt[A162345(n+1), A076368(n+1)])` -/
def P16416558748819663287.Spec : Prop :=
  ∀ n, P16416558748819663287.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P6154810992744848511

`A065091(lt[A054541(n+2), A076368(n+1)])`
-/

namespace A046869.P6154810992744848511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046869.P6154810992744848511

namespace A046869

/-- `A065091(lt[A054541(n+2), A076368(n+1)])` -/
def P6154810992744848511.Spec : Prop :=
  ∀ n, P6154810992744848511.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P3757839643659389441

`A065091(lt[A008578(n+1), A118534(n+1)+1])`
-/

namespace A046869.P3757839643659389441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046869.P3757839643659389441

namespace A046869

/-- `A065091(lt[A008578(n+1), A118534(n+1)+1])` -/
def P3757839643659389441.Spec : Prop :=
  ∀ n, P3757839643659389441.a n = A046869 (n + 1)

end A046869

/-! ## A046869.P12931425563449057959

`A000040(lt[A054541(n+2), A076368(n+1)]+1)`
-/

namespace A046869.P12931425563449057959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A046869.P12931425563449057959

namespace A046869

/-- `A000040(lt[A054541(n+2), A076368(n+1)]+1)` -/
def P12931425563449057959.Spec : Prop :=
  ∀ n, P12931425563449057959.a n = A046869 (n + 1)

end A046869

/-!
# A046870: Numbers k such that sigma_1(k) divides sigma_4(k).

The programs for A046870, the canonical program `A046870.P1460790917332978805` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046870 has offset 1).

The definition of A046870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046870.P1460790917332978805

`lt[A001159(n+1)%A000203(n+1), 1]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046870

/-- `lt[A001159(n+1)%A000203(n+1), 1]+1` -/
def P1460790917332978805.Spec : Prop :=
  ∀ n, (P1460790917332978805.a n : ℤ) = A046870 (n + 1)

theorem P1460790917332978805.correct : P1460790917332978805.Spec := by
  intro n
  simp only [A046870, Nat.add_sub_cancel]

end A046870

/-! ## A046870.P12123380852350629901

`A020487(∑[∏{e}[A020495(n+1), #]])`
-/

namespace A046870.P12123380852350629901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020495 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046870.P12123380852350629901

namespace A046870

/-- `A020487(∑[∏{e}[A020495(n+1), #]])` -/
def P12123380852350629901.Spec : Prop :=
  ∀ n, P12123380852350629901.a n = A046870 (n + 1)

end A046870

/-! ## A046870.P3769544258303133053

`record[A020487(n+1)%A031928(A264017(n+3))]`
-/

namespace A046870.P3769544258303133053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020487 (n + 1)) (A031928 (A264017 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046870.P3769544258303133053

namespace A046870

/-- `record[A020487(n+1)%A031928(A264017(n+3))]` -/
def P3769544258303133053.Spec : Prop :=
  ∀ n, P3769544258303133053.a n = A046870 (n + 1)

end A046870

/-! ## A046870.P4923245799869661753

`A020487(A246086(n+1)%A269311(n+5))`
-/

namespace A046870.P4923245799869661753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (Int.tmod (A246086 (n + 1)) (A269311 (n + 5))).toNat

end

end A046870.P4923245799869661753

namespace A046870

/-- `A020487(A246086(n+1)%A269311(n+5))` -/
def P4923245799869661753.Spec : Prop :=
  ∀ n, P4923245799869661753.a n = A046870 (n + 1)

end A046870

/-!
# A046871: Numbers k such that sigma_2(k) divides sigma_4(k).

The programs for A046871, there is no canonical definition to state claims against.
-/

/-! ## A046871.P414785635901871968

`∪[A066109(n+1), A066112(n+1)]`
-/

namespace A046871.P414785635901871968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046871.P414785635901871968

/-! ## A046871.P2762209224313166659

`record[A143864(n+1)%A156229(3*n+1)]`
-/

namespace A046871.P2762209224313166659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143864 (n + 1)) (A156229 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046871.P2762209224313166659

/-! ## A046871.P15830259599013872589

`A046870(n+1)-A010051(A022188(n))`
-/

namespace A046871.P15830259599013872589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046870 (n + 1) - A010051 (A022188 n).toNat

end

end A046871.P15830259599013872589

/-! ## A046871.P7575109056621927236

`A020487(n+1)-A163581(A155742(n))`
-/

namespace A046871.P7575109056621927236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1) - A163581 (A155742 n).toNat

end

end A046871.P7575109056621927236

/-! ## A046871.P13898731388079652808

`A020487(n+1)-A163581(A155826(n))`
-/

namespace A046871.P13898731388079652808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1) - A163581 (A155826 n).toNat

end

end A046871.P13898731388079652808

/-!
# A046873: Number of total orders extending inclusion on P({1,...,n}).

The programs for A046873, there is no canonical definition to state claims against.
-/

/-! ## A046873.P5423977199988243906

`A114717(A002110(n))`
-/

namespace A046873.P5423977199988243906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (A002110 n).toNat

end

end A046873.P5423977199988243906

/-! ## A046873.P5061685258732492786

`A119841(A000108(n))`
-/

namespace A046873.P5061685258732492786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119841 (A000108 n).toNat

end

end A046873.P5061685258732492786

/-!
# A046877: a(n) = a(n-2) + a(n-3), with a(0) = 3, a(1) = 2, a(2) = 6.

The programs for A046877, the canonical program `A046877.P6562189154896915264` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046877 has offset 0).

The definition of A046877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A046877.P6562189154896915264`, by `A046877.P6562189154896915264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046877.P6562189154896915264

`a(n-2)+a(n-3)` with `a(0)=3, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046877

/-- `a(n-2)+a(n-3)` -/
def P6562189154896915264.Spec : Prop :=
  ∀ n, (P6562189154896915264.a n : ℤ) = A046877 n

theorem P6562189154896915264.correct : P6562189154896915264.Spec := by
  intro n
  simp only [A046877]

end A046877

/-! ## A046877.P14464040146240121230

`ogf((3+2x+3x^2)/(1-x^2-x^3))`
-/

namespace A046877.P14464040146240121230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 3] [1, 0, -1, -1] n

end

end A046877.P14464040146240121230

namespace A046877

/-- `ogf((3+2x+3x^2)/(1-x^2-x^3))` -/
def P14464040146240121230.Spec : Prop :=
  ∀ n, P14464040146240121230.a n = A046877 n

end A046877

/-! ## A046877.P15642304132995022803

`a(n-2)-round(-a(n-3))` with `a(0)=3, a(1)=2, a(2)=6`

`round` is left out, it is the identity on integers.
-/

namespace A046877.P15642304132995022803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 6] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A046877.P15642304132995022803

namespace A046877

/-- `a(n-2)-round(-a(n-3))` -/
def P15642304132995022803.Spec : Prop :=
  ∀ n, P15642304132995022803.a n = A046877 n

end A046877

/-! ## A046877.P16923072919872465639

`abs(Δ[a(n-2)-a(n-3)])` with `a(0)=4, a(1)=1, a(2)=3`
-/

namespace A046877.P16923072919872465639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A046877.P16923072919872465639

namespace A046877

/-- `abs(Δ[a(n-2)-a(n-3)])` -/
def P16923072919872465639.Spec : Prop :=
  ∀ n, P16923072919872465639.a n = A046877 n

end A046877

/-! ## A046877.P15553389942859920158

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=3, a(1)=2, a(2)=6, a(3)=5`
-/

namespace A046877.P15553389942859920158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 6, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A046877.P15553389942859920158

namespace A046877

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P15553389942859920158.Spec : Prop :=
  ∀ n, P15553389942859920158.a n = A046877 n

end A046877

/-! ## A046877.P18201591092922641663

`A001608(n)+2*A007307(n)`
-/

namespace A046877.P18201591092922641663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n + 2 * A007307 n

end

end A046877.P18201591092922641663

namespace A046877

/-- `A001608(n)+2*A007307(n)` -/
def P18201591092922641663.Spec : Prop :=
  ∀ n, P18201591092922641663.a n = A046877 n

end A046877

/-! ## A046877.P9669700885418244519

`A276477(n+1)+A134816(n+2)`
-/

namespace A046877.P9669700885418244519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (n + 1) + A134816 (n + 2)

end

end A046877.P9669700885418244519

namespace A046877

/-- `A276477(n+1)+A134816(n+2)` -/
def P9669700885418244519.Spec : Prop :=
  ∀ n, P9669700885418244519.a n = A046877 n

end A046877

/-! ## A046877.P5905745897880185935

`A001608(n+3)+A000931(n+1)`
-/

namespace A046877.P5905745897880185935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 3) + A000931 (n + 1)

end

end A046877.P5905745897880185935

namespace A046877

/-- `A001608(n+3)+A000931(n+1)` -/
def P5905745897880185935.Spec : Prop :=
  ∀ n, P5905745897880185935.a n = A046877 n

end A046877

/-! ## A046877.P17550034349858786101

`A276275(n+2)+A228361(n+2)`
-/

namespace A046877.P17550034349858786101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (n + 2) + A228361 (n + 2)

end

end A046877.P17550034349858786101

namespace A046877

/-- `A276275(n+2)+A228361(n+2)` -/
def P17550034349858786101.Spec : Prop :=
  ∀ n, P17550034349858786101.a n = A046877 n

end A046877

/-! ## A046877.P17664530245669984705

`A084338(n+3)-A133034(n+1)`
-/

namespace A046877.P17664530245669984705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 3) - A133034 (n + 1)

end

end A046877.P17664530245669984705

namespace A046877

/-- `A084338(n+3)-A133034(n+1)` -/
def P17664530245669984705.Spec : Prop :=
  ∀ n, P17664530245669984705.a n = A046877 n

end A046877

/-! ## A046877.P14147267429126347737

`A276275(n+2)+A134816(n+3)`
-/

namespace A046877.P14147267429126347737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (n + 2) + A134816 (n + 3)

end

end A046877.P14147267429126347737

namespace A046877

/-- `A276275(n+2)+A134816(n+3)` -/
def P14147267429126347737.Spec : Prop :=
  ∀ n, P14147267429126347737.a n = A046877 n

end A046877

/-! ## A046877.P12131983454120589393

`A141038(n+1)+A141038(n+1)+A000931(n)`
-/

namespace A046877.P12131983454120589393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (n + 1) + (A141038 (n + 1) + A000931 n)

end

end A046877.P12131983454120589393

namespace A046877

/-- `A141038(n+1)+A141038(n+1)+A000931(n)` -/
def P12131983454120589393.Spec : Prop :=
  ∀ n, P12131983454120589393.a n = A046877 n

end A046877

/-! ## A046877.P7972305840554451909

`A000931(n+1)+A164001(n+2)+A078027(n)`
-/

namespace A046877.P7972305840554451909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A164001 (n + 2) + A078027 n)

end

end A046877.P7972305840554451909

namespace A046877

/-- `A000931(n+1)+A164001(n+2)+A078027(n)` -/
def P7972305840554451909.Spec : Prop :=
  ∀ n, P7972305840554451909.a n = A046877 n

end A046877

/-! ## A046877.P6112127905393564218

`A084338(n+1)+A134816(n+2)+A078027(n)`
-/

namespace A046877.P6112127905393564218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) + (A134816 (n + 2) + A078027 n)

end

end A046877.P6112127905393564218

namespace A046877

/-- `A084338(n+1)+A134816(n+2)+A078027(n)` -/
def P6112127905393564218.Spec : Prop :=
  ∀ n, P6112127905393564218.a n = A046877 n

end A046877

/-! ## A046877.P12764103742045672727

`A084338(n+1)+A276276(n+2)+A000931(n)`
-/

namespace A046877.P12764103742045672727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) + (A276276 (n + 2) + A000931 n)

end

end A046877.P12764103742045672727

namespace A046877

/-- `A084338(n+1)+A276276(n+2)+A000931(n)` -/
def P12764103742045672727.Spec : Prop :=
  ∀ n, P12764103742045672727.a n = A046877 n

end A046877

/-! ## A046877.P14686433516903024440

`A164001(n+2)+A182097(n)-A133034(n+1)`
-/

namespace A046877.P14686433516903024440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 2) + (A182097 n - A133034 (n + 1))

end

end A046877.P14686433516903024440

namespace A046877

/-- `A164001(n+2)+A182097(n)-A133034(n+1)` -/
def P14686433516903024440.Spec : Prop :=
  ∀ n, P14686433516903024440.a n = A046877 n

end A046877

/-! ## A046877.P7060958865167345272

`A000931(n+1)+A276275(n+2)+A007307(n+1)`
-/

namespace A046877.P7060958865167345272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A276275 (n + 2) + A007307 (n + 1))

end

end A046877.P7060958865167345272

namespace A046877

/-- `A000931(n+1)+A276275(n+2)+A007307(n+1)` -/
def P7060958865167345272.Spec : Prop :=
  ∀ n, P7060958865167345272.a n = A046877 n

end A046877

/-! ## A046877.P17768719093728113293

`A084338(n+1)+A276275(n+2)-A000931(n+1)`
-/

namespace A046877.P17768719093728113293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) + (A276275 (n + 2) - A000931 (n + 1))

end

end A046877.P17768719093728113293

namespace A046877

/-- `A084338(n+1)+A276275(n+2)-A000931(n+1)` -/
def P17768719093728113293.Spec : Prop :=
  ∀ n, P17768719093728113293.a n = A046877 n

end A046877

/-! ## A046877.P2222256923176950416

`A054405(n+1)+A276477(n+1)-A054405(n)`
-/

namespace A046877.P2222256923176950416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 1) + (A276477 (n + 1) - A054405 n)

end

end A046877.P2222256923176950416

namespace A046877

/-- `A054405(n+1)+A276477(n+1)-A054405(n)` -/
def P2222256923176950416.Spec : Prop :=
  ∀ n, P2222256923176950416.a n = A046877 n

end A046877

/-!
# A046878: Numerator of (1/n)*Sum_{k=0..n-1} 1/binomial(n-1,k) for n>0 else 0.

The programs for A046878, there is no canonical definition to state claims against.
-/

/-! ## A046878.P4743080072639402885

`Δ[A177737(log2(A011782(n)))]`
-/

namespace A046878.P4743080072639402885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046878.P4743080072639402885

/-! ## A046878.P12719650291530175832

`Δ[A177737(A004273(n)-n)]`
-/

namespace A046878.P12719650291530175832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046878.P12719650291530175832

/-! ## A046878.P4123166833793178155

`Δ[A177737(A004526(A004273(n)))]`
-/

namespace A046878.P4123166833793178155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046878.P4123166833793178155

/-! ## A046878.P3426127874121435632

`A177737(n)-A177737(log2(A011782(n)))`
-/

namespace A046878.P3426127874121435632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 n - A177737 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A046878.P3426127874121435632

/-! ## A046878.P7661061061554071788

`A177737(n)-A177737(A004273(n)-n)`
-/

namespace A046878.P7661061061554071788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 n - A177737 (A004273 n - (n : ℤ)).toNat

end

end A046878.P7661061061554071788

/-! ## A046878.P18343446764700567552

`A177737(n)-A177737(A259361(n²))`
-/

namespace A046878.P18343446764700567552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 n - A177737 (A259361 (n ^ 2)).toNat

end

end A046878.P18343446764700567552

/-! ## A046878.P6724919725852888074

`Δ[A177737(A259361(n²))]`
-/

namespace A046878.P6724919725852888074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046878.P6724919725852888074

/-! ## A046878.P14310159160259955916

`Δ[A177737(A004197(A001844(n)))]`
-/

namespace A046878.P14310159160259955916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 (A004197 (A001844 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046878.P14310159160259955916

/-!
# A046879: Denominator of (1/n)*Sum_{k=0..n-1} 1/binomial(n-1,k) for n>0 else 1.

The programs for A046879, there is no canonical definition to state claims against.
-/

/-! ## A046879.P1912636947929546681

`lcm(2, A241519(n))/2`
-/

namespace A046879.P1912636947929546681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A241519 n) : ℚ) / 2

end

end A046879.P1912636947929546681

/-! ## A046879.P10766202804491181068

`A000142(n)/gcd(A000142(n), A182430(n))`
-/

namespace A046879.P10766202804491181068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A182430 n) : ℚ)

end

end A046879.P10766202804491181068

/-! ## A046879.P260939622368625924

`A014682(lcm(2, A241519(n)))`
-/

namespace A046879.P260939622368625924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A241519 n))

end

end A046879.P260939622368625924

/-! ## A046879.P18433744064634362203

`A241519(n)/A000034(A046878(n))`
-/

namespace A046879.P18433744064634362203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241519 n : ℚ) / (A000034 (A046878 n).toNat : ℚ)

end

end A046879.P18433744064634362203

/-! ## A046879.P2180844667873608515

`A026741(A241519(n))`
-/

namespace A046879.P2180844667873608515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A241519 n).toNat

end

end A046879.P2180844667873608515

/-!
# A046882: 

The programs for A046882, there is no canonical definition to state claims against.
-/

/-! ## A046882.P17299698006704406588

`n!^n!`
-/

namespace A046882.P17299698006704406588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ Nat.factorial n

end

end A046882.P17299698006704406588

/-!
# A046883: Automorphic primes: primes p such that p is k-th prime and p ends in k.

The programs for A046883, there is no canonical definition to state claims against.
-/

/-! ## A046883.P13215022162638783626

`∩[A306572(n+1)+1, A306572(n+1)]`
-/

namespace A046883.P13215022162638783626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306572 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046883.P13215022162638783626

/-! ## A046883.P1207881110381955967

`A075902(∑[gcd(7, 1-n)])`
-/

namespace A046883.P1207881110381955967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075902 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046883.P1207881110381955967

/-! ## A046883.P13081422824876969775

`∩[A306572(n+1), A362066(n+1)]`
-/

namespace A046883.P13081422824876969775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046883.P13081422824876969775

/-! ## A046883.P1834734372547020078

`A075902(A333884(n)+A004273(n))`
-/

namespace A046883.P1834734372547020078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075902 (A333884 n + A004273 n).toNat

end

end A046883.P1834734372547020078

/-!
# A046885: Row sums of triangle A046658.

The programs for A046885, the canonical program `A046885.P1063669167236759791` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046885 has offset 1).

The definition of A046885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046885.P16655962554164684229

`2*5^n-A046714(n)`
-/

namespace A046885.P16655962554164684229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) - A046714 n

end

end A046885.P16655962554164684229

namespace A046885

/-- `2*5^n-A046714(n)` -/
def P16655962554164684229.Spec : Prop :=
  ∀ n, P16655962554164684229.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P1063669167236759791

`(A046748(n+1)-5^n)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046885

/-- `(A046748(n+1)-5^n)/2` -/
def P1063669167236759791.Spec : Prop :=
  ∀ n, P1063669167236759791.a n = (A046885 (n + 1) : ℚ)

end A046885

/-! ## A046885.P14387522425642649814

`5*a(n-1)-A000108(n)` with `a(0)=1`
-/

namespace A046885.P14387522425642649814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A000108 n

end

end A046885.P14387522425642649814

namespace A046885

/-- `5*a(n-1)-A000108(n)` -/
def P14387522425642649814.Spec : Prop :=
  ∀ n, P14387522425642649814.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P6624568221391639597

`5*a(n-1)-abs(A168491(n))` with `a(0)=1`
-/

namespace A046885.P6624568221391639597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - |A168491 n|

end

end A046885.P6624568221391639597

namespace A046885

/-- `5*a(n-1)-abs(A168491(n))` -/
def P6624568221391639597.Spec : Prop :=
  ∀ n, P6624568221391639597.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P13909357240607026815

`5*a(n-1)-Δ[A155587(n)]` with `a(0)=1`
-/

namespace A046885.P13909357240607026815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A046885.P13909357240607026815

namespace A046885

/-- `5*a(n-1)-Δ[A155587(n)]` -/
def P13909357240607026815.Spec : Prop :=
  ∀ n, P13909357240607026815.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P14112843086457913225

`5*a(n-1)-A120588(n+1)` with `a(0)=1`
-/

namespace A046885.P14112843086457913225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A120588 (n + 1)

end

end A046885.P14112843086457913225

namespace A046885

/-- `5*a(n-1)-A120588(n+1)` -/
def P14112843086457913225.Spec : Prop :=
  ∀ n, P14112843086457913225.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P17994864326484492938

`5*a(n-1)-(A120304(n)+2)` with `a(0)=1`
-/

namespace A046885.P17994864326484492938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (A120304 n + 2)

end

end A046885.P17994864326484492938

namespace A046885

/-- `5*a(n-1)-(A120304(n)+2)` -/
def P17994864326484492938.Spec : Prop :=
  ∀ n, P17994864326484492938.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P7452760288841052667

`5*a(n-1)-A028303(2*n)` with `a(0)=1`
-/

namespace A046885.P7452760288841052667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A028303 (2 * n)

end

end A046885.P7452760288841052667

namespace A046885

/-- `5*a(n-1)-A028303(2*n)` -/
def P7452760288841052667.Spec : Prop :=
  ∀ n, P7452760288841052667.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P14104832506614258978

`5*a(n-1)-A057977(2*n)` with `a(0)=1`
-/

namespace A046885.P14104832506614258978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A057977 (2 * n)

end

end A046885.P14104832506614258978

namespace A046885

/-- `5*a(n-1)-A057977(2*n)` -/
def P14104832506614258978.Spec : Prop :=
  ∀ n, P14104832506614258978.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P15015537849703900095

`5*a(n-1)-A126324(2*n)` with `a(0)=1`
-/

namespace A046885.P15015537849703900095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A126324 (2 * n)

end

end A046885.P15015537849703900095

namespace A046885

/-- `5*a(n-1)-A126324(2*n)` -/
def P15015537849703900095.Spec : Prop :=
  ∀ n, P15015537849703900095.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P7129596897034315729

`5*a(n-1)-A089408(Δ[n²])` with `a(0)=1`
-/

namespace A046885.P7129596897034315729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046885.P7129596897034315729

namespace A046885

/-- `5*a(n-1)-A089408(Δ[n²])` -/
def P7129596897034315729.Spec : Prop :=
  ∀ n, P7129596897034315729.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P12666666447763657360

`5*a(n-1)-A097331(Δ[n²])` with `a(0)=1`
-/

namespace A046885.P12666666447763657360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046885.P12666666447763657360

namespace A046885

/-- `5*a(n-1)-A097331(Δ[n²])` -/
def P12666666447763657360.Spec : Prop :=
  ∀ n, P12666666447763657360.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P6826783490629239979

`2*A046748(n)-A046814(n)`
-/

namespace A046885.P6826783490629239979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046748 n - A046814 n

end

end A046885.P6826783490629239979

namespace A046885

/-- `2*A046748(n)-A046814(n)` -/
def P6826783490629239979.Spec : Prop :=
  ∀ n, P6826783490629239979.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P10062698275686588609

`Δ[A116391(2*n)/2]`
-/

namespace A046885.P10062698275686588609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116391 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046885.P10062698275686588609

namespace A046885

/-- `Δ[A116391(2*n)/2]` -/
def P10062698275686588609.Spec : Prop :=
  ∀ n, P10062698275686588609.a n = (A046885 (n + 1) : ℚ)

end A046885

/-! ## A046885.P2106805205585282953

`A034478(n+1)-(A046714(n)+A034478(n))`
-/

namespace A046885.P2106805205585282953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 (n + 1) - (A046714 n + A034478 n)

end

end A046885.P2106805205585282953

namespace A046885

/-- `A034478(n+1)-(A046714(n)+A034478(n))` -/
def P2106805205585282953.Spec : Prop :=
  ∀ n, P2106805205585282953.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P4572536607599674546

`5*a(n-1)-A028364(∑[n])` with `a(0)=1`
-/

namespace A046885.P4572536607599674546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A028364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046885.P4572536607599674546

namespace A046885

/-- `5*a(n-1)-A028364(∑[n])` -/
def P4572536607599674546.Spec : Prop :=
  ∀ n, P4572536607599674546.a n = A046885 (n + 1)

end A046885

/-! ## A046885.P8005390769097721909

`3*(3*(n+1)-2)*a(n-1)/(n+1)-10*(2*(n+1)-3)*a(n-2)/(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A046885.P8005390769097721909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (3 * ((3 * (n + 1) : ℤ) - 2) : ℚ) * a (n - 1) / (n + 1 : ℚ) - (10 * ((2 * (n + 1) : ℤ) - 3) : ℚ) * a (n - 2) / (n + 1 : ℚ)

end

end A046885.P8005390769097721909

namespace A046885

/-- `3*(3*(n+1)-2)*a(n-1)/(n+1)-10*(2*(n+1)-3)*a(n-2)/(n+1)` -/
def P8005390769097721909.Spec : Prop :=
  ∀ n, P8005390769097721909.a n = (A046885 (n + 1) : ℚ)

end A046885

/-!
# A046886: Number of divisors d of 2n satisfying (d+1) = prime or number of prime factors of the denominator of the even Bernoulli numbers.

The programs for A046886, the canonical program `A046886.P6072757339974154417` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046886 has offset 1).

The definition of A046886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067513, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046886.P6072757339974154417

`A067513(2*(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A046886

/-- `A067513(2*(n+1))` -/
def P6072757339974154417.Spec : Prop :=
  ∀ n, P6072757339974154417.a n = A046886 (n + 1)

theorem P6072757339974154417.correct : P6072757339974154417.Spec := by
  intro n
  simp only [A046886, Nat.add_sub_cancel]

end A046886

/-! ## A046886.P17865146534023986995

`A086668(n+1)+1`
-/

namespace A046886.P17865146534023986995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (n + 1) + 1

end

end A046886.P17865146534023986995

namespace A046886

/-- `A086668(n+1)+1` -/
def P17865146534023986995.Spec : Prop :=
  ∀ n, P17865146534023986995.a n = A046886 (n + 1)

end A046886

/-! ## A046886.P11639391878741176201

`∑{d}[n+1, A101264(#)]+1`
-/

namespace A046886.P11639391878741176201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 d + 1

end

end A046886.P11639391878741176201

namespace A046886

/-- `∑{d}[n+1, A101264(#)]+1` -/
def P11639391878741176201.Spec : Prop :=
  ∀ n, P11639391878741176201.a n = A046886 (n + 1)

end A046886

/-! ## A046886.P16422957294118662689

`∑{d}[2*(n+1), A010051(#+1)]`
-/

namespace A046886.P16422957294118662689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (d + 1)

end

end A046886.P16422957294118662689

namespace A046886

/-- `∑{d}[2*(n+1), A010051(#+1)]` -/
def P16422957294118662689.Spec : Prop :=
  ∀ n, P16422957294118662689.a n = A046886 (n + 1)

end A046886

/-! ## A046886.P15528497960874184618

`∑{d}[2*(n+1), C(2, A000005(#+1))]`
-/

namespace A046886.P15528497960874184618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 (A000005 (d + 1)).toNat

end

end A046886.P15528497960874184618

namespace A046886

/-- `∑{d}[2*(n+1), C(2, A000005(#+1))]` -/
def P15528497960874184618.Spec : Prop :=
  ∀ n, (P15528497960874184618.a n : ℤ) = A046886 (n + 1)

end A046886

/-! ## A046886.P15383551188959696940

`∑{d}[2*(n+1), C(A000010(#+1), #)]`
-/

namespace A046886.P15383551188959696940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A000010 (d + 1)).toNat d

end

end A046886.P15383551188959696940

namespace A046886

/-- `∑{d}[2*(n+1), C(A000010(#+1), #)]` -/
def P15383551188959696940.Spec : Prop :=
  ∀ n, (P15383551188959696940.a n : ℤ) = A046886 (n + 1)

end A046886

/-! ## A046886.P17823264075834892456

`1+A305818(n+1)+A101264(n+1)`
-/

namespace A046886.P17823264075834892456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A305818 (n + 1) + A101264 (n + 1))

end

end A046886.P17823264075834892456

namespace A046886

/-- `1+A305818(n+1)+A101264(n+1)` -/
def P17823264075834892456.Spec : Prop :=
  ∀ n, P17823264075834892456.a n = A046886 (n + 1)

end A046886

/-! ## A046886.P11172326143718777406

`∑{d}[n+1, A101808(#)]`
-/

namespace A046886.P11172326143718777406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101808 d

end

end A046886.P11172326143718777406

namespace A046886

/-- `∑{d}[n+1, A101808(#)]` -/
def P11172326143718777406.Spec : Prop :=
  ∀ n, P11172326143718777406.a n = A046886 (n + 1)

end A046886

/-! ## A046886.P8267748274662740522

`A101808(n+1)+A305818(n+1)+A057427(n)`
-/

namespace A046886.P8267748274662740522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 (n + 1) + (A305818 (n + 1) + A057427 n)

end

end A046886.P8267748274662740522

namespace A046886

/-- `A101808(n+1)+A305818(n+1)+A057427(n)` -/
def P8267748274662740522.Spec : Prop :=
  ∀ n, P8267748274662740522.a n = A046886 (n + 1)

end A046886

/-! ## A046886.P6502305459253228952

`A067513(A005843(n+1))%(n+3)`
-/

namespace A046886.P6502305459253228952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067513 (A005843 (n + 1)).toNat) (n + 3 : ℤ)

end

end A046886.P6502305459253228952

namespace A046886

/-- `A067513(A005843(n+1))%(n+3)` -/
def P6502305459253228952.Spec : Prop :=
  ∀ n, P6502305459253228952.a n = A046886 (n + 1)

end A046886

/-! ## A046886.P8462891112893317942

`∑{e}[A322312(2*(n+1)), #]`
-/

namespace A046886.P8462891112893317942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322312 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A046886.P8462891112893317942

namespace A046886

/-- `∑{e}[A322312(2*(n+1)), #]` -/
def P8462891112893317942.Spec : Prop :=
  ∀ n, (P8462891112893317942.a n : ℤ) = A046886 (n + 1)

end A046886

/-! ## A046886.P4784009138247426125

`A001222(A322312(2*(n+1)))`
-/

namespace A046886.P4784009138247426125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322312 (2 * (n + 1))).toNat

end

end A046886.P4784009138247426125

namespace A046886

/-- `A001222(A322312(2*(n+1)))` -/
def P4784009138247426125.Spec : Prop :=
  ∀ n, P4784009138247426125.a n = A046886 (n + 1)

end A046886

/-!
# A046888: Number of anagrams of a(n) that are prime increases.

The programs for A046888, there is no canonical definition to state claims against.
-/

/-! ## A046888.P10911950734202697458

`A046890(record[A328515(n)])`
-/

namespace A046888.P10911950734202697458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046888.P10911950734202697458

/-! ## A046888.P12281780542557196124

`A046890(A046889(n+1))`
-/

namespace A046888.P12281780542557196124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046890 (A046889 (n + 1)).toNat

end

end A046888.P12281780542557196124

/-! ## A046888.P1951918073582485322

`A046890(record[A039999(3*n+1)])`
-/

namespace A046888.P1951918073582485322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046888.P1951918073582485322

/-! ## A046888.P13645236157922205206

`A046890(lt[A046931(n+1), A001122(2*(n+1))])`
-/

namespace A046888.P13645236157922205206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046890 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046888.P13645236157922205206

/-!
# A046889: Number of anagrams of A046888(n) that are primes.

The programs for A046889, there is no canonical definition to state claims against.
-/

/-! ## A046889.P9263654990215513882

`record[A328515(n)]`
-/

namespace A046889.P9263654990215513882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046889.P9263654990215513882

/-!
# A046891: Values of n where number of permutations of digits a(n) that are prime increases.

The programs for A046891, there is no canonical definition to state claims against.
-/

/-! ## A046891.P8280517816799637293

`A046893(A046892(n+1))`
-/

namespace A046891.P8280517816799637293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046893 (A046892 (n + 1)).toNat

end

end A046891.P8280517816799637293

/-! ## A046891.P11365040158233942507

`filter[A046893(n), A217206(#)]`
-/

namespace A046891.P11365040158233942507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217206 (f1 j).toNat = 1) n)

end

end A046891.P11365040158233942507

/-! ## A046891.P2061896193770179353

`filter[A046893(n), A395958(#)]`
-/

namespace A046891.P2061896193770179353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395958 (f1 j).toNat = 1) n)

end

end A046891.P2061896193770179353

/-!
# A046895: Sizes of successive clusters in Z^4 lattice.

The programs for A046895, there is no canonical definition to state claims against.
-/

/-! ## A046895.P14270252067425597468

`∑[A000118(n)]`
-/

namespace A046895.P14270252067425597468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P14270252067425597468

/-! ## A046895.P6949979253423721197

`∑[abs(A096727(n))]`
-/

namespace A046895.P6949979253423721197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P6949979253423721197

/-! ## A046895.P17643546250585018752

`∑[A033999(n)*A096727(n)]`
-/

namespace A046895.P17643546250585018752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A096727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P17643546250585018752

/-! ## A046895.P3639169330212662568

`∑[A068073(n)*A097057(n)]`
-/

namespace A046895.P3639169330212662568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A097057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P3639169330212662568

/-! ## A046895.P12207737062468233474

`∑[A004011(n)/A010684(n)]`
-/

namespace A046895.P12207737062468233474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P12207737062468233474

/-! ## A046895.P3871413452313001314

`∑[gcd(A000038(n), A096727(n))]`
-/

namespace A046895.P3871413452313001314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A096727 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P3871413452313001314

/-! ## A046895.P16178262532754485985

`∑[lcm(A000034(n), A096727(n))]`
-/

namespace A046895.P16178262532754485985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A096727 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P16178262532754485985

/-! ## A046895.P5250104867141884960

`∑[2*A122858(A026741(n))-A122858(n)]`
-/

namespace A046895.P5250104867141884960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122858 (A026741 n).toNat - A122858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P5250104867141884960

/-! ## A046895.P4059682499583317009

`∑[A004011(n)/A125510(n)*A282544(n)]`
-/

namespace A046895.P4059682499583317009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (A125510 n : ℚ) * (A282544 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P4059682499583317009

/-! ## A046895.P14015790618239367625

`∑[A097057(2*n)]`
-/

namespace A046895.P14015790618239367625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P14015790618239367625

/-! ## A046895.P17244772928739896875

`A097057(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A046895.P17244772928739896875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097057 (n + n) + a (n - 1)

end

end A046895.P17244772928739896875

/-! ## A046895.P12531019651542860594

`∑[A133690(2*n)]`
-/

namespace A046895.P12531019651542860594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133690 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P12531019651542860594

/-! ## A046895.P6294574021770066680

`A133690(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A046895.P6294574021770066680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133690 (n + n) + a (n - 1)

end

end A046895.P6294574021770066680

/-! ## A046895.P11122897588239442754

`∑[A236922(4*n)]`
-/

namespace A046895.P11122897588239442754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236922 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P11122897588239442754

/-! ## A046895.P3104487481093203666

`∑[A236923(4*n)]`
-/

namespace A046895.P3104487481093203666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236923 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P3104487481093203666

/-! ## A046895.P1623522724165139620

`∑[A236924(4*n)]`
-/

namespace A046895.P1623522724165139620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236924 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P1623522724165139620

/-! ## A046895.P4103292265079802581

`∑[A236925(4*n)]`
-/

namespace A046895.P4103292265079802581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236925 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P4103292265079802581

/-! ## A046895.P425612813603842337

`∑[A033720(8*n)]`
-/

namespace A046895.P425612813603842337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033720 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P425612813603842337

/-! ## A046895.P7036451322029254547

`A320130(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A046895.P7036451322029254547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320130 (8 * n) + a (n - 1)

end

end A046895.P7036451322029254547

/-! ## A046895.P17136727506169719126

`∑[A028577(8*n)]`
-/

namespace A046895.P17136727506169719126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028577 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046895.P17136727506169719126

/-!
# A046896: Square elements of A046895.

The programs for A046896, there is no canonical definition to state claims against.
-/

/-! ## A046896.P17709307058196729899

`∩[n², A046895(n)]`
-/

namespace A046896.P17709307058196729899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046896.P17709307058196729899

/-! ## A046896.P5287927130903455857

`∩[∑[A000118(n)], Δ[n²]²]`
-/

namespace A046896.P5287927130903455857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f4 (n + 1) : ℤ) - (f4 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A046896.P5287927130903455857

/-! ## A046896.P15257199018279351654

`∩[A046895(n), A000290(n)]`
-/

namespace A046896.P15257199018279351654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046896.P15257199018279351654

/-!
# A046897: Sum of divisors of n that are not divisible by 4.

The programs for A046897, the canonical program `A046897.P16845607147500086519` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046897 has offset 1).

The definition of A046897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046897.P16845607147500086519

`∑{d}[n+1, #%lcm(4, #)]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046897

/-- `∑{d}[n+1, #%lcm(4, #)]` -/
def P16845607147500086519.Spec : Prop :=
  ∀ n, (P16845607147500086519.a n : ℤ) = A046897 (n + 1)

theorem P16845607147500086519.correct : P16845607147500086519.Spec := by
  intro n
  simp only [A046897, Nat.add_sub_cancel]

end A046897

/-! ## A046897.P15692056071851592303

`∑{d}[n+1, (-1)^(n+2+#+(n+1)/#)*#]`
-/

namespace A046897.P15692056071851592303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((n + 2 + d : ℚ) + (n + 1 : ℚ) / (d : ℚ) : ℝ) * (d : ℝ)

end

end A046897.P15692056071851592303

namespace A046897

/-- `∑{d}[n+1, (-1)^(n+2+#+(n+1)/#)*#]` -/
def P15692056071851592303.Spec : Prop :=
  ∀ n, P15692056071851592303.a n = (A046897 (n + 1) : ℝ)

end A046897

/-! ## A046897.P15290609485207353205

`abs(A109506(n+1))`
-/

namespace A046897.P15290609485207353205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109506 (n + 1)|

end

end A046897.P15290609485207353205

namespace A046897

/-- `abs(A109506(n+1))` -/
def P15290609485207353205.Spec : Prop :=
  ∀ n, P15290609485207353205.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P2777410650454363703

`A000118(n+1)/8`
-/

namespace A046897.P2777410650454363703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (n + 1) : ℚ) / 8

end

end A046897.P2777410650454363703

namespace A046897

/-- `A000118(n+1)/8` -/
def P2777410650454363703.Spec : Prop :=
  ∀ n, P2777410650454363703.a n = (A046897 (n + 1) : ℚ)

end A046897

/-! ## A046897.P16376021855162423980

`A185152(n+1)/(n+1)`
-/

namespace A046897.P16376021855162423980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A046897.P16376021855162423980

namespace A046897

/-- `A185152(n+1)/(n+1)` -/
def P16376021855162423980.Spec : Prop :=
  ∀ n, P16376021855162423980.a n = (A046897 (n + 1) : ℚ)

end A046897

/-! ## A046897.P14873694701942278468

`A000203(lcm((n+1)/and(n+1, -(n+1)), ∏{p}[n+1, #]))`
-/

namespace A046897.P14873694701942278468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A046897.P14873694701942278468

namespace A046897

/-- `A000203(lcm((n+1)/and(n+1, -(n+1)), ∏{p}[n+1, #]))` -/
def P14873694701942278468.Spec : Prop :=
  ∀ n, P14873694701942278468.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P8249760237471306084

`A000203(A259445(n+1))`
-/

namespace A046897.P8249760237471306084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A259445 (n + 1)).toNat

end

end A046897.P8249760237471306084

namespace A046897

/-- `A000203(A259445(n+1))` -/
def P8249760237471306084.Spec : Prop :=
  ∀ n, P8249760237471306084.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P6325784681076791354

`A000593(n+1)*A010684(n)`
-/

namespace A046897.P6325784681076791354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A010684 n

end

end A046897.P6325784681076791354

namespace A046897

/-- `A000593(n+1)*A010684(n)` -/
def P6325784681076791354.Spec : Prop :=
  ∀ n, P6325784681076791354.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P11287570841467657392

`A033999(n)*A109506(n+1)`
-/

namespace A046897.P11287570841467657392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A109506 (n + 1)

end

end A046897.P11287570841467657392

namespace A046897

/-- `A033999(n)*A109506(n+1)` -/
def P11287570841467657392.Spec : Prop :=
  ∀ n, P11287570841467657392.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P6923280739177699561

`gcd(A000038(n), A109506(n+1))`
-/

namespace A046897.P6923280739177699561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109506 (n + 1))

end

end A046897.P6923280739177699561

namespace A046897

/-- `gcd(A000038(n), A109506(n+1))` -/
def P6923280739177699561.Spec : Prop :=
  ∀ n, (P6923280739177699561.a n : ℤ) = A046897 (n + 1)

end A046897

/-! ## A046897.P9709343078825761681

`lcm(A010684(n), A109506(n+1))`
-/

namespace A046897.P9709343078825761681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A109506 (n + 1))

end

end A046897.P9709343078825761681

namespace A046897

/-- `lcm(A010684(n), A109506(n+1))` -/
def P9709343078825761681.Spec : Prop :=
  ∀ n, (P9709343078825761681.a n : ℤ) = A046897 (n + 1)

end A046897

/-! ## A046897.P14458704046126155598

`A054785(n+1)-A113184(n+1)`
-/

namespace A046897.P14458704046126155598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A113184 (n + 1)

end

end A046897.P14458704046126155598

namespace A046897

/-- `A054785(n+1)-A113184(n+1)` -/
def P14458704046126155598.Spec : Prop :=
  ∀ n, P14458704046126155598.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P7300767430760882284

`A000203((n+1)/A160467(n+1))`
-/

namespace A046897.P7300767430760882284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A160467 (n + 1) : ℚ))).toNat

end

end A046897.P7300767430760882284

namespace A046897

/-- `A000203((n+1)/A160467(n+1))` -/
def P7300767430760882284.Spec : Prop :=
  ∀ n, P7300767430760882284.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P16679217287265433814

`A285895(n+1)/A160467(n+1)`
-/

namespace A046897.P16679217287265433814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285895 (n + 1) : ℚ) / (A160467 (n + 1) : ℚ)

end

end A046897.P16679217287265433814

namespace A046897

/-- `A285895(n+1)/A160467(n+1)` -/
def P16679217287265433814.Spec : Prop :=
  ∀ n, P16679217287265433814.a n = (A046897 (n + 1) : ℚ)

end A046897

/-! ## A046897.P12984562408337344577

`(2-A033999(n))*A000593(n+1)`
-/

namespace A046897.P12984562408337344577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A000593 (n + 1)

end

end A046897.P12984562408337344577

namespace A046897

/-- `(2-A033999(n))*A000593(n+1)` -/
def P12984562408337344577.Spec : Prop :=
  ∀ n, P12984562408337344577.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P7516637312309239027

`A069184(A259445(2*n+1-n))`
-/

namespace A046897.P7516637312309239027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (A259445 (2 * n + 1 - n)).toNat

end

end A046897.P7516637312309239027

namespace A046897

/-- `A069184(A259445(2*n+1-n))` -/
def P7516637312309239027.Spec : Prop :=
  ∀ n, P7516637312309239027.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P14939144931144834245

`A193553(n+1)%A074400(n+1)`
-/

namespace A046897.P14939144931144834245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193553 (n + 1)) (A074400 (n + 1))

end

end A046897.P14939144931144834245

namespace A046897

/-- `A193553(n+1)%A074400(n+1)` -/
def P14939144931144834245.Spec : Prop :=
  ∀ n, P14939144931144834245.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P1601740833303430569

`gcd(A272027(n+1), A285895(n+1))`
-/

namespace A046897.P1601740833303430569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272027 (n + 1)) (A285895 (n + 1))

end

end A046897.P1601740833303430569

namespace A046897

/-- `gcd(A272027(n+1), A285895(n+1))` -/
def P1601740833303430569.Spec : Prop :=
  ∀ n, (P1601740833303430569.a n : ℤ) = A046897 (n + 1)

end A046897

/-! ## A046897.P5890866295024449699

`2*A069184(n+1)-A000203(n+1)`
-/

namespace A046897.P5890866295024449699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069184 (n + 1) - A000203 (n + 1)

end

end A046897.P5890866295024449699

namespace A046897

/-- `2*A069184(n+1)-A000203(n+1)` -/
def P5890866295024449699.Spec : Prop :=
  ∀ n, P5890866295024449699.a n = A046897 (n + 1)

end A046897

/-! ## A046897.P10960667175042701093

`A000203((n+1)/A000010(A006519(n+1)))`
-/

namespace A046897.P10960667175042701093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (A006519 (n + 1)).toNat : ℚ))).toNat

end

end A046897.P10960667175042701093

namespace A046897

/-- `A000203((n+1)/A000010(A006519(n+1)))` -/
def P10960667175042701093.Spec : Prop :=
  ∀ n, P10960667175042701093.a n = A046897 (n + 1)

end A046897

/-!
# A046898: Partial sums of A046897.

The programs for A046898, the canonical program `A046898.P13104138769060544553` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046898 has offset 1).

The definition of A046898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046898.P13104138769060544553

`∑[∑{d}[n+1, #%lcm(4, #)]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046898

/-- `∑[∑{d}[n+1, #%lcm(4, #)]]` -/
def P13104138769060544553.Spec : Prop :=
  ∀ n, (P13104138769060544553.a n : ℤ) = A046898 (n + 1)

theorem P13104138769060544553.correct : P13104138769060544553.Spec := by
  intro n
  simp only [A046898, Nat.add_sub_cancel]

end A046898

/-! ## A046898.P7103519232711365896

`∑[A046897(n+1)]`
-/

namespace A046898.P7103519232711365896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P7103519232711365896

namespace A046898

/-- `∑[A046897(n+1)]` -/
def P7103519232711365896.Spec : Prop :=
  ∀ n, P7103519232711365896.a n = A046898 (n + 1)

theorem P7103519232711365896.correct : P7103519232711365896.Spec := by
  intro n
  simp only [A046898, Nat.add_sub_cancel, A046898.P7103519232711365896.f1, A046898.P7103519232711365896.a, A046898.P13104138769060544553.f2, A046898.P13104138769060544553.f1, A046898.P13104138769060544553.a, A046897, A046897.P16845607147500086519.f1, A046897.P16845607147500086519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046898

/-! ## A046898.P2733199613251036885

`∑[abs(A109506(n+1))]`
-/

namespace A046898.P2733199613251036885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109506 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P2733199613251036885

namespace A046898

/-- `∑[abs(A109506(n+1))]` -/
def P2733199613251036885.Spec : Prop :=
  ∀ n, P2733199613251036885.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P4334049769448183371

`floor(A046895(n+1)/8)`
-/

namespace A046898.P4334049769448183371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046895 (n + 1) : ℚ) / 8⌋

end

end A046898.P4334049769448183371

namespace A046898

/-- `floor(A046895(n+1)/8)` -/
def P4334049769448183371.Spec : Prop :=
  ∀ n, P4334049769448183371.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P1563679835241903233

`∑[A000118(n+1)/8]`
-/

namespace A046898.P1563679835241903233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P1563679835241903233

namespace A046898

/-- `∑[A000118(n+1)/8]` -/
def P1563679835241903233.Spec : Prop :=
  ∀ n, P1563679835241903233.a n = (A046898 (n + 1) : ℚ)

end A046898

/-! ## A046898.P16282131760674695055

`∑[A185152(n+1)/(n+1)]`
-/

namespace A046898.P16282131760674695055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P16282131760674695055

namespace A046898

/-- `∑[A185152(n+1)/(n+1)]` -/
def P16282131760674695055.Spec : Prop :=
  ∀ n, P16282131760674695055.a n = (A046898 (n + 1) : ℚ)

end A046898

/-! ## A046898.P17877563107631122552

`∑[abs(∑{d}[n+1, #*A230074(#)])]`
-/

namespace A046898.P17877563107631122552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A230074 d|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P17877563107631122552

namespace A046898

/-- `∑[abs(∑{d}[n+1, #*A230074(#)])]` -/
def P17877563107631122552.Spec : Prop :=
  ∀ n, P17877563107631122552.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P8206918356805940236

`∑[(2-(-1)^n)*A000593(n+1)]`
-/

namespace A046898.P8206918356805940236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (-1) ^ n) * A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P8206918356805940236

namespace A046898

/-- `∑[(2-(-1)^n)*A000593(n+1)]` -/
def P8206918356805940236.Spec : Prop :=
  ∀ n, P8206918356805940236.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P2175441985707162481

`∑[A000203((n+1)/and(n+1, -(n+1))*gcd(2, n+1))]`
-/

namespace A046898.P2175441985707162481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) * (Nat.gcd 2 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P2175441985707162481

namespace A046898

/-- `∑[A000203((n+1)/and(n+1, -(n+1))*gcd(2, n+1))]` -/
def P2175441985707162481.Spec : Prop :=
  ∀ n, P2175441985707162481.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P17975708852224763159

`∑[A000203(A259445(n+1))]`
-/

namespace A046898.P17975708852224763159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A259445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P17975708852224763159

namespace A046898

/-- `∑[A000203(A259445(n+1))]` -/
def P17975708852224763159.Spec : Prop :=
  ∀ n, P17975708852224763159.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P10060337644771435

`∑[A000203((n%2+1)*A000265(n+1))]`
-/

namespace A046898.P10060337644771435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((n % 2 + 1 : ℕ) : ℤ) * A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P10060337644771435

namespace A046898

/-- `∑[A000203((n%2+1)*A000265(n+1))]` -/
def P10060337644771435.Spec : Prop :=
  ∀ n, P10060337644771435.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P1708582132530201561

`∑[A000203((n+1)/A000010(2^val(n+1, 2)))]`
-/

namespace A046898.P1708582132530201561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P1708582132530201561

namespace A046898

/-- `∑[A000203((n+1)/A000010(2^val(n+1, 2)))]` -/
def P1708582132530201561.Spec : Prop :=
  ∀ n, P1708582132530201561.a n = A046898 (n + 1)

end A046898

/-! ## A046898.P8891068049227499055

`∑[∑{d}[n+1, #]/xor(n, n+1)*A176040(n+1)]`
-/

namespace A046898.P8891068049227499055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A176040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P8891068049227499055

namespace A046898

/-- `∑[∑{d}[n+1, #]/xor(n, n+1)*A176040(n+1)]` -/
def P8891068049227499055.Spec : Prop :=
  ∀ n, P8891068049227499055.a n = (A046898 (n + 1) : ℚ)

end A046898

/-! ## A046898.P10839986506928668863

`∑[gcd(A109506(2*(n+1)), A109506(n+1))]`
-/

namespace A046898.P10839986506928668863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109506 (2 * (n + 1))) (A109506 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P10839986506928668863

namespace A046898

/-- `∑[gcd(A109506(2*(n+1)), A109506(n+1))]` -/
def P10839986506928668863.Spec : Prop :=
  ∀ n, (P10839986506928668863.a n : ℤ) = A046898 (n + 1)

end A046898

/-! ## A046898.P8579761153327950533

`A110962(A046895(n+1))`
-/

namespace A046898.P8579761153327950533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A046895 (n + 1)).toNat

end

end A046898.P8579761153327950533

namespace A046898

/-- `A110962(A046895(n+1))` -/
def P8579761153327950533.Spec : Prop :=
  ∀ n, P8579761153327950533.a n = A046898 (n + 1)

end A046898

/-!
# A046899: Triangle in which n-th row is {binomial(n+k,k), k=0..n}, n >= 0.

The programs for A046899, the canonical program `A046899.P13814988241420676234` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046899 has offset 0).

The definition of A046899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046899.P16578687554765770480

`A092392(A061579(n))`
-/

namespace A046899.P16578687554765770480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A061579 n).toNat

end

end A046899.P16578687554765770480

namespace A046899

/-- `A092392(A061579(n))` -/
def P16578687554765770480.Spec : Prop :=
  ∀ n, P16578687554765770480.a n = A046899 n

end A046899

/-! ## A046899.P10310358113825901089

`A171824(n)-A092392(n)`
-/

namespace A046899.P10310358113825901089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171824 n - A092392 n

end

end A046899.P10310358113825901089

namespace A046899

/-- `A171824(n)-A092392(n)` -/
def P10310358113825901089.Spec : Prop :=
  ∀ n, P10310358113825901089.a n = A046899 n

theorem P10310358113825901089.correct : P10310358113825901089.Spec := by
  intro n
  simp only [A046899, Nat.add_sub_cancel, A046899.P10310358113825901089.a, A046899.P13814988241420676234.a, A002262, A002262.P12129691700837801527.a, A051162, A051162.P14261216125704105833.a, A092392, A092392.P2058426022526125338.a, A171824, A171824.P9505180745158428969.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A061579, A061579.P7462537595056690109.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A046899

/-! ## A046899.P12285471273763194524

`A092392(A038722(n+1)-1)`
-/

namespace A046899.P12285471273763194524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A038722 (n + 1) - 1).toNat

end

end A046899.P12285471273763194524

namespace A046899

/-- `A092392(A038722(n+1)-1)` -/
def P12285471273763194524.Spec : Prop :=
  ∀ n, P12285471273763194524.a n = A046899 n

end A046899

/-! ## A046899.P6911430464440414426

`A009766(n)/A007318(n)*A074909(n)`
-/

namespace A046899.P6911430464440414426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009766 n : ℚ) / (A007318 n : ℚ) * (A074909 n : ℚ)

end

end A046899.P6911430464440414426

namespace A046899

/-- `A009766(n)/A007318(n)*A074909(n)` -/
def P6911430464440414426.Spec : Prop :=
  ∀ n, P6911430464440414426.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P6987575428854966394

`A059481(comp[∑[n-1]])`
-/

namespace A046899.P6987575428854966394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046899.P6987575428854966394

namespace A046899

/-- `A059481(comp[∑[n-1]])` -/
def P6987575428854966394.Spec : Prop :=
  ∀ n, P6987575428854966394.a n = A046899 n

end A046899

/-! ## A046899.P13814988241420676234

`C(A051162(n), A002262(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046899

/-- `C(A051162(n), A002262(n))` -/
def P13814988241420676234.Spec : Prop :=
  ∀ n, (P13814988241420676234.a n : ℤ) = A046899 n

theorem P13814988241420676234.correct : P13814988241420676234.Spec := by
  intro n
  simp only [A046899]

end A046899

/-! ## A046899.P5164622022463703120

`C(A051162(n), A003056(n))`
-/

namespace A046899.P5164622022463703120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A003056 n).toNat

end

end A046899.P5164622022463703120

namespace A046899

/-- `C(A051162(n), A003056(n))` -/
def P5164622022463703120.Spec : Prop :=
  ∀ n, (P5164622022463703120.a n : ℤ) = A046899 n

end A046899

/-! ## A046899.P11125764507208456146

`C(A134478(n), A002262(n))`
-/

namespace A046899.P11125764507208456146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n).toNat (A002262 n).toNat

end

end A046899.P11125764507208456146

namespace A046899

/-- `C(A134478(n), A002262(n))` -/
def P11125764507208456146.Spec : Prop :=
  ∀ n, (P11125764507208456146.a n : ℤ) = A046899 n

end A046899

/-! ## A046899.P1229266915137964651

`C(A134478(n), A003056(n))`
-/

namespace A046899.P1229266915137964651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n).toNat (A003056 n).toNat

end

end A046899.P1229266915137964651

namespace A046899

/-- `C(A134478(n), A003056(n))` -/
def P1229266915137964651.Spec : Prop :=
  ∀ n, (P1229266915137964651.a n : ℤ) = A046899 n

end A046899

/-! ## A046899.P3160700154944814064

`C(A094727(n+1)-1, A003056(n))`
-/

namespace A046899.P3160700154944814064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1) - 1).toNat (A003056 n).toNat

end

end A046899.P3160700154944814064

namespace A046899

/-- `C(A094727(n+1)-1, A003056(n))` -/
def P3160700154944814064.Spec : Prop :=
  ∀ n, (P3160700154944814064.a n : ℤ) = A046899 n

end A046899

/-! ## A046899.P10226554751094903222

`C(A051162(n), A025581(A056943(n+1)))`
-/

namespace A046899.P10226554751094903222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n).toNat (A025581 (A056943 (n + 1)).toNat).toNat

end

end A046899.P10226554751094903222

namespace A046899

/-- `C(A051162(n), A025581(A056943(n+1)))` -/
def P10226554751094903222.Spec : Prop :=
  ∀ n, (P10226554751094903222.a n : ℤ) = A046899 n

end A046899

/-! ## A046899.P10167960949289259657

`C(A003056(n)+A002262(n), A002262(n))`
-/

namespace A046899.P10167960949289259657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + A002262 n).toNat (A002262 n).toNat

end

end A046899.P10167960949289259657

namespace A046899

/-- `C(A003056(n)+A002262(n), A002262(n))` -/
def P10167960949289259657.Spec : Prop :=
  ∀ n, (P10167960949289259657.a n : ℤ) = A046899 n

end A046899

/-! ## A046899.P17128712091554157323

`A063007(n)/A007318(n)`
-/

namespace A046899.P17128712091554157323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A007318 n : ℚ)

end

end A046899.P17128712091554157323

namespace A046899

/-- `A063007(n)/A007318(n)` -/
def P17128712091554157323.Spec : Prop :=
  ∀ n, P17128712091554157323.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P3677738511452678214

`A178300(n+1)/A178301(n)*A063007(n)`
-/

namespace A046899.P3677738511452678214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178300 (n + 1) : ℚ) / (A178301 n : ℚ) * (A063007 n : ℚ)

end

end A046899.P3677738511452678214

namespace A046899

/-- `A178300(n+1)/A178301(n)*A063007(n)` -/
def P3677738511452678214.Spec : Prop :=
  ∀ n, P3677738511452678214.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P16776840755597274029

`A063007(n)/A104684(n)*A092392(n)`
-/

namespace A046899.P16776840755597274029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A104684 n : ℚ) * (A092392 n : ℚ)

end

end A046899.P16776840755597274029

namespace A046899

/-- `A063007(n)/A104684(n)*A092392(n)` -/
def P16776840755597274029.Spec : Prop :=
  ∀ n, P16776840755597274029.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P16733473963126227739

`A104684(A061579(n))/A007318(n)`
-/

namespace A046899.P16733473963126227739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A046899.P16733473963126227739

namespace A046899

/-- `A104684(A061579(n))/A007318(n)` -/
def P16733473963126227739.Spec : Prop :=
  ∀ n, P16733473963126227739.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P9150593051561232307

`A371400(n)/A092392(n)`
-/

namespace A046899.P9150593051561232307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371400 n : ℚ) / (A092392 n : ℚ)

end

end A046899.P9150593051561232307

namespace A046899

/-- `A371400(n)/A092392(n)` -/
def P9150593051561232307.Spec : Prop :=
  ∀ n, P9150593051561232307.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P4760776998873899473

`A356546(n)/A094527(n)`
-/

namespace A046899.P4760776998873899473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A094527 n : ℚ)

end

end A046899.P4760776998873899473

namespace A046899

/-- `A356546(n)/A094527(n)` -/
def P4760776998873899473.Spec : Prop :=
  ∀ n, P4760776998873899473.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P7586768940342273405

`A376467(n)/A118384(n)`
-/

namespace A046899.P7586768940342273405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376467 n : ℚ) / (A118384 n : ℚ)

end

end A046899.P7586768940342273405

namespace A046899

/-- `A376467(n)/A118384(n)` -/
def P7586768940342273405.Spec : Prop :=
  ∀ n, P7586768940342273405.a n = (A046899 n : ℚ)

end A046899

/-! ## A046899.P18016662736594824976

`A220178(n)/A094531(n)`
-/

namespace A046899.P18016662736594824976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220178 n : ℚ) / (A094531 n : ℚ)

end

end A046899.P18016662736594824976

namespace A046899

/-- `A220178(n)/A094531(n)` -/
def P18016662736594824976.Spec : Prop :=
  ∀ n, P18016662736594824976.a n = (A046899 n : ℚ)

end A046899

