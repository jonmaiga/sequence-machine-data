import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
# A280200: Expansion of 1/(1 - Sum_{k>=2} floor(1/omega(2*k-1))*x^(2*k-1)), where omega() is the number of distinct prime factors (A001221).

The programs for A280200, there is no canonical definition to state claims against.
-/

/-! ## A280200.P2884123952288222145

`A000931(n)-A083025(A185588(n))`
-/

namespace A280200.P2884123952288222145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - A083025 (A185588 n).toNat

end

end A280200.P2884123952288222145

/-! ## A280200.P16477514343811696328

`A000931(n)-A055641(A003242(n))`
-/

namespace A280200.P16477514343811696328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - A055641 (A003242 n).toNat

end

end A280200.P16477514343811696328

/-! ## A280200.P12592277575693211339

`A000931(n)-A055641(A048815(n))`
-/

namespace A280200.P12592277575693211339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - A055641 (A048815 (n + 11)).toNat

end

end A280200.P12592277575693211339

/-! ## A280200.P538213702126023079

`A000931(n)-A102683(A005676(n))`
-/

namespace A280200.P538213702126023079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - A102683 (A005676 n).toNat

end

end A280200.P538213702126023079

/-! ## A280200.P17503404885251500330

`A000931(n)-A102681(A107383(n))`
-/

namespace A280200.P17503404885251500330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - A102681 (A107383 n).toNat

end

end A280200.P17503404885251500330

/-!
# A280202: Number of topologies on an n-set X such that for all x in X there is a y in X such that x and y are topologically indistinguishable.

The programs for A280202, there is no canonical definition to state claims against.
-/

/-! ## A280202.P13340613699736908645

`A280192(∑[n])`
-/

namespace A280202.P13340613699736908645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280202.P13340613699736908645

/-! ## A280202.P5535515742218064812

`and(-1, A280192(A000217(n)))`
-/

namespace A280202.P5535515742218064812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A280192 (A000217 n).toNat)

end

end A280202.P5535515742218064812

/-! ## A280202.P9351211884221184335

`A280192(A000217(n))+A025469(n)`
-/

namespace A280202.P9351211884221184335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280192 (A000217 n).toNat + A025469 n

end

end A280202.P9351211884221184335

/-! ## A280202.P9415241900581037397

`A280192(A000217(n))+A137579(n)`
-/

namespace A280202.P9415241900581037397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280192 (A000217 n).toNat + A137579 n

end

end A280202.P9415241900581037397

/-! ## A280202.P2246058277248975723

`A280192(A000217(n))%A326909(n)`
-/

namespace A280202.P2246058277248975723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280192 (A000217 n).toNat) (A326909 n)

end

end A280202.P2246058277248975723

/-!
# A280204: G.f.: Product_{k>=1} (1+x^(k^2)) / (1-x^k).

The programs for A280204, there is no canonical definition to state claims against.
-/

/-! ## A280204.P7978707032139308194

`A259361(A363045(3*n+2))+A087897(3*n)`
-/

namespace A280204.P7978707032139308194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A363045 (3 * n + 2)).toNat + A087897 (3 * n)

end

end A280204.P7978707032139308194

/-! ## A280204.P6895139810433197183

`A000196(∑[∑[A184052(n)]])`
-/

namespace A280204.P6895139810433197183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280204.P6895139810433197183

/-! ## A280204.P1241252597229119902

`A180447(A006457(n))`
-/

namespace A280204.P1241252597229119902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A006457 n).toNat

end

end A280204.P1241252597229119902

/-! ## A280204.P17620744564039177978

`A204164(A360191(n))`
-/

namespace A280204.P17620744564039177978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A360191 n).toNat

end

end A280204.P17620744564039177978

/-! ## A280204.P1972604161283578078

`A088725(∑[A135318(n)])`
-/

namespace A280204.P1972604161283578078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280204.P1972604161283578078

/-!
# A280205: Numbers k such that (16*10^k + 197) / 3 is prime.

The programs for A280205, there is no canonical definition to state claims against.
-/

/-! ## A280205.P11883429472693907230

`A087027(eq[A086988(2*(n+1)), A087012(n+1)])`
-/

namespace A280205.P11883429472693907230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086988 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280205.P11883429472693907230

/-! ## A280205.P938655380940140771

`∑{p}[∑[A000213(A000213(n))], #]`
-/

namespace A280205.P938655380940140771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (A000213 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A280205.P938655380940140771

/-! ## A280205.P8015434421351553851

`eq[A050373(n+1), A116599(n)]`
-/

namespace A280205.P8015434421351553851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280205.P8015434421351553851

/-!
# A280208: Numbers m such that 4^m - 3^m is not squarefree, but 4^d - 3^d is squarefree for every proper divisor d of m.

The programs for A280208, there is no canonical definition to state claims against.
-/

/-! ## A280208.P12321539668897024571

`A161983(A031873(Δ[n²])+1)`
-/

namespace A280208.P12321539668897024571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (A031873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A280208.P12321539668897024571

/-!
# A280210: Expansion of (Sum_{k>=1} mu(k)^2*x^k)^3, where mu(k) is the Moebius function (A008683).

The programs for A280210, there is no canonical definition to state claims against.
-/

/-! ## A280210.P5214930488379515342

`A347778(n)-A347777(n)`
-/

namespace A280210.P5214930488379515342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 n - A347777 n

end

end A280210.P5214930488379515342

/-! ## A280210.P291894130903737290

`A347778(n)-(A347648(n)+A098236(A028310(n)))`
-/

namespace A280210.P291894130903737290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 n - (A347648 n + A098236 (A028310 n).toNat)

end

end A280210.P291894130903737290

/-! ## A280210.P12805721251140876659

`A347778(n)-(A347648(n)+A098236(A233583(n+1)))`
-/

namespace A280210.P12805721251140876659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 n - (A347648 n + A098236 (A233583 (n + 1)).toNat)

end

end A280210.P12805721251140876659

/-!
# A280211: a(n) = n*(2^(n^2)).

The programs for A280211, the canonical program `A280211.P82360855075227154` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280211 has offset 0).

The definition of A280211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n²` (program `A280211.P82360855075227154`, by `A280211.P82360855075227154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280211.P82360855075227154

`n*2^n²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280211

/-- `n*2^n²` -/
def P82360855075227154.Spec : Prop :=
  ∀ n, (P82360855075227154.a n : ℤ) = A280211 n

theorem P82360855075227154.correct : P82360855075227154.Spec := by
  intro n
  simp only [A280211]

end A280211

/-! ## A280211.P13161023247929740001

`floor(n/acot(2^n²))`
-/

namespace A280211.P13161023247929740001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (2 ^ n ^ 2 : ℝ)⌋

end

end A280211.P13161023247929740001

namespace A280211

/-- `floor(n/acot(2^n²))` -/
def P13161023247929740001.Spec : Prop :=
  ∀ n, P13161023247929740001.a n = A280211 n

end A280211

/-! ## A280211.P15398978729642092298

`round(n/acot(2^n²))`
-/

namespace A280211.P15398978729642092298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (2 ^ n ^ 2 : ℝ))

end

end A280211.P15398978729642092298

namespace A280211

/-- `round(n/acot(2^n²))` -/
def P15398978729642092298.Spec : Prop :=
  ∀ n, P15398978729642092298.a n = A280211 n

end A280211

/-! ## A280211.P3588532404295006534

`n/tan(acot(2^n²))`
-/

namespace A280211.P3588532404295006534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ n ^ 2 : ℝ))

end

end A280211.P3588532404295006534

namespace A280211

/-- `n/tan(acot(2^n²))` -/
def P3588532404295006534.Spec : Prop :=
  ∀ n, P3588532404295006534.a n = (A280211 n : ℝ)

end A280211

/-! ## A280211.P10455377289771664227

`lcm(2, n*(2^n)^n)`
-/

namespace A280211.P10455377289771664227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (2 ^ n) ^ n)

end

end A280211.P10455377289771664227

namespace A280211

/-- `lcm(2, n*(2^n)^n)` -/
def P10455377289771664227.Spec : Prop :=
  ∀ n, (P10455377289771664227.a n : ℤ) = A280211 n

end A280211

/-!
# A280212: Number of nX2 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280212, there is no canonical definition to state claims against.
-/

/-! ## A280212.P11887217413587693235

`A280217(∑[n+1]+2)`
-/

namespace A280212.P11887217413587693235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280212.P11887217413587693235

/-! ## A280212.P14259174272745265809

`record[A110324(n)*A280217(n+3)]`
-/

namespace A280212.P14259174272745265809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110324 n * A280217 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280212.P14259174272745265809

/-! ## A280212.P13218908572958627460

`record[gcd(A097854(n), A280217(n+1))]`
-/

namespace A280212.P13218908572958627460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097854 n) (A280217 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280212.P13218908572958627460

/-! ## A280212.P3878442725841742200

`record[gcd(A097805(n), A280217(n+2))]`
-/

namespace A280212.P3878442725841742200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 n) (A280217 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280212.P3878442725841742200

/-! ## A280212.P16019290858923839936

`lcm((-1)^n, A280217(A133263(n+1)))`
-/

namespace A280212.P16019290858923839936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A280217 (A133263 (n + 1)).toNat)

end

end A280212.P16019290858923839936

/-!
# A280213: Number of nX3 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280213, there is no canonical definition to state claims against.
-/

/-! ## A280213.P14275148776080379148

`A280217(∑[n+2]+4)`
-/

namespace A280213.P14275148776080379148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280213.P14275148776080379148

/-! ## A280213.P2301413633780631294

`or(char[9], A280217(A167614(n+1)))`
-/

namespace A280213.P2301413633780631294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280217 (A167614 (n + 1)).toNat)

end

end A280213.P2301413633780631294

/-! ## A280213.P217480119700443881

`record[A010054(n+1)*A280217(n+4)]`
-/

namespace A280213.P217480119700443881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A280217 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280213.P217480119700443881

/-! ## A280213.P907974923403331151

`A280217(A167614(n+1))+A011737(n)`
-/

namespace A280213.P907974923403331151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A167614 (n + 1)).toNat + A011737 n

end

end A280213.P907974923403331151

/-! ## A280213.P12778668021169625926

`A280217(A167614(n+1))+A025443(n)`
-/

namespace A280213.P12778668021169625926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A167614 (n + 1)).toNat + A025443 n

end

end A280213.P12778668021169625926

/-!
# A280214: Number of nX4 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280214, there is no canonical definition to state claims against.
-/

/-! ## A280214.P9020267790062682249

`A280217(∑[n+3]+7)`
-/

namespace A280214.P9020267790062682249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280214.P9020267790062682249

/-! ## A280214.P10395887910174287211

`A280217(A027379(n+2))%A280216(n+1)`
-/

namespace A280214.P10395887910174287211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280217 (A027379 (n + 2)).toNat) (A280216 (n + 1))

end

end A280214.P10395887910174287211

/-!
# A280215: Number of nX5 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280215, there is no canonical definition to state claims against.
-/

/-! ## A280215.P1715054849683455382

`A280217(A167499(n+3))`
-/

namespace A280215.P1715054849683455382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A167499 (n + 3)).toNat

end

end A280215.P1715054849683455382

/-! ## A280215.P7565891526964423300

`A280217(A155212(n)+13)`
-/

namespace A280215.P7565891526964423300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A155212 n + 13).toNat

end

end A280215.P7565891526964423300

/-! ## A280215.P2973759823441374436

`A280217(A056000(n)+15)`
-/

namespace A280215.P2973759823441374436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A056000 n + 15).toNat

end

end A280215.P2973759823441374436

/-! ## A280215.P855079215652690088

`A280217(eq[7, A066657(n)])`
-/

namespace A280215.P855079215652690088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280215.P855079215652690088

/-! ## A280215.P10469515281012236026

`A280217(A000124(n+4)+4)`
-/

namespace A280215.P10469515281012236026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A000124 (n + 4) + 4).toNat

end

end A280215.P10469515281012236026

/-!
# A280216: Number of nX6 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280216, there is no canonical definition to state claims against.
-/

/-! ## A280216.P15995854375770483299

`A280217(A056115(n)+21)`
-/

namespace A280216.P15995854375770483299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A056115 n + 21).toNat

end

end A280216.P15995854375770483299

/-! ## A280216.P16045343478417117459

`A280217(A167499(n+4)+1)`
-/

namespace A280216.P16045343478417117459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A167499 (n + 4) + 1).toNat

end

end A280216.P16045343478417117459

/-! ## A280216.P686776373678895839

`A280217(A167614(n+4)+3)`
-/

namespace A280216.P686776373678895839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A167614 (n + 4) + 3).toNat

end

end A280216.P686776373678895839

/-! ## A280216.P3818020752816845652

`A280217(A000124(n+5)+5)`
-/

namespace A280216.P3818020752816845652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A000124 (n + 5) + 5).toNat

end

end A280216.P3818020752816845652

/-! ## A280216.P18015400428463544317

`A280217(A055998(n+3)+9)`
-/

namespace A280216.P18015400428463544317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280217 (A055998 (n + 3) + 9).toNat

end

end A280216.P18015400428463544317

/-!
# A280218: Number of binary necklaces of length n with no subsequence 0000.

The programs for A280218, there is no canonical definition to state claims against.
-/

/-! ## A280218.P3587973627210929439

`A322057(A027379(n+2))`
-/

namespace A280218.P3587973627210929439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (A027379 (n + 2)).toNat

end

end A280218.P3587973627210929439

/-! ## A280218.P417676413819556378

`A322057(A055998(n+2))`
-/

namespace A280218.P417676413819556378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (A055998 (n + 2)).toNat

end

end A280218.P417676413819556378

/-! ## A280218.P18034154112936355233

`A322057(A155212(n)+5)`
-/

namespace A280218.P18034154112936355233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (A155212 n + 5).toNat

end

end A280218.P18034154112936355233

/-! ## A280218.P72140334986462034

`A322057(A056000(n)+7)`
-/

namespace A280218.P72140334986462034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (A056000 n + 7).toNat

end

end A280218.P72140334986462034

/-! ## A280218.P4093968522229127454

`A322057(A000217(n+3)+n+1)`
-/

namespace A280218.P4093968522229127454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A280218.P4093968522229127454

/-!
# A280219: a(1) = 1, a(n+1) is the numerator of n-th partial fraction of the continued fraction [1; 3, 9, 27, ..., 3^n].

The programs for A280219, the canonical program `A280219.P15016083383780329354` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280219 has offset 1).

The definition of A280219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280219.P15016083383780329354

`3^n*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280219

/-- `3^n*a(n-1)+a(n-2)` -/
def P15016083383780329354.Spec : Prop :=
  ∀ n, (P15016083383780329354.a n : ℤ) = A280219 (n + 1)

theorem P15016083383780329354.correct : P15016083383780329354.Spec := by
  intro n
  simp only [A280219, Nat.add_sub_cancel]

end A280219

/-! ## A280219.P3972985330423558523

`∏[3^n-(A023443(n)-n)/a(n-1)]` with `a(0)=1`
-/

namespace A280219.P3972985330423558523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 ^ n : ℚ) - (A023443 n - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280219.P3972985330423558523

namespace A280219

/-- `∏[3^n-(A023443(n)-n)/a(n-1)]` -/
def P3972985330423558523.Spec : Prop :=
  ∀ n, P3972985330423558523.a n = (A280219 (n + 1) : ℚ)

end A280219

/-! ## A280219.P1006898432608576795

`∏[3^n-A134824(A085058(n))/a(n-1)]` with `a(0)=1`
-/

namespace A280219.P1006898432608576795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 ^ n : ℚ) - (A134824 (A085058 n).toNat : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280219.P1006898432608576795

namespace A280219

/-- `∏[3^n-A134824(A085058(n))/a(n-1)]` -/
def P1006898432608576795.Spec : Prop :=
  ∀ n, P1006898432608576795.a n = (A280219 (n + 1) : ℚ)

end A280219

/-! ## A280219.P7712512918875762076

`A127611(3^n)`
-/

namespace A280219.P7712512918875762076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127611 (3 ^ n)

end

end A280219.P7712512918875762076

namespace A280219

/-- `A127611(3^n)` -/
def P7712512918875762076.Spec : Prop :=
  ∀ n, P7712512918875762076.a n = A280219 (n + 1)

end A280219

/-!
# A280220: a(1) = 1, a(n+1) is the numerator of n-th partial fraction of the continued fraction [1; 4, 16, 64, ..., 4^n].

The programs for A280220, the canonical program `A280220.P7140011903061963208` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280220 has offset 1).

The definition of A280220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280220.P7140011903061963208

`4^n*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280220

/-- `4^n*a(n-1)+a(n-2)` -/
def P7140011903061963208.Spec : Prop :=
  ∀ n, (P7140011903061963208.a n : ℤ) = A280220 (n + 1)

theorem P7140011903061963208.correct : P7140011903061963208.Spec := by
  intro n
  simp only [A280220, Nat.add_sub_cancel]

end A280220

/-! ## A280220.P7192112708910307943

`a(n-2)+a(n-1)*A000302(n)` with `a(0)=1, a(1)=5`
-/

namespace A280220.P7192112708910307943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + a (n - 1) * A000302 n

end

end A280220.P7192112708910307943

namespace A280220

/-- `a(n-2)+a(n-1)*A000302(n)` -/
def P7192112708910307943.Spec : Prop :=
  ∀ n, P7192112708910307943.a n = A280220 (n + 1)

end A280220

/-!
# A280221: a(n) = (-2)^(n-1)*a(n-1) + a(n-2) with a(0) = 0 and a(1) = 1.

The programs for A280221, the canonical program `A280221.P2026426151857469355` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280221 has offset 0).

The definition of A280221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280221.P2026426151857469355

`(-2)^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280221

/-- `(-2)^(n-1)*a(n-1)+a(n-2)` -/
def P2026426151857469355.Spec : Prop :=
  ∀ n, P2026426151857469355.a n = (A280221 n : ℚ)

end A280221

/-! ## A280221.P13284908772640548035

`A053985(A015473(n))`
-/

namespace A280221.P13284908772640548035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A015473 n).toNat

end

end A280221.P13284908772640548035

namespace A280221

/-- `A053985(A015473(n))` -/
def P13284908772640548035.Spec : Prop :=
  ∀ n, P13284908772640548035.a n = A280221 n

end A280221

/-!
# A280222: a(n) = (-3)^(n-1)*a(n-1) + a(n-2).

The programs for A280222, the canonical program `A280222.P17308761233114148249` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280222 has offset 0).

The definition of A280222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280222.P17308761233114148249

`(-3)^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280222

/-- `(-3)^(n-1)*a(n-1)+a(n-2)` -/
def P17308761233114148249.Spec : Prop :=
  ∀ n, P17308761233114148249.a n = (A280222 n : ℚ)

end A280222

/-!
# A280223: Distance of n to the next number with middle divisors.

The programs for A280223, the canonical program `A280223.P8560381770176027686` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280223 has offset 1).

The definition of A280223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280223.P8560381770176027686

`A071562(A348110(n+1)+1)-(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A280223

/-- `A071562(A348110(n+1)+1)-(n+1)` -/
def P8560381770176027686.Spec : Prop :=
  ∀ n, P8560381770176027686.a n = A280223 (n + 1)

theorem P8560381770176027686.correct : P8560381770176027686.Spec := by
  intro n
  simp only [A280223, Nat.add_sub_cancel]

end A280223

/-! ## A280223.P6435005577536274728

`A071562(∑[A237271(n+1)%2]+1)-(n+1)`
-/

namespace A280223.P6435005577536274728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237271 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - (n + 1 : ℤ)

end

end A280223.P6435005577536274728

namespace A280223

/-- `A071562(∑[A237271(n+1)%2]+1)-(n+1)` -/
def P6435005577536274728.Spec : Prop :=
  ∀ n, P6435005577536274728.a n = A280223 (n + 1)

end A280223

/-! ## A280223.P4177133504764554757

`A276112(A348110(n+1))-n`
-/

namespace A280223.P4177133504764554757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276112 (A348110 (n + 1)).toNat - (n : ℤ)

end

end A280223.P4177133504764554757

namespace A280223

/-- `A276112(A348110(n+1))-n` -/
def P4177133504764554757.Spec : Prop :=
  ∀ n, P4177133504764554757.a n = A280223 (n + 1)

end A280223

/-! ## A280223.P1597048983529846240

`A276112(A348110(n+1))+A001489(n+1)+1`
-/

namespace A280223.P1597048983529846240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276112 (A348110 (n + 1)).toNat + A001489 (n + 1) + 1

end

end A280223.P1597048983529846240

namespace A280223

/-- `A276112(A348110(n+1))+A001489(n+1)+1` -/
def P1597048983529846240.Spec : Prop :=
  ∀ n, P1597048983529846240.a n = A280223 (n + 1)

end A280223

/-! ## A280223.P14953837752636898907

`A276112(A348110(n+1))%A000027(n+1)+1`
-/

namespace A280223.P14953837752636898907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276112 (A348110 (n + 1)).toNat) (A000027 (n + 1)) + 1

end

end A280223.P14953837752636898907

namespace A280223

/-- `A276112(A348110(n+1))%A000027(n+1)+1` -/
def P14953837752636898907.Spec : Prop :=
  ∀ n, P14953837752636898907.a n = A280223 (n + 1)

end A280223

/-!
# A280226: Number of partitions of 2n into two squarefree parts.

The programs for A280226, there is no canonical definition to state claims against.
-/

/-! ## A280226.P5350103524228301560

`n+1-A302391(n+1)`
-/

namespace A280226.P5350103524228301560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A302391 (n + 1)

end

end A280226.P5350103524228301560

/-! ## A280226.P15339869527338383741

`A280252(n+1)/(2*(n+1))`
-/

namespace A280226.P15339869527338383741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280252 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A280226.P15339869527338383741

/-! ## A280226.P16386143294947472653

`A294248(n+1)+A008966(n+1)`
-/

namespace A280226.P16386143294947472653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294248 (n + 1) + A008966 (n + 1)

end

end A280226.P16386143294947472653

/-! ## A280226.P8394836426551997007

`A294248(n+1)+A008683(n+1)²`
-/

namespace A280226.P8394836426551997007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294248 (n + 1) + A008683 (n + 1) ^ 2

end

end A280226.P8394836426551997007

/-! ## A280226.P2183967855870520303

`A071068(2*(n+1))`
-/

namespace A280226.P2183967855870520303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (2 * (n + 1))

end

end A280226.P2183967855870520303

/-! ## A280226.P1256614068938319422

`ceil(A098235(2*(n+1))/2)`
-/

namespace A280226.P1256614068938319422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098235 (2 * (n + 1)) : ℚ) / 2⌉

end

end A280226.P1256614068938319422

/-! ## A280226.P4559952359060065192

`A262351(2*(n+1))/(2*(n+1))`
-/

namespace A280226.P4559952359060065192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262351 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A280226.P4559952359060065192

/-! ## A280226.P11346229662076043455

`A110654(A098235(2*(n+1)))`
-/

namespace A280226.P11346229662076043455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A098235 (2 * (n + 1))).toNat

end

end A280226.P11346229662076043455

/-! ## A280226.P8004249703525035049

`A004526(A098235(2*(n+1))+1)`
-/

namespace A280226.P8004249703525035049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098235 (2 * (n + 1)) + 1).toNat

end

end A280226.P8004249703525035049

/-! ## A280226.P5188139204912245103

`A123108(A098235(2*(n+1))+1)`
-/

namespace A280226.P5188139204912245103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A098235 (2 * (n + 1)) + 1).toNat

end

end A280226.P5188139204912245103

/-! ## A280226.P6640644130140491811

`A008619(A098235(2*(n+1))-1)`
-/

namespace A280226.P6640644130140491811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A098235 (2 * (n + 1)) - 1).toNat

end

end A280226.P6640644130140491811

/-! ## A280226.P5134517398688919007

`A013928(n+2)-A294232(2*(n+1))`
-/

namespace A280226.P5134517398688919007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A294232 (2 * (n + 1))

end

end A280226.P5134517398688919007

/-! ## A280226.P5094068910103139793

`A262868(2*(n+1))-A294233(2*(n+1))`
-/

namespace A280226.P5094068910103139793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 * (n + 1)) - A294233 (2 * (n + 1))

end

end A280226.P5094068910103139793

/-! ## A280226.P15613096071085827296

`A262869(2*(n+1))-A294232(2*(n+1))`
-/

namespace A280226.P15613096071085827296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * (n + 1)) - A294232 (2 * (n + 1))

end

end A280226.P15613096071085827296

/-! ## A280226.P2128830749779870683

`A294100(2*(n+1))-A282380(2*(n+1))`
-/

namespace A280226.P2128830749779870683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294100 (2 * (n + 1)) - A282380 (2 * (n + 1))

end

end A280226.P2128830749779870683

/-! ## A280226.P256691724222307307

`A262991(2*(n+1))-A351833(2*(n+1))`
-/

namespace A280226.P256691724222307307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (2 * (n + 1)) - A351833 (2 * (n + 1))

end

end A280226.P256691724222307307

/-! ## A280226.P11822713477724718612

`A351833(2*(n+1))-A294101(2*(n+1))`
-/

namespace A280226.P11822713477724718612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (2 * (n + 1)) - A294101 (2 * (n + 1))

end

end A280226.P11822713477724718612

/-! ## A280226.P1354508445187646837

`A000027(A071068(A000027(n+1)+n+1))`
-/

namespace A280226.P1354508445187646837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A071068 (A000027 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A280226.P1354508445187646837

/-! ## A280226.P2642790543104063195

`A013928(2*(n+1))-A351834(2*(n+1))`
-/

namespace A280226.P2642790543104063195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1)) - A351834 (2 * (n + 1))

end

end A280226.P2642790543104063195

/-! ## A280226.P18387142871683248721

`A098236(2*(n+1))+A008966(n+1)`
-/

namespace A280226.P18387142871683248721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (2 * (n + 1)) + A008966 (n + 1)

end

end A280226.P18387142871683248721

/-!
# A280227: Number of n X 2 0..1 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280227, the canonical program `A280227.P10684043330649819905` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280227 has offset 1).

The definition of A280227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280227.P10684043330649819905

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=8, a(4)=14, a(5)=24, a(6)=42`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280227

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P10684043330649819905.Spec : Prop :=
  ∀ n, P10684043330649819905.a n = A280227 (n + 1)

theorem P10684043330649819905.correct : P10684043330649819905.Spec := by
  intro n
  simp only [A280227, Nat.add_sub_cancel]

end A280227

/-! ## A280227.P3923787345986946147

`A280233(∑[n+1]+2)`
-/

namespace A280227.P3923787345986946147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280227.P3923787345986946147

namespace A280227

/-- `A280233(∑[n+1]+2)` -/
def P3923787345986946147.Spec : Prop :=
  ∀ n, P3923787345986946147.a n = A280227 (n + 1)

end A280227

/-! ## A280227.P14069211458799733981

`lcm(2, A280233(A133263(n+1)))`
-/

namespace A280227.P14069211458799733981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A280233 (A133263 (n + 1)).toNat)

end

end A280227.P14069211458799733981

namespace A280227

/-- `lcm(2, A280233(A133263(n+1)))` -/
def P14069211458799733981.Spec : Prop :=
  ∀ n, (P14069211458799733981.a n : ℤ) = A280227 (n + 1)

end A280227

/-! ## A280227.P13825649135164460929

`record[A010054(n)*A280233(n+2)]`
-/

namespace A280227.P13825649135164460929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280227.P13825649135164460929

namespace A280227

/-- `record[A010054(n)*A280233(n+2)]` -/
def P13825649135164460929.Spec : Prop :=
  ∀ n, P13825649135164460929.a n = A280227 (n + 1)

end A280227

/-! ## A280227.P8552340922352229333

`A280233(A133263(n+1))%A070778(n+1)`
-/

namespace A280227.P8552340922352229333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280233 (A133263 (n + 1)).toNat) (A070778 (n + 1))

end

end A280227.P8552340922352229333

namespace A280227

/-- `A280233(A133263(n+1))%A070778(n+1)` -/
def P8552340922352229333.Spec : Prop :=
  ∀ n, P8552340922352229333.a n = A280227 (n + 1)

end A280227

/-!
# A280228: Number of n X 3 0..1 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280228, the canonical program `A280228.P18296757676951063696` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280228 has offset 1).

The definition of A280228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280228.P18296757676951063696

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=9, a(3)=16, a(4)=29, a(5)=52, a(6)=95`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280228

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P18296757676951063696.Spec : Prop :=
  ∀ n, P18296757676951063696.a n = A280228 (n + 1)

theorem P18296757676951063696.correct : P18296757676951063696.Spec := by
  intro n
  simp only [A280228, Nat.add_sub_cancel]

end A280228

/-! ## A280228.P3636873466907158872

`A280233(∑[n+2]+4)`
-/

namespace A280228.P3636873466907158872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280228.P3636873466907158872

namespace A280228

/-- `A280233(∑[n+2]+4)` -/
def P3636873466907158872.Spec : Prop :=
  ∀ n, P3636873466907158872.a n = A280228 (n + 1)

end A280228

/-! ## A280228.P9319710427146395234

`or(char[2], A280233(A167614(n+1)))`
-/

namespace A280228.P9319710427146395234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280233 (A167614 (n + 1)).toNat)

end

end A280228.P9319710427146395234

namespace A280228

/-- `or(char[2], A280233(A167614(n+1)))` -/
def P9319710427146395234.Spec : Prop :=
  ∀ n, P9319710427146395234.a n = A280228 (n + 1)

end A280228

/-! ## A280228.P5677070295567009507

`or(char[4], A280233(A027379(n)+6))`
-/

namespace A280228.P5677070295567009507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280233 (A027379 n + 6).toNat)

end

end A280228.P5677070295567009507

namespace A280228

/-- `or(char[4], A280233(A027379(n)+6))` -/
def P5677070295567009507.Spec : Prop :=
  ∀ n, P5677070295567009507.a n = A280228 (n + 1)

end A280228

/-! ## A280228.P16422673638538969962

`A280233(A167614(n+1))+A025439(n)`
-/

namespace A280228.P16422673638538969962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A167614 (n + 1)).toNat + A025439 n

end

end A280228.P16422673638538969962

namespace A280228

/-- `A280233(A167614(n+1))+A025439(n)` -/
def P16422673638538969962.Spec : Prop :=
  ∀ n, P16422673638538969962.a n = A280228 (n + 1)

end A280228

/-!
# A280229: Number of nX4 0..1 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280229, there is no canonical definition to state claims against.
-/

/-! ## A280229.P4839870298286839847

`A280233(∑[n+3]+7)`
-/

namespace A280229.P4839870298286839847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280229.P4839870298286839847

/-! ## A280229.P12736933528481431749

`lcm(2, A280233(A055998(n+2)))`
-/

namespace A280229.P12736933528481431749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A280233 (A055998 (n + 2)).toNat)

end

end A280229.P12736933528481431749

/-! ## A280229.P4343887158755081113

`A007318(C(n, n²))*A280233(A055998(n+2))`
-/

namespace A280229.P4343887158755081113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A280233 (A055998 (n + 2)).toNat

end

end A280229.P4343887158755081113

/-! ## A280229.P5601239695404428434

`A014963(10*(n+1))*A280233(A055998(n+2))`
-/

namespace A280229.P5601239695404428434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A280233 (A055998 (n + 2)).toNat

end

end A280229.P5601239695404428434

/-! ## A280229.P1002792352083302009

`A000108(C(2, n+2))*A280233(A055998(n+2))`
-/

namespace A280229.P1002792352083302009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A280233 (A055998 (n + 2)).toNat

end

end A280229.P1002792352083302009

/-!
# A280230: Number of nX5 0..1 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280230, there is no canonical definition to state claims against.
-/

/-! ## A280230.P6398111653239719651

`A280233(A374005(n+1))`
-/

namespace A280230.P6398111653239719651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A374005 (n + 1)).toNat

end

end A280230.P6398111653239719651

/-! ## A280230.P7843161530901310040

`A280233(A167499(n+3))`
-/

namespace A280230.P7843161530901310040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A167499 (n + 3)).toNat

end

end A280230.P7843161530901310040

/-! ## A280230.P8899476211524346657

`A280233(A155212(n)+13)`
-/

namespace A280230.P8899476211524346657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A155212 n + 13).toNat

end

end A280230.P8899476211524346657

/-! ## A280230.P16466942164605232974

`A280233(A056000(n)+15)`
-/

namespace A280230.P16466942164605232974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A056000 n + 15).toNat

end

end A280230.P16466942164605232974

/-! ## A280230.P3670508342733084111

`A280233(eq[7, A066657(n)])`
-/

namespace A280230.P3670508342733084111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280230.P3670508342733084111

/-!
# A280231: Number of nX6 0..1 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280231, there is no canonical definition to state claims against.
-/

/-! ## A280231.P14441201577411256372

`A280233(A374007(n+1))`
-/

namespace A280231.P14441201577411256372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A374007 (n + 1)).toNat

end

end A280231.P14441201577411256372

/-! ## A280231.P6863274374289672824

`A280233(A056115(n)+21)`
-/

namespace A280231.P6863274374289672824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A056115 n + 21).toNat

end

end A280231.P6863274374289672824

/-! ## A280231.P16298329169528370682

`A280233(A167499(n+4)+1)`
-/

namespace A280231.P16298329169528370682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A167499 (n + 4) + 1).toNat

end

end A280231.P16298329169528370682

/-! ## A280231.P429221266824058514

`A280233(A167614(n+4)+3)`
-/

namespace A280231.P429221266824058514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A167614 (n + 4) + 3).toNat

end

end A280231.P429221266824058514

/-! ## A280231.P12347129742665869833

`A280233(A000124(n+5)+5)`
-/

namespace A280231.P12347129742665869833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A000124 (n + 5) + 5).toNat

end

end A280231.P12347129742665869833

/-!
# A280232: Number of nX7 0..1 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280232, there is no canonical definition to state claims against.
-/

/-! ## A280232.P6479562089563994230

`A280233(A374008(n+1))`
-/

namespace A280232.P6479562089563994230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A374008 (n + 1)).toNat

end

end A280232.P6479562089563994230

/-! ## A280232.P1552137000899385272

`A280233(A056119(n)+28)`
-/

namespace A280232.P1552137000899385272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A056119 n + 28).toNat

end

end A280232.P1552137000899385272

/-! ## A280232.P10719206744710012929

`A280233(eq[11, A066657(n)])`
-/

namespace A280232.P10719206744710012929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280232.P10719206744710012929

/-! ## A280232.P8001883364771143290

`A280233(A000124(n+6)+6)`
-/

namespace A280232.P8001883364771143290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A000124 (n + 6) + 6).toNat

end

end A280232.P8001883364771143290

/-! ## A280232.P13340965211832449035

`A280233(A000096(n+5)+8)`
-/

namespace A280232.P13340965211832449035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280233 (A000096 (n + 5) + 8).toNat

end

end A280232.P13340965211832449035

/-!
# A280233: T(n,k)=Number of nXk 0..1 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280233, there is no canonical definition to state claims against.
-/

/-! ## A280233.P8261791282350903746

`A094937(A008835(n+1)*A279268(n+1))`
-/

namespace A280233.P8261791282350903746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A008835 (n + 1) * A279268 (n + 1)).toNat

end

end A280233.P8261791282350903746

/-! ## A280233.P4542509063269523506

`A094937(A279268(n+1)^A008835(n+1))`
-/

namespace A280233.P4542509063269523506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (SequenceMachineLib.roundAway ((A279268 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A280233.P4542509063269523506

/-! ## A280233.P522748183990040190

`A094937(lcm(A008835(n+1)², A279268(n+1)))`
-/

namespace A280233.P522748183990040190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (Int.lcm (A008835 (n + 1) ^ 2) (A279268 (n + 1)))

end

end A280233.P522748183990040190

/-! ## A280233.P7155090907814292809

`A094937(A279268(n+1))%A319564(3*(n+1))`
-/

namespace A280233.P7155090907814292809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094937 (A279268 (n + 1)).toNat) (A319564 (3 * (n + 1)))

end

end A280233.P7155090907814292809

/-!
# A280236: Numbers n such that A278981(n) < A278981(m) for all m > n (excluding values of m where A278981(m) = 0).

The programs for A280236, there is no canonical definition to state claims against.
-/

/-! ## A280236.P3455117702655850786

`∑[A099774(A229241(n+1)+A051724(n+2))]`
-/

namespace A280236.P3455117702655850786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A229241 (n + 1) + A051724 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280236.P3455117702655850786

/-! ## A280236.P7749034531593301866

`eq[A316826(2*(n+2)), A316826(A096398(n+1))]`
-/

namespace A280236.P7749034531593301866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A096398 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280236.P7749034531593301866

/-! ## A280236.P17996726044933832638

`∑[A000005(C(A244121(n)+3, 2)²+1)]`
-/

namespace A280236.P17996726044933832638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A244121 n + 3).toNat 2 ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280236.P17996726044933832638

/-! ## A280236.P7404992391993141670

`A020639(A052991(n))*A225649(n+1)`
-/

namespace A280236.P7404992391993141670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A052991 n).toNat * A225649 (n + 1)

end

end A280236.P7404992391993141670

/-! ## A280236.P15848553559424696398

`A225649(n+1)*A341997(A078222(n+1))`
-/

namespace A280236.P15848553559424696398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225649 (n + 1) * A341997 (A078222 (n + 1)).toNat

end

end A280236.P15848553559424696398

/-!
# A280237: Period 8 sequence [0, 1, 0, 1, -1, 1, 0, 1, ...].

The programs for A280237, the canonical program `A280237.P17055589070385729377` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280237 has offset 0).

The definition of A280237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280237.P17055589070385729377

`round(cos(gcd(8, n)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280237

/-- `round(cos(gcd(8, n)))` -/
def P17055589070385729377.Spec : Prop :=
  ∀ n, P17055589070385729377.a n = A280237 n

theorem P17055589070385729377.correct : P17055589070385729377.Spec := by
  intro n
  simp only [A280237]

end A280237

/-!
# A280238: Expansion of 1/(1 - Sum_{k>=2} floor(bigomega(k)/2)*floor(2/bigomega(k))*x^k), where bigomega(k) is the number of prime divisors of k counted with multiplicity (A001222).

The programs for A280238, there is no canonical definition to state claims against.
-/

/-! ## A280238.P6335006967451851038

`A151692(A161450(n+1)%A151543(n+1))`
-/

namespace A280238.P6335006967451851038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (Int.tmod (A161450 (n + 1)) (A151543 (n + 1))).toNat

end

end A280238.P6335006967451851038

/-! ## A280238.P4169078169630393779

`A280750(A051246(n+1)-(n+1))`
-/

namespace A280238.P4169078169630393779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (A051246 (n + 1) - (n + 1 : ℤ)).toNat

end

end A280238.P4169078169630393779

/-! ## A280238.P6504301963825603525

`A176314(n+1)+A014017(2^n-1)`
-/

namespace A280238.P6504301963825603525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176314 (n + 1) + A014017 (2 ^ n - 1)

end

end A280238.P6504301963825603525

/-! ## A280238.P16086985915515602218

`A262190(A140504(n))-log2(∏{e}[n+1, 2^#])`
-/

namespace A280238.P16086985915515602218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262190 (A140504 n).toNat : ℝ) - Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A280238.P16086985915515602218

/-! ## A280238.P16093289043715041823

`A340999(A000124(n))+A101048(n)`
-/

namespace A280238.P16093289043715041823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A000124 n).toNat + 204) + A101048 n

end

end A280238.P16093289043715041823

/-!
# A280239: Numbers k such that (16*10^k + 53)/3 is prime.

The programs for A280239, there is no canonical definition to state claims against.
-/

/-! ## A280239.P17096388295634987349

`lt[A036236(A211772(n+1)), A211790(n+4)]`
-/

namespace A280239.P17096388295634987349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036236 (A211772 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280239.P17096388295634987349

/-!
# A280241: Expansion of Product_{k>=1} 1/(1 - x^(k!!)).

The programs for A280241, there is no canonical definition to state claims against.
-/

/-! ## A280241.P6159647964825399166

`A277903(A026757(n)+A008619(n))`
-/

namespace A280241.P6159647964825399166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A026757 n + A008619 n).toNat

end

end A280241.P6159647964825399166

/-! ## A280241.P825627416038625291

`A277903(A137734(n)+A026757(n))`
-/

namespace A280241.P825627416038625291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A137734 n + A026757 n).toNat

end

end A280241.P825627416038625291

/-! ## A280241.P10131850618587788201

`A277903(A172089(n)+A026757(n))`
-/

namespace A280241.P10131850618587788201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A172089 n + A026757 n).toNat

end

end A280241.P10131850618587788201

/-! ## A280241.P2633584216092988583

`A277903(A026757(n)+A000188(n+1))`
-/

namespace A280241.P2633584216092988583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A026757 n + A000188 (n + 1)).toNat

end

end A280241.P2633584216092988583

/-! ## A280241.P16411032486549463575

`A008751(n)+A002828(A184955(n))`
-/

namespace A280241.P16411032486549463575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008751 n + A002828 (A184955 n).toNat

end

end A280241.P16411032486549463575

/-!
# A280242: Expansion of (Sum_{k>=2} floor(1/omega(k))*x^k)^2, where omega(k) is the number of distinct prime factors (A001221).

The programs for A280242, there is no canonical definition to state claims against.
-/

/-! ## A280242.P14276502816886013399

`A307726(n)+A306433(n)`
-/

namespace A280242.P14276502816886013399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 n + A306433 n

end

end A280242.P14276502816886013399

/-!
# A280246: a(n) = Product_{d|n} psi(d), where psi(m) is the sum of totatives of m (A023896).

The programs for A280246, the canonical program `A280246.P5802468637491998326` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280246 has offset 1).

The definition of A280246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280246.P5802468637491998326

`∏{d}[n+1, A023896(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280246

/-- `∏{d}[n+1, A023896(#)]` -/
def P5802468637491998326.Spec : Prop :=
  ∀ n, P5802468637491998326.a n = A280246 (n + 1)

theorem P5802468637491998326.correct : P5802468637491998326.Spec := by
  intro n
  simp only [A280246, Nat.add_sub_cancel]

end A280246

/-! ## A280246.P16699502785319212879

`∏{d}[n+1, round(A002618(#)/2)]`
-/

namespace A280246.P16699502785319212879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((A002618 d : ℚ) / 2)

end

end A280246.P16699502785319212879

namespace A280246

/-- `∏{d}[n+1, round(A002618(#)/2)]` -/
def P16699502785319212879.Spec : Prop :=
  ∀ n, P16699502785319212879.a n = A280246 (n + 1)

end A280246

/-! ## A280246.P4665231859795197751

`∏{d}[n+1, ceil(A000010(#²)/2)]`
-/

namespace A280246.P4665231859795197751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈(A000010 (d ^ 2) : ℚ) / 2⌉

end

end A280246.P4665231859795197751

namespace A280246

/-- `∏{d}[n+1, ceil(A000010(#²)/2)]` -/
def P4665231859795197751.Spec : Prop :=
  ∀ n, P4665231859795197751.a n = A280246 (n + 1)

end A280246

/-! ## A280246.P2935418803637437087

`∏{d}[n+1, A004525(A002618(#))]`
-/

namespace A280246.P2935418803637437087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004525 (A002618 d).toNat

end

end A280246.P2935418803637437087

namespace A280246

/-- `∏{d}[n+1, A004525(A002618(#))]` -/
def P2935418803637437087.Spec : Prop :=
  ∀ n, P2935418803637437087.a n = A280246 (n + 1)

end A280246

/-! ## A280246.P8708780940501150173

`∏{d}[n+1, A032742(A002618((n+1)/#))]`
-/

namespace A280246.P8708780940501150173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A032742 (A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A280246.P8708780940501150173

namespace A280246

/-- `∏{d}[n+1, A032742(A002618((n+1)/#))]` -/
def P8708780940501150173.Spec : Prop :=
  ∀ n, P8708780940501150173.a n = A280246 (n + 1)

end A280246

/-!
# A280247: Partial sums of A280246 (Product_{d|n} psi(d)).

The programs for A280247, the canonical program `A280247.P5390597219215679512` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280247 has offset 1).

The definition of A280247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280247.P5390597219215679512

`∑[A280246(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A280247

/-- `∑[A280246(n+1)]` -/
def P5390597219215679512.Spec : Prop :=
  ∀ n, P5390597219215679512.a n = A280247 (n + 1)

theorem P5390597219215679512.correct : P5390597219215679512.Spec := by
  intro n
  simp only [A280247, Nat.add_sub_cancel]

end A280247

/-! ## A280247.P14447269674141705294

`∑[∏{d}[n+1, A023896(#)]]`
-/

namespace A280247.P14447269674141705294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A023896 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280247.P14447269674141705294

namespace A280247

/-- `∑[∏{d}[n+1, A023896(#)]]` -/
def P14447269674141705294.Spec : Prop :=
  ∀ n, P14447269674141705294.a n = A280247 (n + 1)

end A280247

/-! ## A280247.P6291763114272614472

`∑[∏{d}[n+1, round(A002618(#)/2)]]`
-/

namespace A280247.P6291763114272614472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway ((A002618 d : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280247.P6291763114272614472

namespace A280247

/-- `∑[∏{d}[n+1, round(A002618(#)/2)]]` -/
def P6291763114272614472.Spec : Prop :=
  ∀ n, P6291763114272614472.a n = A280247 (n + 1)

end A280247

/-! ## A280247.P8873899790964267684

`∑[∏{d}[n+1, ceil(A000010(#²)/2)]]`
-/

namespace A280247.P8873899790964267684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ⌈(A000010 (d ^ 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280247.P8873899790964267684

namespace A280247

/-- `∑[∏{d}[n+1, ceil(A000010(#²)/2)]]` -/
def P8873899790964267684.Spec : Prop :=
  ∀ n, P8873899790964267684.a n = A280247 (n + 1)

end A280247

/-! ## A280247.P12799465777052011547

`∑[∏{d}[n+1, A004525(A002618(#))]]`
-/

namespace A280247.P12799465777052011547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A004525 (A002618 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280247.P12799465777052011547

namespace A280247

/-- `∑[∏{d}[n+1, A004525(A002618(#))]]` -/
def P12799465777052011547.Spec : Prop :=
  ∀ n, P12799465777052011547.a n = A280247 (n + 1)

end A280247

/-!
# A280248: Partial products of A280246 (Product_{d|n} psi(d)).

The programs for A280248, there is no canonical definition to state claims against.
-/

/-! ## A280248.P3710255984771907194

`∏[A280246(n+1)]`
-/

namespace A280248.P3710255984771907194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280248.P3710255984771907194

/-! ## A280248.P5198982583797469541

`∏[∏{d}[n+1, A023896(#)]]`
-/

namespace A280248.P5198982583797469541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A023896 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280248.P5198982583797469541

/-! ## A280248.P8557777452899225209

`∏[∏{d}[n+1, ceil(A000010(#²)/2)]]`
-/

namespace A280248.P8557777452899225209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ⌈(A000010 (d ^ 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280248.P8557777452899225209

/-! ## A280248.P8156500227419563900

`∏[∏{d}[n+1, A004525(A002618(#))]]`
-/

namespace A280248.P8156500227419563900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A004525 (A002618 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280248.P8156500227419563900

/-! ## A280248.P404435213859826625

`∏[∏{d}[n+1, A032742(A002618((n+1)/#))]]`
-/

namespace A280248.P404435213859826625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A032742 (A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280248.P404435213859826625

/-!
# A280249: a(n) = smallest k with digit product A002473(n).

The programs for A280249, there is no canonical definition to state claims against.
-/

/-! ## A280249.P12722143805243876527

`A068189(A002473(n+1))`
-/

namespace A280249.P12722143805243876527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (A002473 (n + 1)).toNat

end

end A280249.P12722143805243876527

/-! ## A280249.P16246820456210790224

`A068189(record[A262401(n+1)])`
-/

namespace A280249.P16246820456210790224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280249.P16246820456210790224

/-! ## A280249.P15965540429161392826

`A068189(A085128(n+1)/5)`
-/

namespace A280249.P15965540429161392826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (SequenceMachineLib.roundAway ((A085128 (n + 1) : ℚ) / 5)).toNat

end

end A280249.P15965540429161392826

/-! ## A280249.P10534108357543137623

`A068189(record[∏{digits}[A068189(n+1), #]])`
-/

namespace A280249.P10534108357543137623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A280249.P10534108357543137623

/-! ## A280249.P14361740661798201953

`A068189(lt[0, A068189(n+1)]+1)`
-/

namespace A280249.P14361740661798201953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A280249.P14361740661798201953

/-! ## A280249.P1035963088100201092

`A068189(record[(n+1)*A086299(n+1)])`
-/

namespace A280249.P1035963088100201092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280249.P1035963088100201092

/-! ## A280249.P5001963422981766484

`filter[A068189(n+1), A168046(#)]`
-/

namespace A280249.P5001963422981766484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A280249.P5001963422981766484

/-! ## A280249.P2711199272408400155

`filter[A068189(n+1), A168184(#)]`
-/

namespace A280249.P2711199272408400155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A280249.P2711199272408400155

/-! ## A280249.P2495436963663132984

`A068189(record[A007954(A068189(n+1))])`
-/

namespace A280249.P2495436963663132984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A068189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280249.P2495436963663132984

/-!
# A280250: Sum of the smaller parts of the partitions of 2n into 2 squarefree parts.

The programs for A280250, there is no canonical definition to state claims against.
-/

/-! ## A280250.P1880606769833189667

`A280252(n+1)-A280251(n+1)`
-/

namespace A280250.P1880606769833189667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280252 (n + 1) - A280251 (n + 1)

end

end A280250.P1880606769833189667

/-! ## A280250.P1669992299768192580

`A261985(2*(n+1))`
-/

namespace A280250.P1669992299768192580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261985 (2 * (n + 1))

end

end A280250.P1669992299768192580

/-! ## A280250.P17001035283117534296

`root(A261985(n+2+n), 2)²`
-/

namespace A280250.P17001035283117534296
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A261985 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A280250.P17001035283117534296

/-! ## A280250.P12780267829784519268

`or(char[1], A261985(Δ[n²]+1))`
-/

namespace A280250.P12780267829784519268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261985 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat)

end

end A280250.P12780267829784519268

/-! ## A280250.P2666178267210703375

`A261985(n+2+n)/A007318(C(2, n))`
-/

namespace A280250.P2666178267210703375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261985 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A280250.P2666178267210703375

/-! ## A280250.P3166360231945470935

`A262351(2*(n+1))-A261927(2*(n+1))`
-/

namespace A280250.P3166360231945470935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262351 (2 * (n + 1)) - A261927 (2 * (n + 1))

end

end A280250.P3166360231945470935

/-! ## A280250.P9188929584466278399

`A303221(2*(n+1))/A000027(2*(n+1))`
-/

namespace A280250.P9188929584466278399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303221 (2 * (n + 1)) : ℚ) / (A000027 (2 * (n + 1)) : ℚ)

end

end A280250.P9188929584466278399

/-! ## A280250.P16961560729332460567

`A000027(A261985(n+2+n))`
-/

namespace A280250.P16961560729332460567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A261985 (n + 2 + n)).toNat

end

end A280250.P16961560729332460567

/-! ## A280250.P17785355070560581898

`gcd(A072233(∑[n]), A261985(n+2+n))`
-/

namespace A280250.P17785355070560581898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072233 (∑ j ∈ Finset.range (n + 1), f1 j)) (A261985 (n + 2 + n))

end

end A280250.P17785355070560581898

/-!
# A280251: Sum of the larger parts of the partitions of 2n into two squarefree parts.

The programs for A280251, there is no canonical definition to state claims against.
-/

/-! ## A280251.P13657731663547286708

`A280252(n+1)-A280250(n+1)`
-/

namespace A280251.P13657731663547286708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280252 (n + 1) - A280250 (n + 1)

end

end A280251.P13657731663547286708

/-! ## A280251.P17504202436705943532

`A261927(2*(n+1))`
-/

namespace A280251.P17504202436705943532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261927 (2 * (n + 1))

end

end A280251.P17504202436705943532

/-! ## A280251.P17937473598608992684

`abs(1-A261927(n+2+n))+1`
-/

namespace A280251.P17937473598608992684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A261927 (n + 2 + n)| + 1

end

end A280251.P17937473598608992684

/-! ## A280251.P9660177005870385623

`A261927(n+2+n)%A078370(n)`
-/

namespace A280251.P9660177005870385623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261927 (n + 2 + n)) (A078370 n)

end

end A280251.P9660177005870385623

/-! ## A280251.P792209903895941372

`A261927(n+2+n)^(A000038(n)+1)`
-/

namespace A280251.P792209903895941372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261927 (n + 2 + n) : ℚ) ^ (A000038 n + 1 : ℤ)

end

end A280251.P792209903895941372

/-! ## A280251.P14947950015220401141

`A262351(2*(n+1))-A261985(2*(n+1))`
-/

namespace A280251.P14947950015220401141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262351 (2 * (n + 1)) - A261985 (2 * (n + 1))

end

end A280251.P14947950015220401141

/-! ## A280251.P11716422728406530492

`A262351(2*(n+1))-A280250(n+1)`
-/

namespace A280251.P11716422728406530492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262351 (2 * (n + 1)) - A280250 (n + 1)

end

end A280251.P11716422728406530492

/-! ## A280251.P10143137884296799405

`lcm(2, A262351(n+2+n))-A280250(n+1)`
-/

namespace A280251.P10143137884296799405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A262351 (n + 2 + n)) : ℤ) - A280250 (n + 1)

end

end A280251.P10143137884296799405

/-! ## A280251.P6040260158137121268

`2*(n+1)*A280226(n+1)-A280250(n+1)`
-/

namespace A280251.P6040260158137121268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A280226 (n + 1)) - A280250 (n + 1)

end

end A280251.P6040260158137121268

/-! ## A280251.P5769304626493526481

`A028310(A261927(n+2+n))`
-/

namespace A280251.P5769304626493526481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A261927 (n + 2 + n)).toNat

end

end A280251.P5769304626493526481

/-!
# A280252: Sum of the parts in the partitions of 2n into two squarefree parts.

The programs for A280252, there is no canonical definition to state claims against.
-/

/-! ## A280252.P3624485276534416205

`2*(n+1)*A280226(n+1)`
-/

namespace A280252.P3624485276534416205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A280226 (n + 1)

end

end A280252.P3624485276534416205

/-! ## A280252.P16008079845235448429

`A280250(n+1)+A280251(n+1)`
-/

namespace A280252.P16008079845235448429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280250 (n + 1) + A280251 (n + 1)

end

end A280252.P16008079845235448429

/-! ## A280252.P9965431745120814701

`A262351(2*(n+1))`
-/

namespace A280252.P9965431745120814701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262351 (2 * (n + 1))

end

end A280252.P9965431745120814701

/-! ## A280252.P13600831124150890553

`lcm(2, A262351(n+2+n))`
-/

namespace A280252.P13600831124150890553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262351 (n + 2 + n))

end

end A280252.P13600831124150890553

/-! ## A280252.P6807218481741151723

`root(A262351(record[xor(1, n)+1]), 2)²`
-/

namespace A280252.P6807218481741151723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A262351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A280252.P6807218481741151723

/-! ## A280252.P14328548015231619014

`2*(n+1)*A071068(2*(n+1))`
-/

namespace A280252.P14328548015231619014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A071068 (2 * (n + 1)))

end

end A280252.P14328548015231619014

/-! ## A280252.P13490983496580630563

`A005843(n+1)*A071068(2*(n+1))`
-/

namespace A280252.P13490983496580630563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A071068 (2 * (n + 1))

end

end A280252.P13490983496580630563

/-! ## A280252.P11284488504126932748

`A261985(2*(n+1))+A261927(2*(n+1))`
-/

namespace A280252.P11284488504126932748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261985 (2 * (n + 1)) + A261927 (2 * (n + 1))

end

end A280252.P11284488504126932748

/-! ## A280252.P11533328245298498320

`A000027(A262351(n+2+n))`
-/

namespace A280252.P11533328245298498320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A262351 (n + 2 + n)).toNat

end

end A280252.P11533328245298498320

/-!
# A280253: Expansion of Product_{k>=1} (1 + x^p(k)), where p(k) is the number of partitions of k (A000041).

The programs for A280253, there is no canonical definition to state claims against.
-/

/-! ## A280253.P4884064322658786530

`A048766(A089616(n+1)+A089616(A260001(n+1)))`
-/

namespace A280253.P4884064322658786530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A089616 (n + 1) + A089616 (A260001 (n + 1)).toNat).toNat

end

end A280253.P4884064322658786530

/-! ## A280253.P9603255146878886511

`A108611(n)+A107751(A067802(n))`
-/

namespace A280253.P9603255146878886511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 n + A107751 (A067802 n).toNat

end

end A280253.P9603255146878886511

/-! ## A280253.P4805004008497440869

`A001221(C(A133575(n+3), A053633(n)))`
-/

namespace A280253.P4805004008497440869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A133575 (n + 3)).toNat (A053633 n).toNat)

end

end A280253.P4805004008497440869

/-! ## A280253.P3888671325766069313

`A103221(∑[A000034(A083365(2*n))])`
-/

namespace A280253.P3888671325766069313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A083365 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280253.P3888671325766069313

/-!
# A280254: Expansion of 1/(1 - Sum_{k>=1} x^p(k)), where p(k) is the number of partitions of k (A000041).

The programs for A280254, there is no canonical definition to state claims against.
-/

/-! ## A280254.P17195393718477104279

`A280917(n)+A178798(A027337(n))`
-/

namespace A280254.P17195393718477104279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280917 n + A178798 (A027337 n).toNat

end

end A280254.P17195393718477104279

/-! ## A280254.P4517331564433110727

`A280917(n)+A178798(A280240(n))`
-/

namespace A280254.P4517331564433110727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280917 n + A178798 (A280240 n).toNat

end

end A280254.P4517331564433110727

/-! ## A280254.P17900708799358112163

`A280917(n)-A085974(A000079(n))`
-/

namespace A280254.P17900708799358112163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280917 n - A085974 (A000079 n).toNat

end

end A280254.P17900708799358112163

/-! ## A280254.P6051000631595406226

`A280917(n)-A055641(A202086(n+1))`
-/

namespace A280254.P6051000631595406226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280917 n - A055641 (A202086 (n + 1)).toNat

end

end A280254.P6051000631595406226

/-! ## A280254.P14773940220596195192

`A280917(n)-A326499(A068501(n+1))`
-/

namespace A280254.P14773940220596195192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280917 n - A326499 ((A068501 (n + 1)).toNat + 50)

end

end A280254.P14773940220596195192

/-!
# A280255: Numbers k such that tau(k^(k+1)) is a prime.

The programs for A280255, there is no canonical definition to state claims against.
-/

/-! ## A280255.P10950300267986864851

`eq[A032741(n), A114639(A051709(n+2))]`
-/

namespace A280255.P10950300267986864851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114639 (A051709 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280255.P10950300267986864851

/-! ## A280255.P6532580871102889828

`eq[A032741(n), A286530(A100577(n+2))]`
-/

namespace A280255.P6532580871102889828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (A100577 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280255.P6532580871102889828

/-! ## A280255.P18439013434627302695

`eq[A000726(A123317(n+1)), A032741(n)]`
-/

namespace A280255.P18439013434627302695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (A123317 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280255.P18439013434627302695

/-! ## A280255.P14746569642820914760

`eq[A135615(n+1), A322900(n)]`
-/

namespace A280255.P14746569642820914760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280255.P14746569642820914760

/-!
# A280257: Numbers k such that tau(k^(k-1)) is a prime.

The programs for A280257, there is no canonical definition to state claims against.
-/

/-! ## A280257.P13547865171417025754

`∪[A000040(n+1), A283549(n+1)]`
-/

namespace A280257.P13547865171417025754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280257.P13547865171417025754

/-! ## A280257.P14426686935648920930

`∪[A175787(n+1), A283549(n+1)]`
-/

namespace A280257.P14426686935648920930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280257.P14426686935648920930

/-! ## A280257.P15419958312524927427

`∪[p?[A152757(n+1)], A283549(n+1)]`
-/

namespace A280257.P15419958312524927427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152757 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A280257.P15419958312524927427

/-! ## A280257.P5400193569486806644

`∪[A283549(n+1), p?[A283599(n+1)]]`
-/

namespace A280257.P5400193569486806644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283549 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280257.P5400193569486806644

/-!
# A280258: a(n) = Sum_{d|n} pxi(d), where pxi(m) is the product of totatives of m (A001783).

The programs for A280258, there is no canonical definition to state claims against.
-/

/-! ## A280258.P12756444624702106732

`∑{d}[n+1, A001783(#)]`
-/

namespace A280258.P12756444624702106732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001783 d

end

end A280258.P12756444624702106732

/-! ## A280258.P13618560613558934394

`ratio[A280260(A028310(n))]`
-/

namespace A280258.P13618560613558934394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280260 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A280258.P13618560613558934394

/-! ## A280258.P4392821805483398656

`ratio[A280260(gcd(n, A001783(n+1)))]`
-/

namespace A280258.P4392821805483398656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280260 (Int.gcd (n : ℤ) (A001783 (n + 1)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A280258.P4392821805483398656

/-! ## A280258.P11969064372458331902

`A280260(n+1)/A280260(A028310(n))`
-/

namespace A280258.P11969064372458331902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280260 (n + 1) : ℚ) / (A280260 (A028310 n).toNat : ℚ)

end

end A280258.P11969064372458331902

/-! ## A280258.P5608634227637621893

`Δ[∑{e}[2^n, A280259(#)]]`
-/

namespace A280258.P5608634227637621893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A280259 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280258.P5608634227637621893

/-!
# A280259: Partial sums of A280258.

The programs for A280259, there is no canonical definition to state claims against.
-/

/-! ## A280259.P1976632049778931107

`∑[A280258(n+1)]`
-/

namespace A280259.P1976632049778931107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280259.P1976632049778931107

/-! ## A280259.P18102302898615217976

`∑[∑{d}[n+1, A001783(#)]]`
-/

namespace A280259.P18102302898615217976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001783 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280259.P18102302898615217976

/-! ## A280259.P6947900326435424553

`a(n-1)+A280258(n+1)/A000120(A016116(n))` with `a(0)=1`
-/

namespace A280259.P6947900326435424553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A280258 (n + 1) : ℚ) / (A000120 (A016116 n).toNat : ℚ)

end

end A280259.P6947900326435424553

/-! ## A280259.P3565679514808845438

`∑[ratio[A280260(A028310(n))]]`
-/

namespace A280259.P3565679514808845438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280260 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280259.P3565679514808845438

/-! ## A280259.P16472577994105556614

`∑[ratio[A280260(gcd(n, A001783(n+1)))]]`
-/

namespace A280259.P16472577994105556614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280260 (Int.gcd (n : ℤ) (A001783 (n + 1)))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280259.P16472577994105556614

/-!
# A280260: Partial products of A280258.

The programs for A280260, there is no canonical definition to state claims against.
-/

/-! ## A280260.P13853088244766468451

`∏[A280258(n+1)]`
-/

namespace A280260.P13853088244766468451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280260.P13853088244766468451

/-! ## A280260.P5656692863058261088

`∏[∑{d}[n+1, A001783(#)]]`
-/

namespace A280260.P5656692863058261088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001783 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280260.P5656692863058261088

/-! ## A280260.P9188942630072871323

`∏[Δ[∑{e}[2^n, A280259(#)]]]`
-/

namespace A280260.P9188942630072871323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A280259 (Nat.factorization (f3 n) p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280260.P9188942630072871323

/-! ## A280260.P1382359411453158790

`∏[A018783(A032555(n+1))+A001783(n+1)]`
-/

namespace A280260.P1382359411453158790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A032555 (n + 1)).toNat + A001783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280260.P1382359411453158790

/-!
# A280261: Period 12 sequence [0, 1, -1, 0, -1, -1, 0, -1, 1, 0, 1, 1, ...].

The programs for A280261, the canonical program `A280261.P7600834916848694144` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280261 has offset 0).

The definition of A280261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280261.P7600834916848694144

`(-1)^(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280261

/-- `(-1)^(n-1)*a(n-1)+a(n-2)` -/
def P7600834916848694144.Spec : Prop :=
  ∀ n, P7600834916848694144.a n = (A280261 n : ℚ)

end A280261

/-!
# A280262: Numbers n such that A187730(n) < A049559(n).

The programs for A280262, there is no canonical definition to state claims against.
-/

/-! ## A280262.P18254798573951593367

`eq[1, A353808(n+2)]+2`
-/

namespace A280262.P18254798573951593367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353808 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A280262.P18254798573951593367

/-! ## A280262.P4903855864008852900

`lt[1, A353801(n+2)]+2`
-/

namespace A280262.P4903855864008852900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A280262.P4903855864008852900

/-! ## A280262.P5046010990472347941

`filter[A181780(n+1), A353808(#)]`
-/

namespace A280262.P5046010990472347941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P5046010990472347941

/-! ## A280262.P16555888530487723222

`filter[A039769(n+1), A353808(#)]`
-/

namespace A280262.P16555888530487723222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P16555888530487723222

/-! ## A280262.P5035508447507975347

`filter[A324110(n+1), A353808(#)]`
-/

namespace A280262.P5035508447507975347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P5035508447507975347

/-! ## A280262.P7364504939493430448

`filter[A070537(n+1), A353808(#)]`
-/

namespace A280262.P7364504939493430448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P7364504939493430448

/-! ## A280262.P7334152821727459485

`filter[A267894(n+3), A353808(#)]`
-/

namespace A280262.P7334152821727459485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267894 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P7334152821727459485

/-! ## A280262.P14505041808373605538

`filter[A325037(n+1), A353808(#)]`
-/

namespace A280262.P14505041808373605538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P14505041808373605538

/-! ## A280262.P14401673667518636329

`filter[A093642(n+1), A353808(#)]`
-/

namespace A280262.P14401673667518636329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P14401673667518636329

/-! ## A280262.P15709435642321570273

`filter[A105441(n+1), A353808(#)]`
-/

namespace A280262.P15709435642321570273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353808 (f1 j).toNat = 1) n)

end

end A280262.P15709435642321570273

/-! ## A280262.P5993293805883545955

`A020725(eq[1, A353808(n+1)])`
-/

namespace A280262.P5993293805883545955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280262.P5993293805883545955

/-! ## A280262.P6866763021831418514

`eq[1, A353808(A028310(n))]`
-/

namespace A280262.P6866763021831418514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353808 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280262.P6866763021831418514

/-! ## A280262.P15075407623838861149

`eq[1, A353808(A233583(n+1))]`
-/

namespace A280262.P15075407623838861149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353808 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280262.P15075407623838861149

/-!
# A280264: G.f.: Product_{k>=1} (1+x^k) / (1+x^(k^3)).

The programs for A280264, there is no canonical definition to state claims against.
-/

/-! ## A280264.P11568406602877718704

`A008676(A003986(∑[n]²))`
-/

namespace A280264.P11568406602877718704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A003986 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A280264.P11568406602877718704

/-! ## A280264.P12737259294631123939

`A248519(n)-A248805(A011782(n))`
-/

namespace A280264.P12737259294631123939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248519 n - A248805 (A011782 n).toNat

end

end A280264.P12737259294631123939

/-! ## A280264.P16021440603017016034

`xor(A000607(n), A159638(A146582(n+1)))`
-/

namespace A280264.P16021440603017016034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000607 n) (A159638 (A146582 (n + 1)).toNat)

end

end A280264.P16021440603017016034

/-! ## A280264.P3940891242484282759

`A025147(n)-A353480(A078057(n))`
-/

namespace A280264.P3940891242484282759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A353480 (A078057 n).toNat

end

end A280264.P3940891242484282759

/-! ## A280264.P5951338799788748690

`A286220(n)+A088950(A007560(n+1))`
-/

namespace A280264.P5951338799788748690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286220 n + A088950 (A007560 (n + 1)).toNat

end

end A280264.P5951338799788748690

/-!
# A280266: Primes such that the previous prime plus the next prime plus 1 is also prime.

The programs for A280266, the canonical program `A280266.P6389486118769418393` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280266 has offset 1).

The definition of A280266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280266.P14368900220008417109

`A076272(A111255(n+1)-1)`
-/

namespace A280266.P14368900220008417109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A111255 (n + 1) - 1).toNat

end

end A280266.P14368900220008417109

namespace A280266

/-- `A076272(A111255(n+1)-1)` -/
def P14368900220008417109.Spec : Prop :=
  ∀ n, P14368900220008417109.a n = A280266 (n + 1)

end A280266

/-! ## A280266.P4007803627858752067

`A076272(xor(1, A111255(n+1)))`
-/

namespace A280266.P4007803627858752067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (Int.xor 1 (A111255 (n + 1))).toNat

end

end A280266.P4007803627858752067

namespace A280266

/-- `A076272(xor(1, A111255(n+1)))` -/
def P4007803627858752067.Spec : Prop :=
  ∀ n, P4007803627858752067.a n = A280266 (n + 1)

end A280266

/-! ## A280266.P6389486118769418393

`p?[A008578(n+1)*A013632(A048448(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280266

/-- `p?[A008578(n+1)*A013632(A048448(n))]` -/
def P6389486118769418393.Spec : Prop :=
  ∀ n, P6389486118769418393.a n = A280266 (n + 1)

theorem P6389486118769418393.correct : P6389486118769418393.Spec := by
  intro n
  simp only [A280266, Nat.add_sub_cancel]

end A280266

/-! ## A280266.P13953926304214213161

`A076272(p?[A111254(n+1)]-1)`
-/

namespace A280266.P13953926304214213161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A280266.P13953926304214213161

namespace A280266

/-- `A076272(p?[A111254(n+1)]-1)` -/
def P13953926304214213161.Spec : Prop :=
  ∀ n, P13953926304214213161.a n = A280266 (n + 1)

end A280266

/-! ## A280266.P17560287365715463229

`p?[A045344(n+1)*A246277(A111254(n+1))]`
-/

namespace A280266.P17560287365715463229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A246277 (A111254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280266.P17560287365715463229

namespace A280266

/-- `p?[A045344(n+1)*A246277(A111254(n+1))]` -/
def P17560287365715463229.Spec : Prop :=
  ∀ n, P17560287365715463229.a n = A280266 (n + 1)

end A280266

/-!
# A280269: Irregular triangle T(n,m) read by rows: smallest power e of n that is divisible by m = term k in row n of A162306.

The programs for A280269, there is no canonical definition to state claims against.
-/

/-! ## A280269.P5592844085690079805

`A124010(A162306(n+1)^A085731(n+1))`
-/

namespace A280269.P5592844085690079805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.roundAway ((A162306 (n + 1) : ℚ) ^ (A085731 (n + 1) : ℤ))).toNat

end

end A280269.P5592844085690079805

/-! ## A280269.P4602850847564170650

`A212182(A140633(3*n+2))%A162306(n+1)`
-/

namespace A280269.P4602850847564170650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212182 (A140633 (3 * n + 2)).toNat) (A162306 (n + 1))

end

end A280269.P4602850847564170650

/-! ## A280269.P16550262486530180225

`A304042(A121653(n))%A275280(n+1)`
-/

namespace A280269.P16550262486530180225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304042 (A121653 n).toNat) (A275280 (n + 1))

end

end A280269.P16550262486530180225

/-! ## A280269.P17089354426981200524

`A132042(A000040(n+1))%A162306(n+1)`
-/

namespace A280269.P17089354426981200524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132042 (A000040 (n + 1)).toNat) (A162306 (n + 1))

end

end A280269.P17089354426981200524

/-! ## A280269.P18399094645550571889

`A124769(A381801(n+1)^A117184(n))`
-/

namespace A280269.P18399094645550571889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.roundAway ((A381801 (n + 1) : ℚ) ^ (A117184 n : ℤ))).toNat

end

end A280269.P18399094645550571889

/-!
# A280270: Numbers k such that A278981(k) < 2*k^2.

The programs for A280270, there is no canonical definition to state claims against.
-/

/-! ## A280270.P7304811797745065426

`lt[A278981(n+2), A033991(n)]+2`
-/

namespace A280270.P7304811797745065426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A280270.P7304811797745065426

/-! ## A280270.P5839187619246206414

`lt[A278981(n+2), A090612(n+1)]+2`
-/

namespace A280270.P5839187619246206414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A280270.P5839187619246206414

/-! ## A280270.P3208217932180354838

`lt[A278981(n+2), A104171(n+1)]+2`
-/

namespace A280270.P3208217932180354838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A280270.P3208217932180354838

/-! ## A280270.P2736369523708295658

`lt[A278981(n+2), A243895(n+2)]+2`
-/

namespace A280270.P2736369523708295658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243895 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A280270.P2736369523708295658

/-! ## A280270.P3872459506735168745

`lt[A278981(n+2), A002378(2*n+1)]+2`
-/

namespace A280270.P3872459506735168745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278981 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A280270.P3872459506735168745

/-!
# A280271: Expansion of (1/(1 - x))*Product_{k>=1} (1 + x^prime(k)).

The programs for A280271, there is no canonical definition to state claims against.
-/

/-! ## A280271.P13764697558691157273

`∑[A000586(n)]`
-/

namespace A280271.P13764697558691157273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P13764697558691157273

/-! ## A280271.P13569320304060906672

`A036497(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A280271.P13569320304060906672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A036497 n + a (n - 2)

end

end A280271.P13569320304060906672

/-! ## A280271.P13985514962436635946

`∑[A184172(n)+A184171(n)]`
-/

namespace A280271.P13985514962436635946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + A184171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P13985514962436635946

/-! ## A280271.P10402651139759308391

`∑[A046675(n)+2*A184172(n)]`
-/

namespace A280271.P10402651139759308391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 n + 2 * A184172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P10402651139759308391

/-! ## A280271.P11487355020917918054

`∑[2*A184171(n)-A046675(n)]`
-/

namespace A280271.P11487355020917918054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184171 n - A046675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P11487355020917918054

/-! ## A280271.P12789858695519252252

`A179385(n+2)-(A179385(n+1)+A000586(n+1))`
-/

namespace A280271.P12789858695519252252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179385 (n + 2) - (A179385 (n + 1) + A000586 (n + 1))

end

end A280271.P12789858695519252252

/-! ## A280271.P13744862108700455997

`∑[A024937(n+2)+A024937(n)]`
-/

namespace A280271.P13744862108700455997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (n + 2) + A024937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P13744862108700455997

/-! ## A280271.P15028975264418140844

`A184171(n)+∑[A339383(n)]`
-/

namespace A280271.P15028975264418140844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P15028975264418140844

/-! ## A280271.P11800455954534498761

`∑[A024939(n)+A024937(n)]`
-/

namespace A280271.P11800455954534498761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 n + A024937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P11800455954534498761

/-! ## A280271.P1089398890344058974

`A184172(n)+∑[A339382(n)]`
-/

namespace A280271.P1089398890344058974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P1089398890344058974

/-! ## A280271.P13502435852935582853

`∑[A382955(∑[n])]`
-/

namespace A280271.P13502435852935582853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382955 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280271.P13502435852935582853

/-!
# A280273: Primes p such that 8p^2 - 7p + 2 is also prime.

The programs for A280273, there is no canonical definition to state claims against.
-/

/-! ## A280273.P338118280413527602

`p?[a(n-1)+a(n-dr(n))]` with `a(0)=18, a(1)=3, a(2)=5`
-/

namespace A280273.P338118280413527602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 3, 5] fun n f1 =>
  f1 (n - 1) + f1 (n - SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A280273.P338118280413527602

/-! ## A280273.P9504841473615990444

`p?[∑[A006530(A029746(n))]]`
-/

namespace A280273.P9504841473615990444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A029746 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280273.P9504841473615990444

/-!
# A280274: a(n) is the maximum value in row n of A279907.

The programs for A280274, there is no canonical definition to state claims against.
-/

/-! ## A280274.P16648391842591923593

`A001222(or(A073184(n+1), A169773(n+4)))`
-/

namespace A280274.P16648391842591923593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A073184 (n + 1)) (A169773 (n + 4))).toNat

end

end A280274.P16648391842591923593

/-! ## A280274.P17616159533280278010

`A001222(or(A169773(n+4), A181819(n+1)))`
-/

namespace A280274.P17616159533280278010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A169773 (n + 4)) (A181819 (n + 1))).toNat

end

end A280274.P17616159533280278010

/-! ## A280274.P17869764209196021321

`A243822(n+1)+A052344(∑{d}[n+1, gcd(n, #)]!)`
-/

namespace A280274.P17869764209196021321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + A052344 (Nat.factorial (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d))

end

end A280274.P17869764209196021321

/-! ## A280274.P7032215510054198447

`A061394(A295557(n+1)+A169773(n+4))`
-/

namespace A280274.P7032215510054198447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (A295557 (n + 1) + A169773 (n + 4)).toNat

end

end A280274.P7032215510054198447

/-! ## A280274.P16781620837775712867

`A322028(n+1)+A001222(A104445(A063726(n)))`
-/

namespace A280274.P16781620837775712867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (n + 1) + A001222 (A104445 (A063726 n).toNat).toNat

end

end A280274.P16781620837775712867

/-!
# A280275: Number of set partitions of [n] where sizes of distinct blocks are coprime.

The programs for A280275, there is no canonical definition to state claims against.
-/

/-! ## A280275.P7623156528979989399

`A036234(A326244(n))-A326249(n)`
-/

namespace A280275.P7623156528979989399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A326244 n).toNat - A326249 n

end

end A280275.P7623156528979989399

/-! ## A280275.P17325168285841027244

`A156562(or(A007814(n+1), A192401(n)))`
-/

namespace A280275.P17325168285841027244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (Int.lor (A007814 (n + 1)) (A192401 n)).toNat

end

end A280275.P17325168285841027244

/-! ## A280275.P16547024994779994005

`A089743(A148081(n))`
-/

namespace A280275.P16547024994779994005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (A148081 n).toNat

end

end A280275.P16547024994779994005

/-!
# A280276: G.f.: Product_{k>=1} (1 + x^k) / (1 - x^(k^2)).

The programs for A280276, there is no canonical definition to state claims against.
-/

/-! ## A280276.P3175220159887855025

`∑[A056556(A049937(n+1)+A000045(n))]`
-/

namespace A280276.P3175220159887855025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A049937 (n + 1) + A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280276.P3175220159887855025

/-! ## A280276.P13952673560113277095

`A000701(n)+A000196(A002865(3*(n+1)))`
-/

namespace A280276.P13952673560113277095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A000196 (A002865 (3 * (n + 1))).toNat

end

end A280276.P13952673560113277095

/-! ## A280276.P3848337491191820866

`A000701(n)+A000196(A187219(3*(n+1)))`
-/

namespace A280276.P3848337491191820866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A000196 (A187219 (3 * (n + 1))).toNat

end

end A280276.P3848337491191820866

/-! ## A280276.P11708353326915013271

`A137735(A002865(3*n+3))+A000701(n)`
-/

namespace A280276.P11708353326915013271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A002865 (3 * n + 3)).toNat + A000701 n

end

end A280276.P11708353326915013271

/-! ## A280276.P4971835005883602172

`A137735(A187219(3*n+3))+A000701(n)`
-/

namespace A280276.P4971835005883602172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A187219 (3 * n + 3)).toNat + A000701 n

end

end A280276.P4971835005883602172

/-!
# A280277: G.f.: Product_{k>=1} (1 + x^k) / (1 - x^(k^3)).

The programs for A280277, there is no canonical definition to state claims against.
-/

/-! ## A280277.P2108038367738304342

`∑[A280663(n)%A268658(n+1)]`
-/

namespace A280277.P2108038367738304342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280663 n) (A268658 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280277.P2108038367738304342

/-! ## A280277.P10034379255294595261

`∑[A000196(A280663(n)²)]`
-/

namespace A280277.P10034379255294595261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A280663 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280277.P10034379255294595261

/-! ## A280277.P9983213251336601493

`∑[A280663(n)]%A117781(n+1)`
-/

namespace A280277.P9983213251336601493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A117781 (n + 1))

end

end A280277.P9983213251336601493

/-! ## A280277.P5604413634085939853

`∑[A158366(A280663(n))]`
-/

namespace A280277.P5604413634085939853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A280663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280277.P5604413634085939853

/-! ## A280277.P8724773740691913412

`∑[A121900(A000041(2*n))]`
-/

namespace A280277.P8724773740691913412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A000041 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280277.P8724773740691913412

/-!
# A280278: G.f.: Product_{k>=1} (1 + x^(k^3)) / (1 - x^k).

The programs for A280278, there is no canonical definition to state claims against.
-/

/-! ## A280278.P5846805113398209288

`∑[A185284(2*n+1)+A261776(n)-A000701(n)]`
-/

namespace A280278.P5846805113398209288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + (A261776 n - A000701 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280278.P5846805113398209288

/-! ## A280278.P8588579248288913973

`∑[(A261776(n)-A000701(n))%A332922(n+1)]`
-/

namespace A280278.P8588579248288913973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261776 n - A000701 n) (A332922 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280278.P8588579248288913973

/-! ## A280278.P14175489066810301378

`∑[A000188((A000701(n)-A261776(n))²)]`
-/

namespace A280278.P14175489066810301378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((A000701 n - A261776 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280278.P14175489066810301378

/-! ## A280278.P2617295147184751253

`∑[A033676((A000701(n)-A261776(n))²)]`
-/

namespace A280278.P2617295147184751253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 ((A000701 n - A261776 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280278.P2617295147184751253

/-! ## A280278.P12514593560863027081

`A078408(n)-A086079(A267045(n+1))`
-/

namespace A280278.P12514593560863027081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 n - A086079 (A267045 (n + 1)).toNat

end

end A280278.P12514593560863027081

/-!
# A280279: Number of n X 1 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280279, the canonical program `A280279.P4531901277287163382` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280279 has offset 1).

The definition of A280279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280279.P4531901277287163382

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=8, a(5)=28, a(6)=94`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280279

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P4531901277287163382.Spec : Prop :=
  ∀ n, P4531901277287163382.a n = A280279 (n + 1)

theorem P4531901277287163382.correct : P4531901277287163382.Spec := by
  intro n
  simp only [A280279, Nat.add_sub_cancel]

end A280279

/-! ## A280279.P17931122422234408113

`A281139(∑[n]+1)`
-/

namespace A280279.P17931122422234408113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280279.P17931122422234408113

namespace A280279

/-- `A281139(∑[n]+1)` -/
def P17931122422234408113.Spec : Prop :=
  ∀ n, P17931122422234408113.a n = A280279 (n + 1)

end A280279

/-! ## A280279.P12755807154863693776

`or(char[2], A281139(A000124(n)))`
-/

namespace A280279.P12755807154863693776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281139 (A000124 n).toNat)

end

end A280279.P12755807154863693776

namespace A280279

/-- `or(char[2], A281139(A000124(n)))` -/
def P12755807154863693776.Spec : Prop :=
  ∀ n, P12755807154863693776.a n = A280279 (n + 1)

end A280279

/-! ## A280279.P5228111043662014789

`A054977(n)*A281139(A000124(n))`
-/

namespace A280279.P5228111043662014789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A281139 (A000124 n).toNat

end

end A280279.P5228111043662014789

namespace A280279

/-- `A054977(n)*A281139(A000124(n))` -/
def P5228111043662014789.Spec : Prop :=
  ∀ n, P5228111043662014789.a n = A280279 (n + 1)

end A280279

/-! ## A280279.P1069467423680976715

`A057427(n)*A281139(A000124(n))`
-/

namespace A280279.P1069467423680976715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281139 (A000124 n).toNat

end

end A280279.P1069467423680976715

namespace A280279

/-- `A057427(n)*A281139(A000124(n))` -/
def P1069467423680976715.Spec : Prop :=
  ∀ n, P1069467423680976715.a n = A280279 (n + 1)

end A280279

/-!
# A280280: Number of n X 3 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280280, there is no canonical definition to state claims against.
-/

/-! ## A280280.P15513534576445296778

`A280284(∑[n+2]+4)`
-/

namespace A280280.P15513534576445296778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280280.P15513534576445296778

/-! ## A280280.P11895511922481209248

`A280284(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A280280.P11895511922481209248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280284 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A280280.P11895511922481209248

/-! ## A280280.P12253144831952245567

`A280284(A167614(n+1))+A011730(n)`
-/

namespace A280280.P12253144831952245567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A167614 (n + 1)).toNat + A011730 n

end

end A280280.P12253144831952245567

/-! ## A280280.P10860691648037943969

`A280284(A167614(n+1))+A011731(n)`
-/

namespace A280280.P10860691648037943969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A167614 (n + 1)).toNat + A011731 n

end

end A280280.P10860691648037943969

/-! ## A280280.P11818833479688376574

`A280284(A167614(n+1))+A011739(n)`
-/

namespace A280280.P11818833479688376574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A167614 (n + 1)).toNat + A011739 n

end

end A280280.P11818833479688376574

/-!
# A280281: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280281, there is no canonical definition to state claims against.
-/

/-! ## A280281.P6593561117147295054

`A280284(A374004(n+1))`
-/

namespace A280281.P6593561117147295054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A374004 (n + 1)).toNat

end

end A280281.P6593561117147295054

/-! ## A280281.P6299620327560957498

`A280284(A145018(n+4))`
-/

namespace A280281.P6299620327560957498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A145018 (n + 4)).toNat

end

end A280281.P6299620327560957498

/-! ## A280281.P17816923723181414349

`A280284(A141214(n)+7)`
-/

namespace A280281.P17816923723181414349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A141214 n + 7).toNat

end

end A280281.P17816923723181414349

/-! ## A280281.P14538569046827676

`A280284(A052905(n)+9)`
-/

namespace A280281.P14538569046827676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A052905 n + 9).toNat

end

end A280281.P14538569046827676

/-! ## A280281.P3793440203952019670

`A280284(A055999(n)+10)`
-/

namespace A280281.P3793440203952019670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A055999 n + 10).toNat

end

end A280281.P3793440203952019670

/-!
# A280282: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280282, there is no canonical definition to state claims against.
-/

/-! ## A280282.P10995732748956370528

`A280284(A374005(n+1))`
-/

namespace A280282.P10995732748956370528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A374005 (n + 1)).toNat

end

end A280282.P10995732748956370528

/-! ## A280282.P13224499424565073146

`A280284(A167499(n+3))`
-/

namespace A280282.P13224499424565073146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A167499 (n + 3)).toNat

end

end A280282.P13224499424565073146

/-! ## A280282.P3879725151681925929

`A280284(A155212(n)+13)`
-/

namespace A280282.P3879725151681925929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A155212 n + 13).toNat

end

end A280282.P3879725151681925929

/-! ## A280282.P8420741962698105950

`A280284(A056000(n)+15)`
-/

namespace A280282.P8420741962698105950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A056000 n + 15).toNat

end

end A280282.P8420741962698105950

/-! ## A280282.P17717402238520242510

`A280284(eq[7, A066657(n)])`
-/

namespace A280282.P17717402238520242510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280282.P17717402238520242510

/-!
# A280283: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280283, there is no canonical definition to state claims against.
-/

/-! ## A280283.P58700401586778350

`A280284(A374007(n+1))`
-/

namespace A280283.P58700401586778350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A374007 (n + 1)).toNat

end

end A280283.P58700401586778350

/-! ## A280283.P5037247623281492274

`A280284(A056115(n)+21)`
-/

namespace A280283.P5037247623281492274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A056115 n + 21).toNat

end

end A280283.P5037247623281492274

/-! ## A280283.P5035292487998104192

`A280284(A167614(n+4)+3)`
-/

namespace A280283.P5035292487998104192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A167614 (n + 4) + 3).toNat

end

end A280283.P5035292487998104192

/-! ## A280283.P6402035205373313613

`A280284(A000096(n+4)+7)`
-/

namespace A280283.P6402035205373313613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280284 (A000096 (n + 4) + 7).toNat

end

end A280283.P6402035205373313613

/-!
# A280284: T(n,k)=Number of nXk 0..2 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A280284, there is no canonical definition to state claims against.
-/

/-! ## A280284.P6157815338956521559

`46%A006530(A005095(n))`
-/

namespace A280284.P6157815338956521559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 46 (A006530 (A005095 n).toNat)

end

end A280284.P6157815338956521559

/-! ## A280284.P2539778997905706665

`A229672(A032557(n+1))-A280313(n+1)`
-/

namespace A280284.P2539778997905706665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A032557 (n + 1)).toNat - A280313 (n + 1)

end

end A280284.P2539778997905706665

/-! ## A280284.P11357721709524345379

`A229672(n+1)-A280313(A280355(n+1))`
-/

namespace A280284.P11357721709524345379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (n + 1) - A280313 (A280355 (n + 1)).toNat

end

end A280284.P11357721709524345379

/-! ## A280284.P13317348522573724079

`A130130(A241463(n+1))*A220652(n+1)`
-/

namespace A280284.P13317348522573724079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A241463 (n + 1)).toNat * A220652 (n + 1)

end

end A280284.P13317348522573724079

/-! ## A280284.P8411680543969923105

`A173505(n)-A363551(A306077(3*(n+1)))`
-/

namespace A280284.P8411680543969923105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173505 n - A363551 (A306077 (3 * (n + 1))).toNat

end

end A280284.P8411680543969923105

/-!
# A280285: Number of partitions of n into odd composite numbers (A071904).

The programs for A280285, there is no canonical definition to state claims against.
-/

/-! ## A280285.P14491559245872762475

`A280912(A140361(A010893(n))+n)`
-/

namespace A280285.P14491559245872762475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280912 (A140361 (A010893 (n + 13)).toNat + (n : ℤ)).toNat

end

end A280285.P14491559245872762475

/-! ## A280285.P10211105141185949748

`A130782(A106534(n))*A280912(n)`
-/

namespace A280285.P10211105141185949748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 (A106534 n).toNat * A280912 n

end

end A280285.P10211105141185949748

/-! ## A280285.P3926281687851069848

`xor(A140361(A010893(n)), A280912(n))`
-/

namespace A280285.P3926281687851069848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A140361 (A010893 (n + 13)).toNat) (A280912 n)

end

end A280285.P3926281687851069848

/-! ## A280285.P8054449686588146016

`A280912(n)*A287957(A341515(A280196(n+1)))`
-/

namespace A280285.P8054449686588146016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280912 n * A287957 (A341515 (A280196 (n + 1)).toNat).toNat

end

end A280285.P8054449686588146016

/-! ## A280285.P17277672233148954689

`A280912(n)*A317934(A219514(n+1))`
-/

namespace A280285.P17277672233148954689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280912 n * A317934 (A219514 (n + 1)).toNat

end

end A280285.P17277672233148954689

/-!
# A280286: a(n) is the least k such that sopfr(k) - sopf(k) = n.

The programs for A280286, there is no canonical definition to state claims against.
-/

/-! ## A280286.P13608537118906020026

`A275465(n+2)*A348036(A275465(n+2)²)`
-/

namespace A280286.P13608537118906020026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275465 (n + 2) * A348036 (A275465 (n + 2) ^ 2).toNat

end

end A280286.P13608537118906020026

/-! ## A280286.P2580546397176243954

`A068794(∏{d}[A020639(n+2), #^((n+2)/#)]*A088878(n+1))`
-/

namespace A280286.P2580546397176243954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (SequenceMachineLib.roundAway ((∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℝ) ^ ((n + 2 : ℚ) / (d : ℚ) : ℝ)) * (A088878 (n + 1) : ℝ))).toNat

end

end A280286.P2580546397176243954

/-! ## A280286.P13841163525410222526

`A068794(∏{d}[A020639(n+2), #^((n+2)/#)]*A006530(3*n+4))`
-/

namespace A280286.P13841163525410222526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (SequenceMachineLib.roundAway ((∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℝ) ^ ((n + 2 : ℚ) / (d : ℚ) : ℝ)) * (A006530 (3 * n + 4) : ℝ))).toNat

end

end A280286.P13841163525410222526

/-! ## A280286.P15297756025132603870

`A068794(∏{d}[A020639(n+2), #^((n+2)/#)]*A020639(3*n+4))`
-/

namespace A280286.P15297756025132603870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (SequenceMachineLib.roundAway ((∏ d ∈ Nat.divisors (f1 n).natAbs, (d : ℝ) ^ ((n + 2 : ℚ) / (d : ℚ) : ℝ)) * (A020639 (3 * n + 4) : ℝ))).toNat

end

end A280286.P15297756025132603870

/-! ## A280286.P17880667479069987145

`A068794(A020639(n+2)^A032742(n+2)*A088878(n+1))`
-/

namespace A280286.P17880667479069987145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (SequenceMachineLib.roundAway ((A020639 (n + 2) : ℚ) ^ (A032742 (n + 2) : ℤ) * (A088878 (n + 1) : ℚ))).toNat

end

end A280286.P17880667479069987145

/-!
# A280287: Number of partitions of n into distinct odd composite numbers (A071904).

The programs for A280287, there is no canonical definition to state claims against.
-/

/-! ## A280287.P5797864677394979643

`A189820(A222217(n^A280285(n)))`
-/

namespace A280287.P5797864677394979643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (A222217 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A280285 n : ℤ))).toNat).toNat

end

end A280287.P5797864677394979643

/-! ## A280287.P12966275703388192572

`A060576(A025120(n+1)^A280285(n))`
-/

namespace A280287.P12966275703388192572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (SequenceMachineLib.roundAway ((A025120 (n + 1) : ℚ) ^ (A280285 n : ℤ))).toNat

end

end A280287.P12966275703388192572

/-! ## A280287.P14201472452542061856

`A010060(A114638(n)*A341480(n+3))`
-/

namespace A280287.P14201472452542061856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A114638 n * A341480 (n + 3)).toNat

end

end A280287.P14201472452542061856

/-! ## A280287.P18086568244721441940

`A000045(and(A155178(n+1), A280285(n)))`
-/

namespace A280287.P18086568244721441940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A155178 (n + 1)) (A280285 n)).toNat

end

end A280287.P18086568244721441940

/-! ## A280287.P10046806958648513899

`A001222(and(A155178(n+1), A280285(n))+1)`
-/

namespace A280287.P10046806958648513899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (A155178 (n + 1)) (A280285 n) + 1).toNat

end

end A280287.P10046806958648513899

/-!
# A280288: Numbers n such that number of partitions of n is even and number of partitions of n into distinct parts is odd.

The programs for A280288, there is no canonical definition to state claims against.
-/

/-! ## A280288.P6115238947401426246

`∩[A001560(n+1), A001318(n)]`
-/

namespace A280288.P6115238947401426246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280288.P6115238947401426246

/-! ## A280288.P17564153871214339224

`eq[A040051(n), A256119(n)]`
-/

namespace A280288.P17564153871214339224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280288.P17564153871214339224

/-! ## A280288.P3075867776752068163

`eq[A040051(n)+1, A080995(n)]`
-/

namespace A280288.P3075867776752068163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280288.P3075867776752068163

/-! ## A280288.P1565943384074775390

`eq[A040051(n)+1, A010815(n)²]`
-/

namespace A280288.P1565943384074775390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280288.P1565943384074775390

/-! ## A280288.P4345580602763225988

`eq[A040051(n)+1, A121373(n)²]`
-/

namespace A280288.P4345580602763225988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280288.P4345580602763225988

/-! ## A280288.P2299219693096996124

`lt[1, abs(A133079(n)*A278478(n))]`
-/

namespace A280288.P2299219693096996124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133079 n * A278478 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A280288.P2299219693096996124

/-! ## A280288.P862442456591361708

`A001318(eq[0, A040051(A001318(n))])`
-/

namespace A280288.P862442456591361708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (A001318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280288.P862442456591361708

/-! ## A280288.P6364596066239291200

`eq[A040051(n), A049600(A008585(n))]`
-/

namespace A280288.P6364596066239291200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A008585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280288.P6364596066239291200

/-!
# A280289: Numbers n such that number of partitions of n is odd and number of partitions of n into distinct parts is even.

The programs for A280289, there is no canonical definition to state claims against.
-/

/-! ## A280289.P6792399769307711673

`eq[A080332(n), A278478(n)]`
-/

namespace A280289.P6792399769307711673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P6792399769307711673

/-! ## A280289.P1953352726888360861

`eq[A116916(n), A278478(n)]`
-/

namespace A280289.P1953352726888360861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P1953352726888360861

/-! ## A280289.P12716899686650594219

`eq[A133079(n), A278478(n)]`
-/

namespace A280289.P12716899686650594219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P12716899686650594219

/-! ## A280289.P17540220172182397924

`eq[A080332(n), A355676(n)]`
-/

namespace A280289.P17540220172182397924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P17540220172182397924

/-! ## A280289.P3189069563323167183

`eq[A178902(n), A278478(n)]`
-/

namespace A280289.P3189069563323167183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P3189069563323167183

/-! ## A280289.P17284187520001424622

`eq[A116916(n), A355676(n)]`
-/

namespace A280289.P17284187520001424622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P17284187520001424622

/-! ## A280289.P16160396078720790268

`eq[A133079(n), A355676(n)]`
-/

namespace A280289.P16160396078720790268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P16160396078720790268

/-! ## A280289.P18012360005448025221

`eq[A178902(n), A355676(n)]`
-/

namespace A280289.P18012360005448025221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P18012360005448025221

/-! ## A280289.P11111602558135386686

`eq[A134756(n), A278478(n)]`
-/

namespace A280289.P11111602558135386686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P11111602558135386686

/-! ## A280289.P5968372761531601087

`eq[A143278(n), A278478(n)]`
-/

namespace A280289.P5968372761531601087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P5968372761531601087

/-! ## A280289.P2148201367773992039

`eq[A134756(n), A355676(n)]`
-/

namespace A280289.P2148201367773992039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P2148201367773992039

/-! ## A280289.P943316687561215820

`eq[A143278(n), A355676(n)]`
-/

namespace A280289.P943316687561215820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P943316687561215820

/-! ## A280289.P4506157125302650298

`filter[A090864(n+1), A040051(#)]`
-/

namespace A280289.P4506157125302650298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j).toNat = 1) n)

end

end A280289.P4506157125302650298

/-! ## A280289.P493848864695296167

`∩[A052002(n+1), A090864(n+1)]`
-/

namespace A280289.P493848864695296167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280289.P493848864695296167

/-! ## A280289.P5189825635190428590

`eq[A184362(n), A278478(n)]`
-/

namespace A280289.P5189825635190428590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P5189825635190428590

/-! ## A280289.P13638614661599245967

`eq[A184362(n), A355676(n)]`
-/

namespace A280289.P13638614661599245967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280289.P13638614661599245967

/-!
# A280290: Numbers n such that number of partitions of n is even and number of partitions of n into distinct parts is even.

The programs for A280290, there is no canonical definition to state claims against.
-/

/-! ## A280290.P18287182642552420155

`lt[abs(A133079(n)), A278478(n)]`
-/

namespace A280290.P18287182642552420155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133079 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280290.P18287182642552420155

/-! ## A280290.P8092752049118353727

`eq[-A040051(n), A080332(n)]`
-/

namespace A280290.P8092752049118353727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280290.P8092752049118353727

/-! ## A280290.P2589040743283521015

`eq[-A040051(n), A116916(n)]`
-/

namespace A280290.P2589040743283521015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280290.P2589040743283521015

/-! ## A280290.P14365808381810638259

`eq[-A040051(n), A133079(n)]`
-/

namespace A280290.P14365808381810638259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280290.P14365808381810638259

/-! ## A280290.P13343857424505258810

`eq[-A040051(n), A147843(n)]`
-/

namespace A280290.P13343857424505258810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280290.P13343857424505258810

/-! ## A280290.P1364083480766494057

`eq[sin(A010815(n)), A040051(n)]`
-/

namespace A280290.P1364083480766494057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A010815 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A280290.P1364083480766494057

/-! ## A280290.P3808921378462548558

`eq[sin(A040051(n)), A080995(n)]`
-/

namespace A280290.P3808921378462548558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A040051 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A280290.P3808921378462548558

/-! ## A280290.P14826967708110144900

`eq[sin(A040051(n)), A121373(n)]`
-/

namespace A280290.P14826967708110144900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A040051 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A280290.P14826967708110144900

/-! ## A280290.P15733871652171016710

`eq[cos(A040051(n)), A007706(n)]`
-/

namespace A280290.P15733871652171016710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A040051 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A280290.P15733871652171016710

/-! ## A280290.P5166844695484706192

`∩[A001560(n+1), A090864(n+1)]`
-/

namespace A280290.P5166844695484706192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280290.P5166844695484706192

/-! ## A280290.P9333751656128727236

`eq[sin(A040051(n)), A143062(n)]`
-/

namespace A280290.P9333751656128727236
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A040051 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A280290.P9333751656128727236

/-!
# A280291: Numbers n such that number of partitions of n is odd and number of partitions of n into distinct parts is odd.

The programs for A280291, there is no canonical definition to state claims against.
-/

/-! ## A280291.P4267154415450947966

`∩[A052002(n+1), A001318(n)]`
-/

namespace A280291.P4267154415450947966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280291.P4267154415450947966

/-! ## A280291.P12637977138893722542

`filter[A001318(n), A040051(#)]`
-/

namespace A280291.P12637977138893722542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j).toNat = 1) n)

end

end A280291.P12637977138893722542

/-! ## A280291.P16003644604352885212

`eq[A069935(n), A080995(n)]`
-/

namespace A280291.P16003644604352885212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280291.P16003644604352885212

/-! ## A280291.P11549194816182344514

`eq[A256119(n)², A355676(n)]`
-/

namespace A280291.P11549194816182344514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256119 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280291.P11549194816182344514

/-! ## A280291.P15926027383306993570

`record[gcd(A147843(n), A278478(n))]`
-/

namespace A280291.P15926027383306993570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147843 n) (A278478 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280291.P15926027383306993570

/-! ## A280291.P4140430649914728025

`filter[A309683(3*n), A040051(#)]`
-/

namespace A280291.P4140430649914728025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j).toNat = 1) n)

end

end A280291.P4140430649914728025

/-! ## A280291.P14191816158160050125

`eq[1, A256119(n)+A040051(n)]`
-/

namespace A280291.P14191816158160050125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256119 n + A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280291.P14191816158160050125

/-! ## A280291.P557089633259979282

`eq[2, A080995(n)+A040051(n)]`
-/

namespace A280291.P557089633259979282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n + A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280291.P557089633259979282

/-! ## A280291.P5698221964116807339

`eq[gcd(2, A000700(n)), A080995(n)]`
-/

namespace A280291.P5698221964116807339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000700 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280291.P5698221964116807339

/-! ## A280291.P2559465412584660992

`eq[2, A040051(n)+A010815(n)²]`
-/

namespace A280291.P2559465412584660992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + A010815 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280291.P2559465412584660992

/-!
# A280292: a(n) = sopfr(n) - sopf(n).

The programs for A280292, the canonical program `A280292.P17147228295463227534` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280292 has offset 1).

The definition of A280292 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280292.P13298892504752390618

`A001414(A003557(n+1))`
-/

namespace A280292.P13298892504752390618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A003557 (n + 1)).toNat

end

end A280292.P13298892504752390618

namespace A280292

/-- `A001414(A003557(n+1))` -/
def P13298892504752390618.Spec : Prop :=
  ∀ n, P13298892504752390618.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P17147228295463227534

`A001414(n+1)-A008472(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280292

/-- `A001414(n+1)-A008472(n+1)` -/
def P17147228295463227534.Spec : Prop :=
  ∀ n, P17147228295463227534.a n = A280292 (n + 1)

theorem P17147228295463227534.correct : P17147228295463227534.Spec := by
  intro n
  simp only [A280292, Nat.add_sub_cancel]

end A280292

/-! ## A280292.P14413071509410451217

`n+1-∑{p}[n+1, #]-A075255(n+1)`
-/

namespace A280292.P14413071509410451217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A075255 (n + 1)

end

end A280292.P14413071509410451217

namespace A280292

/-- `n+1-∑{p}[n+1, #]-A075255(n+1)` -/
def P14413071509410451217.Spec : Prop :=
  ∀ n, P14413071509410451217.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P575419394500498959

`A001414(A336551(n+1)+1)`
-/

namespace A280292.P575419394500498959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A336551 (n + 1) + 1).toNat

end

end A280292.P575419394500498959

namespace A280292

/-- `A001414(A336551(n+1)+1)` -/
def P575419394500498959.Spec : Prop :=
  ∀ n, P575419394500498959.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P983609574180656326

`A023890(n+1)-A086665(n+1)`
-/

namespace A280292.P983609574180656326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A086665 (n + 1)

end

end A280292.P983609574180656326

namespace A280292

/-- `A023890(n+1)-A086665(n+1)` -/
def P983609574180656326.Spec : Prop :=
  ∀ n, P983609574180656326.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P12403597571899179460

`A036288(n+1)-A074372(n+1)`
-/

namespace A280292.P12403597571899179460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A074372 (n + 1)

end

end A280292.P12403597571899179460

namespace A280292

/-- `A036288(n+1)-A074372(n+1)` -/
def P12403597571899179460.Spec : Prop :=
  ∀ n, P12403597571899179460.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P213423219831285104

`A075254(n+1)-A075653(n+1)`
-/

namespace A280292.P213423219831285104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A075653 (n + 1)

end

end A280292.P213423219831285104

namespace A280292

/-- `A075254(n+1)-A075653(n+1)` -/
def P213423219831285104.Spec : Prop :=
  ∀ n, P213423219831285104.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P9868954460428352188

`A076694(n+1)-A075255(n+1)`
-/

namespace A280292.P9868954460428352188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (n + 1) - A075255 (n + 1)

end

end A280292.P9868954460428352188

namespace A280292

/-- `A076694(n+1)-A075255(n+1)` -/
def P9868954460428352188.Spec : Prop :=
  ∀ n, P9868954460428352188.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P5400852084609285771

`A352167(n+1)-A105221(n+1)`
-/

namespace A280292.P5400852084609285771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1) - A105221 (n + 1)

end

end A280292.P5400852084609285771

namespace A280292

/-- `A352167(n+1)-A105221(n+1)` -/
def P5400852084609285771.Spec : Prop :=
  ∀ n, P5400852084609285771.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P710556204879348201

`A001414((n+1)/A007947(n+1))`
-/

namespace A280292.P710556204879348201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A280292.P710556204879348201

namespace A280292

/-- `A001414((n+1)/A007947(n+1))` -/
def P710556204879348201.Spec : Prop :=
  ∀ n, P710556204879348201.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P8662766471553610130

`A001414(A102631(n+1)/(n+1))`
-/

namespace A280292.P8662766471553610130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A280292.P8662766471553610130

namespace A280292

/-- `A001414(A102631(n+1)/(n+1))` -/
def P8662766471553610130.Spec : Prop :=
  ∀ n, P8662766471553610130.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P6120801407515920321

`A036288(n+1)-(A008472(n+1)+1)`
-/

namespace A280292.P6120801407515920321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - (A008472 (n + 1) + 1)

end

end A280292.P6120801407515920321

namespace A280292

/-- `A036288(n+1)-(A008472(n+1)+1)` -/
def P6120801407515920321.Spec : Prop :=
  ∀ n, P6120801407515920321.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P12483648118031796863

`A001414(n+1)+1-A074372(n+1)`
-/

namespace A280292.P12483648118031796863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (1 - A074372 (n + 1))

end

end A280292.P12483648118031796863

namespace A280292

/-- `A001414(n+1)+1-A074372(n+1)` -/
def P12483648118031796863.Spec : Prop :=
  ∀ n, P12483648118031796863.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P8281831908292291023

`A075254(n+1)+1-A254340(n+1)`
-/

namespace A280292.P8281831908292291023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + (1 - A254340 (n + 1))

end

end A280292.P8281831908292291023

namespace A280292

/-- `A075254(n+1)+1-A254340(n+1)` -/
def P8281831908292291023.Spec : Prop :=
  ∀ n, P8281831908292291023.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P2808812791290907507

`A001414(n+1)-∑{d}[n+1, A061397(#)]`
-/

namespace A280292.P2808812791290907507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A061397 d

end

end A280292.P2808812791290907507

namespace A280292

/-- `A001414(n+1)-∑{d}[n+1, A061397(#)]` -/
def P2808812791290907507.Spec : Prop :=
  ∀ n, P2808812791290907507.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P6537741601747306112

`A001414(n+1)-A001414(∏{p}[n+1, #])`
-/

namespace A280292.P6537741601747306112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A280292.P6537741601747306112

namespace A280292

/-- `A001414(n+1)-A001414(∏{p}[n+1, #])` -/
def P6537741601747306112.Spec : Prop :=
  ∀ n, P6537741601747306112.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P11832236178178739228

`n+1-A008472(n+1)-A075255(n+1)`
-/

namespace A280292.P11832236178178739228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008472 (n + 1) - A075255 (n + 1)

end

end A280292.P11832236178178739228

namespace A280292

/-- `n+1-A008472(n+1)-A075255(n+1)` -/
def P11832236178178739228.Spec : Prop :=
  ∀ n, P11832236178178739228.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P4187685307814014674

`A001414(n+1)-A001414(A007947(n+1))`
-/

namespace A280292.P4187685307814014674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (A007947 (n + 1)).toNat

end

end A280292.P4187685307814014674

namespace A280292

/-- `A001414(n+1)-A001414(A007947(n+1))` -/
def P4187685307814014674.Spec : Prop :=
  ∀ n, P4187685307814014674.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P7188707687037414678

`A036288(n+1)-A036288(A007947(n+1))`
-/

namespace A280292.P7188707687037414678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A036288 (A007947 (n + 1)).toNat

end

end A280292.P7188707687037414678

namespace A280292

/-- `A036288(n+1)-A036288(A007947(n+1))` -/
def P7188707687037414678.Spec : Prop :=
  ∀ n, P7188707687037414678.a n = A280292 (n + 1)

end A280292

/-! ## A280292.P8191789446504557035

`A001414(A350390(n+1)/A007913(n+1))`
-/

namespace A280292.P8191789446504557035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A350390 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A280292.P8191789446504557035

namespace A280292

/-- `A001414(A350390(n+1)/A007913(n+1))` -/
def P8191789446504557035.Spec : Prop :=
  ∀ n, P8191789446504557035.a n = A280292 (n + 1)

end A280292

/-!
# A280293: a(0) = 3, a(n+1) = 2*a(n) + periodic sequence of length 2: repeat [-5, 4].

The programs for A280293, the canonical program `A280293.P4657014825992438235` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280293 has offset 0).

The definition of A280293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280293.P4657014825992438235

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280293

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P4657014825992438235.Spec : Prop :=
  ∀ n, P4657014825992438235.a n = A280293 n

theorem P4657014825992438235.correct : P4657014825992438235.Spec := by
  intro n
  simp only [A280293]

end A280293

/-! ## A280293.P15659386312220257754

`2^(n+2)-A280173(n)`
-/

namespace A280293.P15659386312220257754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A280173 n

end

end A280293.P15659386312220257754

namespace A280293

/-- `2^(n+2)-A280173(n)` -/
def P15659386312220257754.Spec : Prop :=
  ∀ n, P15659386312220257754.a n = A280293 n

end A280293

/-! ## A280293.P2733707022775029690

`ceil(abs((-2)^n+ϕ))`
-/

namespace A280293.P2733707022775029690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((-2) ^ n : ℝ) + Real.goldenRatio|⌉

end

end A280293.P2733707022775029690

namespace A280293

/-- `ceil(abs((-2)^n+ϕ))` -/
def P2733707022775029690.Spec : Prop :=
  ∀ n, P2733707022775029690.a n = A280293 n

end A280293

/-! ## A280293.P13261617173637776274

`ogf((3-5x+x^2)/(1-2x-x^2+2x^3))`
-/

namespace A280293.P13261617173637776274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5, 1] [1, -2, -1, 2] n

end

end A280293.P13261617173637776274

namespace A280293

/-- `ogf((3-5x+x^2)/(1-2x-x^2+2x^3))` -/
def P13261617173637776274.Spec : Prop :=
  ∀ n, P13261617173637776274.a n = A280293 n

end A280293

/-! ## A280293.P5291916227774711149

`2^n+gcd(2, n)²-2`
-/

namespace A280293.P5291916227774711149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((Nat.gcd 2 n ^ 2 : ℤ) - 2)

end

end A280293.P5291916227774711149

namespace A280293

/-- `2^n+gcd(2, n)²-2` -/
def P5291916227774711149.Spec : Prop :=
  ∀ n, P5291916227774711149.a n = A280293 n

end A280293

/-! ## A280293.P15425224070865627877

`2*a(n-2)+a(n-1)-1` with `a(0)=3, a(1)=1`
-/

namespace A280293.P15425224070865627877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  2 * a (n - 2) + (a (n - 1) - 1)

end

end A280293.P15425224070865627877

namespace A280293

/-- `2*a(n-2)+a(n-1)-1` -/
def P15425224070865627877.Spec : Prop :=
  ∀ n, P15425224070865627877.a n = A280293 n

end A280293

/-! ## A280293.P15543454829711899247

`2*a(n-2)-(1-a(n-1))` with `a(0)=3, a(1)=1`
-/

namespace A280293.P15543454829711899247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  2 * a (n - 2) - (1 - a (n - 1))

end

end A280293.P15543454829711899247

namespace A280293

/-- `2*a(n-2)-(1-a(n-1))` -/
def P15543454829711899247.Spec : Prop :=
  ∀ n, P15543454829711899247.a n = A280293 n

end A280293

/-! ## A280293.P7517952234588844742

`a(n-1)+a(n-2)+a(n-2)-1` with `a(0)=3, a(1)=1`
-/

namespace A280293.P7517952234588844742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - 1))

end

end A280293.P7517952234588844742

namespace A280293

/-- `a(n-1)+a(n-2)+a(n-2)-1` -/
def P7517952234588844742.Spec : Prop :=
  ∀ n, P7517952234588844742.a n = A280293 n

end A280293

/-! ## A280293.P10656680416892980074

`a(n-1)-(1-a(n-2)-a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A280293.P10656680416892980074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) - (1 - a (n - 2) - a (n - 2))

end

end A280293.P10656680416892980074

namespace A280293

/-- `a(n-1)-(1-a(n-2)-a(n-2))` -/
def P10656680416892980074.Spec : Prop :=
  ∀ n, P10656680416892980074.a n = A280293 n

end A280293

/-! ## A280293.P18183788581179778775

`4-∑[A156067(n)]`
-/

namespace A280293.P18183788581179778775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280293.P18183788581179778775

namespace A280293

/-- `4-∑[A156067(n)]` -/
def P18183788581179778775.Spec : Prop :=
  ∀ n, P18183788581179778775.a n = A280293 n

end A280293

/-! ## A280293.P4533320544839689045

`A254076(n+1)+5`
-/

namespace A280293.P4533320544839689045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254076 (n + 1) + 5

end

end A280293.P4533320544839689045

namespace A280293

/-- `A254076(n+1)+5` -/
def P4533320544839689045.Spec : Prop :=
  ∀ n, P4533320544839689045.a n = A280293 n

end A280293

/-! ## A280293.P7981903207360434658

`A000918(n)+gcd(2, n)²`
-/

namespace A280293.P7981903207360434658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (Nat.gcd 2 n ^ 2 : ℤ)

end

end A280293.P7981903207360434658

namespace A280293

/-- `A000918(n)+gcd(2, n)²` -/
def P7981903207360434658.Spec : Prop :=
  ∀ n, P7981903207360434658.a n = A280293 n

end A280293

/-! ## A280293.P744305109613990007

`A014551(n)+char[2*n]`
-/

namespace A280293.P744305109613990007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280293.P744305109613990007

namespace A280293

/-- `A014551(n)+char[2*n]` -/
def P744305109613990007.Spec : Prop :=
  ∀ n, P744305109613990007.a n = A280293 n

end A280293

/-! ## A280293.P2978012263617620417

`A168361(n+1)+2^n`
-/

namespace A280293.P2978012263617620417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) + (2 ^ n : ℤ)

end

end A280293.P2978012263617620417

namespace A280293

/-- `A168361(n+1)+2^n` -/
def P2978012263617620417.Spec : Prop :=
  ∀ n, P2978012263617620417.a n = A280293 n

end A280293

/-! ## A280293.P3295744095646324190

`A280193(n+2)+2^n`
-/

namespace A280293.P3295744095646324190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (n + 2) + (2 ^ n : ℤ)

end

end A280293.P3295744095646324190

namespace A280293

/-- `A280193(n+2)+2^n` -/
def P3295744095646324190.Spec : Prop :=
  ∀ n, P3295744095646324190.a n = A280293 n

end A280293

/-! ## A280293.P16476217321102085243

`2^n-A327767(n+2)`
-/

namespace A280293.P16476217321102085243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A327767 (n + 2)

end

end A280293.P16476217321102085243

namespace A280293

/-- `2^n-A327767(n+2)` -/
def P16476217321102085243.Spec : Prop :=
  ∀ n, P16476217321102085243.a n = A280293 n

end A280293

/-! ## A280293.P3107279752333207664

`A059841(n)+A014551(n)`
-/

namespace A280293.P3107279752333207664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A014551 n

end

end A280293.P3107279752333207664

namespace A280293

/-- `A059841(n)+A014551(n)` -/
def P3107279752333207664.Spec : Prop :=
  ∀ n, P3107279752333207664.a n = A280293 n

end A280293

/-! ## A280293.P11144087721057337550

`A052531(n)+A033999(n)`
-/

namespace A280293.P11144087721057337550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 n + A033999 n

end

end A280293.P11144087721057337550

namespace A280293

/-- `A052531(n)+A033999(n)` -/
def P11144087721057337550.Spec : Prop :=
  ∀ n, P11144087721057337550.a n = A280293 n

end A280293

/-! ## A280293.P1366543962685511822

`A084964(n)+A084174(n)`
-/

namespace A280293.P1366543962685511822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n + A084174 n

end

end A280293.P1366543962685511822

namespace A280293

/-- `A084964(n)+A084174(n)` -/
def P1366543962685511822.Spec : Prop :=
  ∀ n, P1366543962685511822.a n = A280293 n

end A280293

/-! ## A280293.P6851926123932776319

`A269019(n)+A000034(n)`
-/

namespace A280293.P6851926123932776319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 n + A000034 n

end

end A280293.P6851926123932776319

namespace A280293

/-- `A269019(n)+A000034(n)` -/
def P6851926123932776319.Spec : Prop :=
  ∀ n, P6851926123932776319.a n = A280293 n

end A280293

/-!
# A280294: a(n) = a(n-1) + 2^n * a(n-2) with a(0) = 1 and a(1) = 1.

The programs for A280294, the canonical program `A280294.P16295489293936468727` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280294 has offset 0).

The definition of A280294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2^n*a(n-2)` (program `A280294.P16295489293936468727`, by `A280294.P16295489293936468727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280294.P16295489293936468727

`a(n-1)+2^n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280294

/-- `a(n-1)+2^n*a(n-2)` -/
def P16295489293936468727.Spec : Prop :=
  ∀ n, (P16295489293936468727.a n : ℤ) = A280294 n

theorem P16295489293936468727.correct : P16295489293936468727.Spec := by
  intro n
  simp only [A280294]

end A280294

/-! ## A280294.P14981310450267864504

`∏[2^n/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A280294.P14981310450267864504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 ^ n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280294.P14981310450267864504

namespace A280294

/-- `∏[2^n/a(n-1)+1]` -/
def P14981310450267864504.Spec : Prop :=
  ∀ n, P14981310450267864504.a n = (A280294 n : ℚ)

end A280294

/-! ## A280294.P5937513716146622834

`a(n-1)+lcm(2^n, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A280294.P5937513716146622834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm (2 ^ n) (a (n - 2))

end

end A280294.P5937513716146622834

namespace A280294

/-- `a(n-1)+lcm(2^n, a(n-2))` -/
def P5937513716146622834.Spec : Prop :=
  ∀ n, (P5937513716146622834.a n : ℤ) = A280294 n

end A280294

/-! ## A280294.P15661874812554481793

`a(n-1)+a(n-2)*∑[2*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A280294.P15661874812554481793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280294.P15661874812554481793

namespace A280294

/-- `a(n-1)+a(n-2)*∑[2*a(n-1)]` -/
def P15661874812554481793.Spec : Prop :=
  ∀ n, (P15661874812554481793.a n : ℤ) = A280294 n

end A280294

/-! ## A280294.P11668335113438934929

`a(n-1)+a(n-2)*A171449(n)` with `a(0)=1, a(1)=1`
-/

namespace A280294.P11668335113438934929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A171449 n

end

end A280294.P11668335113438934929

namespace A280294

/-- `a(n-1)+a(n-2)*A171449(n)` -/
def P11668335113438934929.Spec : Prop :=
  ∀ n, P11668335113438934929.a n = A280294 n

end A280294

/-!
# A280295: Smallest number with middle divisors whose distance to the next number with middle divisors is n.

The programs for A280295, there is no canonical definition to state claims against.
-/

/-! ## A280295.P5560121554413852902

`A071562(A390114(n+1))`
-/

namespace A280295.P5560121554413852902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A390114 (n + 1)).toNat

end

end A280295.P5560121554413852902

/-! ## A280295.P392149811293014365

`A244367(A279286(n+1))`
-/

namespace A280295.P392149811293014365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (A279286 (n + 1)).toNat

end

end A280295.P392149811293014365

/-! ## A280295.P14871005349847679695

`A244367(A282197(n+1))`
-/

namespace A280295.P14871005349847679695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (A282197 (n + 1)).toNat

end

end A280295.P14871005349847679695

/-!
# A280296: Squarefree numbers k such that 2^k - 1 is divisible by a square > 1.

The programs for A280296, there is no canonical definition to state claims against.
-/

/-! ## A280296.P13195292882117910758

`record[A007913(A049094(n+1))]`
-/

namespace A280296.P13195292882117910758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A049094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280296.P13195292882117910758

/-! ## A280296.P10410985620735347196

`filter[A049094(n+1), A008966(#)]`
-/

namespace A280296.P10410985620735347196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A280296.P10410985620735347196

/-! ## A280296.P17514906076779221303

`filter[A049094(n+1), A354819(#)]`
-/

namespace A280296.P17514906076779221303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A280296.P17514906076779221303

/-! ## A280296.P18310429709815723069

`record[A055231(A049094(C(n+1, n)))]`
-/

namespace A280296.P18310429709815723069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A049094 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280296.P18310429709815723069

/-! ## A280296.P14426758960106039068

`record[A055231(A049094(-xor(n, -1)))]`
-/

namespace A280296.P14426758960106039068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A049094 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280296.P14426758960106039068

/-! ## A280296.P4815620228866550459

`record[A055231(A049094(n-log2(1/2)))]`
-/

namespace A280296.P4815620228866550459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A049094 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280296.P4815620228866550459

/-! ## A280296.P15174346557241102500

`∏{p}[record[A055231(A049094(n+1))], A014963(#)]`
-/

namespace A280296.P15174346557241102500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A049094 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A280296.P15174346557241102500

/-! ## A280296.P11389579191330122828

`record[A055231(A049094(n+1))]%A000040(n+2)²`
-/

namespace A280296.P11389579191330122828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A049094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 2) ^ 2)

end

end A280296.P11389579191330122828

/-! ## A280296.P1988397376173666588

`record[A055231(A049094(n+1))%A018252(n+2)²]`
-/

namespace A280296.P1988397376173666588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055231 (A049094 (n + 1)).toNat) (A018252 (n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280296.P1988397376173666588

/-! ## A280296.P14251752461450947698

`record[A055231(A049094(n+1))]+A008683(4*(n+1))`
-/

namespace A280296.P14251752461450947698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A049094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (4 * (n + 1))

end

end A280296.P14251752461450947698

/-!
# A280297: Numbers n such that F(n) and F(n-1) are not squarefree where F(n) = A000045(n).

The programs for A280297, there is no canonical definition to state claims against.
-/

/-! ## A280297.P11815216947755630824

`∩[A037917(n+1)+1, A037917(n+1)]`
-/

namespace A280297.P11815216947755630824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280297.P11815216947755630824

/-!
# A280298: 

The programs for A280298, there is no canonical definition to state claims against.
-/

/-! ## A280298.P17650342963142326074

`p?[round(8*n/7)]²^33`
-/

namespace A280298.P17650342963142326074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 33

end

end A280298.P17650342963142326074

/-! ## A280298.P13986118948554634457

`record[A020639(n+2)^66]`
-/

namespace A280298.P13986118948554634457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 66

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280298.P13986118948554634457

/-! ## A280298.P5069827948496571130

`(p?[A018252(n+1)-7]^33)²`
-/

namespace A280298.P5069827948496571130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 33) ^ 2

end

end A280298.P5069827948496571130

/-!
# A280299: 

The programs for A280299, there is no canonical definition to state claims against.
-/

/-! ## A280299.P2926868828294215654

`A000040(n+1)^70`
-/

namespace A280299.P2926868828294215654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 70

end

end A280299.P2926868828294215654

/-! ## A280299.P6853801806603397893

`record[A006530(n+2)]^70`
-/

namespace A280299.P6853801806603397893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 70

end

end A280299.P6853801806603397893

/-! ## A280299.P6916240736503213871

`A105221(A001248(n+1))^70`
-/

namespace A280299.P6916240736503213871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (A001248 (n + 1)).toNat ^ 70

end

end A280299.P6916240736503213871

