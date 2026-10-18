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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A040000: 

The programs for A040000, there is no canonical definition to state claims against.
-/

/-! ## A040000.P717044934421447933

`A001227(A000040(n+1))`
-/

namespace A040000.P717044934421447933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000040 (n + 1)).toNat

end

end A040000.P717044934421447933

/-!
# A040004: a(n) = smallest integer s such that for all i, all primes p and all m the congruence (x_1)^n + ... + (x_s)^n == m (mod p^i) has a primitive solution.

The programs for A040004, there is no canonical definition to state claims against.
-/

/-! ## A040004.P12995433796898870298

`A287286(n+1)+char[3]`
-/

namespace A040004.P12995433796898870298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287286 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A040004.P12995433796898870298

/-! ## A040004.P8938227108508064288

`A341619(n²+11)+A287286(n+1)`
-/

namespace A040004.P8938227108508064288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (n ^ 2 + 11) + A287286 (n + 1)

end

end A040004.P8938227108508064288

/-! ## A040004.P12443321622427273136

`A336432(A114842(n+1))+A287286(n+1)`
-/

namespace A040004.P12443321622427273136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336432 (A114842 (n + 1)).toNat + A287286 (n + 1)

end

end A040004.P12443321622427273136

/-! ## A040004.P1757793925565342612

`A320106(A007497(n+1))+A287286(n+1)`
-/

namespace A040004.P1757793925565342612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (A007497 (n + 1)).toNat + A287286 (n + 1)

end

end A040004.P1757793925565342612

/-! ## A040004.P8513561219227893565

`A320106(A181595(2*n+5))+A287286(n+1)`
-/

namespace A040004.P8513561219227893565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (A181595 (2 * n + 5)).toNat + A287286 (n + 1)

end

end A040004.P8513561219227893565

/-!
# A040014: Number of primes < e^n.

The programs for A040014, there is no canonical definition to state claims against.
-/

/-! ## A040014.P4291834885552296071

`∑[A061273(n)]-A061273(n)`
-/

namespace A040014.P4291834885552296071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061273 n

end

end A040014.P4291834885552296071

/-! ## A040014.P460491722184710111

`A000720(floor(exp(n)))`
-/

namespace A040014.P460491722184710111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A040014.P460491722184710111

/-! ## A040014.P5199859074770446684

`A329622(A074496(n))`
-/

namespace A040014.P5199859074770446684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A074496 n).toNat

end

end A040014.P5199859074770446684

/-! ## A040014.P17694785243706758386

`and(-1, A000720(A000149(n)))`
-/

namespace A040014.P17694785243706758386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000720 (A000149 n).toNat)

end

end A040014.P17694785243706758386

/-! ## A040014.P11751037773547044606

`A011733(n)+A000720(A000149(n))`
-/

namespace A040014.P11751037773547044606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011733 n + A000720 (A000149 n).toNat

end

end A040014.P11751037773547044606

/-!
# A040016: Largest prime < e^n.

The programs for A040016, there is no canonical definition to state claims against.
-/

/-! ## A040016.P5421240210277140417

`A000040(∑[A061273(n)])`
-/

namespace A040016.P5421240210277140417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A040016.P5421240210277140417

/-! ## A040016.P8875662533782976615

`A000040(A040014(n+1))`
-/

namespace A040016.P8875662533782976615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A040014 (n + 1)).toNat

end

end A040016.P8875662533782976615

/-! ## A040016.P5108018100140139419

`A006093(∑[A061273(n)])+1`
-/

namespace A040016.P5108018100140139419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A040016.P5108018100140139419

/-! ## A040016.P16673657267507079339

`A008578(∑[A061273(n)]+1)`
-/

namespace A040016.P16673657267507079339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A040016.P16673657267507079339

/-!
# A040017: Prime 3 followed by unique period primes (the period r of 1/p is not shared with any other prime) of the form A019328(r)/gcd(A019328(r),r) in order (periods r are given in A051627).

The programs for A040017, there is no canonical definition to state claims against.
-/

/-! ## A040017.P1502007842031573675

`A007138(A051627(n+1))`
-/

namespace A040017.P1502007842031573675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007138 (A051627 (n + 1)).toNat

end

end A040017.P1502007842031573675

/-! ## A040017.P8524117259997588786

`A061075(A051627(n+1)%A016946(n))`
-/

namespace A040017.P8524117259997588786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061075 (Int.tmod (A051627 (n + 1)) (A016946 n)).toNat

end

end A040017.P8524117259997588786

/-! ## A040017.P1194160434131927708

`A061075(or(A000007(n), A051627(n+1)))`
-/

namespace A040017.P1194160434131927708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061075 (Int.lor (A000007 n) (A051627 (n + 1))).toNat

end

end A040017.P1194160434131927708

/-! ## A040017.P14746967608366065641

`or(A053188(n), A061075(A051627(n+1)))`
-/

namespace A040017.P14746967608366065641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053188 n) (A061075 (A051627 (n + 1)).toNat)

end

end A040017.P14746967608366065641

/-! ## A040017.P10092782878578312512

`or(A061075(A051627(n+1)), A063524(n))`
-/

namespace A040017.P10092782878578312512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061075 (A051627 (n + 1)).toNat) (A063524 n)

end

end A040017.P10092782878578312512

/-!
# A040018: (Number of permutations of {1,2,...,n} for which sums of adjacent numbers are all distinct)/2n.

The programs for A040018, there is no canonical definition to state claims against.
-/

/-! ## A040018.P17470638914853989613

`A256063(round(sqrt((n²+n)*a(n-1))))` with `a(0)=1`
-/

namespace A040018.P17470638914853989613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256063 (SequenceMachineLib.roundAway (Real.sqrt ((n ^ 2 + n : ℤ) * a (n - 1) : ℝ))).toNat

end

end A040018.P17470638914853989613

/-! ## A040018.P760689392343566473

`A256063(round(sqrt((n+1)*n*a(n-1))))` with `a(0)=1`
-/

namespace A040018.P760689392343566473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256063 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * ((n : ℤ) * a (n - 1)) : ℝ))).toNat

end

end A040018.P760689392343566473

/-!
# A040025: a(n) is the number of prime palindromes with 2n+1 digits.

The programs for A040025, there is no canonical definition to state claims against.
-/

/-! ## A040025.P2691890700400891249

`A016115(Δ[n²])`
-/

namespace A040025.P2691890700400891249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016115 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A040025.P2691890700400891249

/-! ## A040025.P12971781446510994042

`record[Δ[A050251(n)]]`
-/

namespace A040025.P12971781446510994042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040025.P12971781446510994042

/-! ## A040025.P7903896676042051535

`record[A016115(n+1)]`
-/

namespace A040025.P7903896676042051535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040025.P7903896676042051535

/-! ## A040025.P15393995486972941289

`A039657(n)/(2*n+1)`
-/

namespace A040025.P15393995486972941289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039657 n : ℚ) / (2 * n + 1 : ℚ)

end

end A040025.P15393995486972941289

/-! ## A040025.P3929477382513169332

`root(A016115(2*n+1), 2)²`
-/

namespace A040025.P3929477382513169332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A016115 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A040025.P3929477382513169332

/-!
# A040026: If n=r*2^s, r odd, then a(n)=t*r, where t is smallest (in magnitude) number such that 1=t*r+u*2^s.

The programs for A040026, there is no canonical definition to state claims against.
-/

/-! ## A040026.P1808725574336421592

`(n+1)/2^val(n+1, 2)-A033685(A047192(n+1))`
-/

namespace A040026.P1808725574336421592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - (A033685 (A047192 (n + 1)).toNat : ℚ)

end

end A040026.P1808725574336421592

/-! ## A040026.P13341960845969770419

`(n+1)/2^val(n+1, 2)-A037213(A048034(n+1))`
-/

namespace A040026.P13341960845969770419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - (A037213 (A048034 (n + 1)).toNat : ℚ)

end

end A040026.P13341960845969770419

/-! ## A040026.P12263507365788734609

`(n+1)/2^val(n+1, 2)*A117816(A119479(n+1))`
-/

namespace A040026.P12263507365788734609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A117816 (A119479 (n + 1)).toNat : ℚ)

end

end A040026.P12263507365788734609

/-! ## A040026.P10257387250179425497

`A000265(n+1)*A177121(A007040(n+1))`
-/

namespace A040026.P10257387250179425497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A177121 (A007040 (n + 1)).toNat

end

end A040026.P10257387250179425497

/-! ## A040026.P10600479248430729263

`(n+1)/2^val(n+1, 2)-A368662(A360005(3*n+4))`
-/

namespace A040026.P10600479248430729263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - (A368662 (A360005 (3 * n + 4)).toNat : ℚ)

end

end A040026.P10600479248430729263

/-!
# A040027: The Gould numbers.

The programs for A040027, there is no canonical definition to state claims against.
-/

/-! ## A040027.P11302677318620507494

`A046936(∑[n+1])`
-/

namespace A040027.P11302677318620507494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A040027.P11302677318620507494

/-! ## A040027.P9902605056454090381

`A124496(∑[n]+1)`
-/

namespace A040027.P9902605056454090381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124496 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A040027.P9902605056454090381

/-! ## A040027.P16603040677456320329

`A186020(∑[n+1]+1)`
-/

namespace A040027.P16603040677456320329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A040027.P16603040677456320329

/-! ## A040027.P15223711659811733996

`A212431(∑[n+1]+1)`
-/

namespace A040027.P15223711659811733996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A040027.P15223711659811733996

/-! ## A040027.P10475552355134611222

`A121207(∑[n+2]-1)`
-/

namespace A040027.P10475552355134611222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A040027.P10475552355134611222

/-! ## A040027.P14900470423018718540

`A007604(A179865(n+1))`
-/

namespace A040027.P14900470423018718540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007604 (A179865 (n + 1)).toNat

end

end A040027.P14900470423018718540

/-! ## A040027.P11746920054886799126

`or(1, A046936(A000096(n)))`
-/

namespace A040027.P11746920054886799126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046936 (A000096 n).toNat)

end

end A040027.P11746920054886799126

/-! ## A040027.P13142324411525298418

`A000110(n+1)-A032347(n+1)`
-/

namespace A040027.P13142324411525298418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A032347 (n + 1)

end

end A040027.P13142324411525298418

/-! ## A040027.P5591188964269922522

`A038561(n+1)-A000110(n+1)`
-/

namespace A040027.P5591188964269922522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038561 (n + 1) - A000110 (n + 1)

end

end A040027.P5591188964269922522

/-! ## A040027.P16270471335509313122

`A038561(n+1)-Δ[A005001(n+1)]`
-/

namespace A040027.P16270471335509313122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038561 (n + 1) - (f1 (n + 1) - f1 n)

end

end A040027.P16270471335509313122

/-!
# A040028: Primes p such that x^3 = 2 has a solution mod p.

The programs for A040028, there is no canonical definition to state claims against.
-/

/-! ## A040028.P8623089685185842779

`∪[A014752(n+1), A045309(n+1)]`
-/

namespace A040028.P8623089685185842779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P8623089685185842779

/-! ## A040028.P13817671221521333892

`∪[A014752(n+1), A049596(n+1)]`
-/

namespace A040028.P13817671221521333892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P13817671221521333892

/-! ## A040028.P16337017625139588973

`p?[A057760(n+1)]`
-/

namespace A040028.P16337017625139588973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040028.P16337017625139588973

/-! ## A040028.P3272622288405271311

`record[A006530(A057760(n+2))]`
-/

namespace A040028.P3272622288405271311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040028.P3272622288405271311

/-! ## A040028.P10269877102149164109

`filter[A057760(n+1), A010051(#)]`
-/

namespace A040028.P10269877102149164109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A040028.P10269877102149164109

/-! ## A040028.P3031862632235039447

`∩[A000040(n+1), A057760(n+1)]`
-/

namespace A040028.P3031862632235039447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P3031862632235039447

/-! ## A040028.P16043105979268721794

`∩[A057760(n+1), A066191(n+1)]`
-/

namespace A040028.P16043105979268721794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P16043105979268721794

/-! ## A040028.P7544292445123375567

`∩[A057760(n+1), A175787(n+1)]`
-/

namespace A040028.P7544292445123375567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P7544292445123375567

/-! ## A040028.P8662992494169772697

`∩[A057760(n+1), A182986(n+1)]`
-/

namespace A040028.P8662992494169772697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P8662992494169772697

/-! ## A040028.P6212911075258626509

`filter[A057760(n+2), A080339(#)]`
-/

namespace A040028.P6212911075258626509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A040028.P6212911075258626509

/-! ## A040028.P10456054379712347951

`A020639(record[A039649(A057760(n+1))])`
-/

namespace A040028.P10456054379712347951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A057760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A040028.P10456054379712347951

/-! ## A040028.P14184750087970592125

`∩[A057760(n+1), A230606(n+1)]`
-/

namespace A040028.P14184750087970592125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P14184750087970592125

/-! ## A040028.P5078761582951424831

`∩[A057760(n+1), A298865(n+1)]`
-/

namespace A040028.P5078761582951424831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040028.P5078761582951424831

/-!
# A040030: Continued fraction for sqrt(37).

The programs for A040030, there is no canonical definition to state claims against.
-/

/-! ## A040030.P18331965336409044535

`2*A040006(n)`
-/

namespace A040030.P18331965336409044535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040006 n

end

end A040030.P18331965336409044535

/-!
# A040031: Continued fraction for sqrt(38).

The programs for A040031, there is no canonical definition to state claims against.
-/

/-! ## A040031.P1387741143242421238

`6*A040001(n)`
-/

namespace A040031.P1387741143242421238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A040001 n

end

end A040031.P1387741143242421238

/-!
# A040032: Continued fraction for sqrt(39).

The programs for A040032, there is no canonical definition to state claims against.
-/

/-! ## A040032.P1375820721199049339

`2*A040008(n)`
-/

namespace A040032.P1375820721199049339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040008 n

end

end A040032.P1375820721199049339

/-!
# A040033: Continued fraction for sqrt(40).

The programs for A040033, there is no canonical definition to state claims against.
-/

/-! ## A040033.P18243915604351706680

`3*A040005(n)`
-/

namespace A040033.P18243915604351706680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040005 n

end

end A040033.P18243915604351706680

/-!
# A040034: Primes p such that x^3 = 2 has no solution mod p.

The programs for A040034, there is no canonical definition to state claims against.
-/

/-! ## A040034.P2840814660586961797

`p?[A332335(n+1)]`
-/

namespace A040034.P2840814660586961797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040034.P2840814660586961797

/-! ## A040034.P11712776711974783135

`record[A006530(A332335(n+3))]`
-/

namespace A040034.P11712776711974783135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A332335 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040034.P11712776711974783135

/-! ## A040034.P5342397404414517229

`filter[A332335(n+2), A010051(#)]`
-/

namespace A040034.P5342397404414517229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A040034.P5342397404414517229

/-! ## A040034.P17086490404188031901

`filter[A332335(n+2), A380467(#)]`
-/

namespace A040034.P17086490404188031901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A040034.P17086490404188031901

/-! ## A040034.P4885707431368525046

`∩[A000040(n+1), A332335(n+1)]`
-/

namespace A040034.P4885707431368525046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P4885707431368525046

/-! ## A040034.P2170370207554551392

`∩[A002476(n+1), A332335(n+1)]`
-/

namespace A040034.P2170370207554551392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P2170370207554551392

/-! ## A040034.P9036058020648177394

`∩[A004139(n+1), A332335(n+1)]`
-/

namespace A040034.P9036058020648177394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P9036058020648177394

/-! ## A040034.P18287080244851296597

`∩[A006005(n+1), A332335(n+1)]`
-/

namespace A040034.P18287080244851296597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P18287080244851296597

/-! ## A040034.P8573177581377635851

`∩[A007645(n+1), A332335(n+1)]`
-/

namespace A040034.P8573177581377635851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P8573177581377635851

/-! ## A040034.P313187815880842196

`∩[A040116(n+1), A332335(n+1)]`
-/

namespace A040034.P313187815880842196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P313187815880842196

/-! ## A040034.P16058671149412419700

`∩[A040993(n+1), A332335(n+1)]`
-/

namespace A040034.P16058671149412419700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P16058671149412419700

/-! ## A040034.P4508150369689723890

`∩[A045319(n+1), A332335(n+1)]`
-/

namespace A040034.P4508150369689723890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P4508150369689723890

/-! ## A040034.P1555242833299696573

`∩[A053176(n+1), A332335(n+1)]`
-/

namespace A040034.P1555242833299696573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P1555242833299696573

/-! ## A040034.P18415251783925031797

`∩[A065091(n+1), A332335(n+1)]`
-/

namespace A040034.P18415251783925031797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P18415251783925031797

/-! ## A040034.P276301442519724109

`∩[A216734(n+1), A332335(n+1)]`
-/

namespace A040034.P276301442519724109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P276301442519724109

/-! ## A040034.P5047729356294898934

`filter[A332335(n+3), A135461(#)]`
-/

namespace A040034.P5047729356294898934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A040034.P5047729356294898934

/-! ## A040034.P10785956392545252299

`∩[A085118(n+1), A332335(n+1)]`
-/

namespace A040034.P10785956392545252299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P10785956392545252299

/-! ## A040034.P11936711033208625565

`∩[A059353(n+1), A332335(n+1)]`
-/

namespace A040034.P11936711033208625565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040034.P11936711033208625565

/-! ## A040034.P18042739693809904178

`p?[lcm(A016921(n), A208978(n))]`
-/

namespace A040034.P18042739693809904178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016921 n) (A208978 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040034.P18042739693809904178

/-! ## A040034.P7919133573626068896

`p?[A008588(n)+A030203(n)²]`
-/

namespace A040034.P7919133573626068896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + A030203 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040034.P7919133573626068896

/-!
# A040035: Continued fraction for sqrt(42).

The programs for A040035, there is no canonical definition to state claims against.
-/

/-! ## A040035.P8197800293164698617

`2*A040011(n)`
-/

namespace A040035.P8197800293164698617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040011 n

end

end A040035.P8197800293164698617

/-!
# A040036: Primes p such that x^3 = 3 has a solution mod p.

The programs for A040036, there is no canonical definition to state claims against.
-/

/-! ## A040036.P2912859563724237250

`∪[A014753(n+1), A045309(n+1)]`
-/

namespace A040036.P2912859563724237250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040036.P2912859563724237250

/-! ## A040036.P14275759006407497514

`p?[A135997(A020898(n+1))]`
-/

namespace A040036.P14275759006407497514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A020898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040036.P14275759006407497514

/-! ## A040036.P8989601002005486413

`p?[A270743(A020898(n+1)-1)]`
-/

namespace A040036.P8989601002005486413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270743 (A020898 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040036.P8989601002005486413

/-! ## A040036.P4998089865748085747

`p?[A050985(9*A020898(n+1))]`
-/

namespace A040036.P4998089865748085747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (9 * A020898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040036.P4998089865748085747

/-! ## A040036.P3471618003822247998

`p?[A270743(xor(1, A020898(n+1)))]`
-/

namespace A040036.P3471618003822247998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270743 (Int.xor 1 (A020898 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040036.P3471618003822247998

/-!
# A040038: Primes p such that x^3 = 3 has no solution mod p.

The programs for A040038, there is no canonical definition to state claims against.
-/

/-! ## A040038.P766808565310073921

`p?[A156250(3*(n+1))+A156246(3*(n+1))]`
-/

namespace A040038.P766808565310073921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (3 * (n + 1)) + A156246 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040038.P766808565310073921

/-! ## A040038.P13802010293574006699

`p?[A050931(n+1)%A229859(A009005(n+1))]`
-/

namespace A040038.P13802010293574006699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050931 (n + 1)) (A229859 (A009005 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040038.P13802010293574006699

/-! ## A040038.P2951537680302770402

`record[p?[A002260(A048297(2*n))]]`
-/

namespace A040038.P2951537680302770402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A048297 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040038.P2951537680302770402

/-! ## A040038.P6891682214050873987

`A002476(eq[A333355(n+1), A333397(3*(n+1))])`
-/

namespace A040038.P6891682214050873987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A040038.P6891682214050873987

/-! ## A040038.P9688252250108808024

`p?[A093513(p?[round(8*n/7)]+1)-8]`
-/

namespace A040038.P9688252250108808024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040038.P9688252250108808024

/-!
# A040039: First differences of A033485; also A033485 with terms repeated.

The programs for A040039, the canonical program `A040039.P17568427608695715887` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040039 has offset 0).

The definition of A040039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040039.P17568427608695715887

`a(n-2)+a(floor(n/2)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040039

/-- `a(n-2)+a(floor(n/2)-1)` -/
def P17568427608695715887.Spec : Prop :=
  ∀ n, (P17568427608695715887.a n : ℤ) = A040039 n

theorem P17568427608695715887.correct : P17568427608695715887.Spec := by
  intro n
  simp only [A040039]

end A040039

/-! ## A040039.P8086588151339422140

`Δ[a(ceil(n/2)-1)+a(n-1)]` with `a(0)=1`
-/

namespace A040039.P8086588151339422140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (⌈(n : ℚ) / 2⌉ - 1).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A040039.P8086588151339422140

namespace A040039

/-- `Δ[a(ceil(n/2)-1)+a(n-1)]` -/
def P8086588151339422140.Spec : Prop :=
  ∀ n, P8086588151339422140.a n = A040039 n

end A040039

/-! ## A040039.P10177215233077951971

`A033485(∑[char[2*n]])`
-/

namespace A040039.P10177215233077951971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A040039.P10177215233077951971

namespace A040039

/-- `A033485(∑[char[2*n]])` -/
def P10177215233077951971.Spec : Prop :=
  ∀ n, P10177215233077951971.a n = A040039 n

end A040039

/-! ## A040039.P2197004370315449341

`Δ[A000123(n+1)/2]`
-/

namespace A040039.P2197004370315449341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P2197004370315449341

namespace A040039

/-- `Δ[A000123(n+1)/2]` -/
def P2197004370315449341.Spec : Prop :=
  ∀ n, P2197004370315449341.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P16960786623497805519

`A000123(A008619(n))/2`
-/

namespace A040039.P16960786623497805519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A008619 n).toNat : ℚ) / 2

end

end A040039.P16960786623497805519

namespace A040039

/-- `A000123(A008619(n))/2` -/
def P16960786623497805519.Spec : Prop :=
  ∀ n, P16960786623497805519.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P12778208431473137811

`A000123(A004526(n)+1)/2`
-/

namespace A040039.P12778208431473137811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A004526 n + 1).toNat : ℚ) / 2

end

end A040039.P12778208431473137811

namespace A040039

/-- `A000123(A004526(n)+1)/2` -/
def P12778208431473137811.Spec : Prop :=
  ∀ n, P12778208431473137811.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P9166170392807003640

`A000123(A001651(n+1)-n)/2`
-/

namespace A040039.P9166170392807003640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A001651 (n + 1) - (n : ℤ)).toNat : ℚ) / 2

end

end A040039.P9166170392807003640

namespace A040039

/-- `A000123(A001651(n+1)-n)/2` -/
def P9166170392807003640.Spec : Prop :=
  ∀ n, P9166170392807003640.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P13292202911394987823

`∑{d}[n+1, A008683(#)*A342337((n+1)/#)]`
-/

namespace A040039.P13292202911394987823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A342337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A040039.P13292202911394987823

namespace A040039

/-- `∑{d}[n+1, A008683(#)*A342337((n+1)/#)]` -/
def P13292202911394987823.Spec : Prop :=
  ∀ n, P13292202911394987823.a n = A040039 n

end A040039

/-! ## A040039.P11090673794014477904

`(A018819(A008619(n))+A018819(n))/2`
-/

namespace A040039.P11090673794014477904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018819 (A008619 n).toNat + A018819 n : ℚ) / 2

end

end A040039.P11090673794014477904

namespace A040039

/-- `(A018819(A008619(n))+A018819(n))/2` -/
def P11090673794014477904.Spec : Prop :=
  ∀ n, P11090673794014477904.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P11980300827598889357

`Δ[A033485(n+1)]`
-/

namespace A040039.P11980300827598889357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P11980300827598889357

namespace A040039

/-- `Δ[A033485(n+1)]` -/
def P11980300827598889357.Spec : Prop :=
  ∀ n, P11980300827598889357.a n = A040039 n

end A040039

/-! ## A040039.P8067251384023043785

`Δ[A102379(n+1)]`
-/

namespace A040039.P8067251384023043785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P8067251384023043785

namespace A040039

/-- `Δ[A102379(n+1)]` -/
def P8067251384023043785.Spec : Prop :=
  ∀ n, P8067251384023043785.a n = A040039 n

end A040039

/-! ## A040039.P5566451563355581064

`Δ[A102378(n+1)/2]`
-/

namespace A040039.P5566451563355581064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102378 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P5566451563355581064

namespace A040039

/-- `Δ[A102378(n+1)/2]` -/
def P5566451563355581064.Spec : Prop :=
  ∀ n, P5566451563355581064.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P2400035590508101238

`Δ[A346912(n+1)/4]`
-/

namespace A040039.P2400035590508101238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346912 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P2400035590508101238

namespace A040039

/-- `Δ[A346912(n+1)/4]` -/
def P2400035590508101238.Spec : Prop :=
  ∀ n, P2400035590508101238.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P6626117062152257541

`A000123(∑[A000035(n+1)])/2`
-/

namespace A040039.P6626117062152257541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A040039.P6626117062152257541

namespace A040039

/-- `A000123(∑[A000035(n+1)])/2` -/
def P6626117062152257541.Spec : Prop :=
  ∀ n, P6626117062152257541.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P3795323983544812804

`A033485(n+2)-A033485(n+1)`
-/

namespace A040039.P3795323983544812804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 2) - A033485 (n + 1)

end

end A040039.P3795323983544812804

namespace A040039

/-- `A033485(n+2)-A033485(n+1)` -/
def P3795323983544812804.Spec : Prop :=
  ∀ n, P3795323983544812804.a n = A040039 n

end A040039

/-! ## A040039.P10324341865789170743

`A102379(n+2)-A102379(n+1)`
-/

namespace A040039.P10324341865789170743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102379 (n + 2) - A102379 (n + 1)

end

end A040039.P10324341865789170743

namespace A040039

/-- `A102379(n+2)-A102379(n+1)` -/
def P10324341865789170743.Spec : Prop :=
  ∀ n, P10324341865789170743.a n = A040039 n

end A040039

/-! ## A040039.P523160676724849171

`A018819(n+2)/2`
-/

namespace A040039.P523160676724849171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018819 (n + 2) : ℚ) / 2

end

end A040039.P523160676724849171

namespace A040039

/-- `A018819(n+2)/2` -/
def P523160676724849171.Spec : Prop :=
  ∀ n, P523160676724849171.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P16610831005778205799

`Δ[A022907(n+2)/3]`
-/

namespace A040039.P16610831005778205799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022907 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P16610831005778205799

namespace A040039

/-- `Δ[A022907(n+2)/3]` -/
def P16610831005778205799.Spec : Prop :=
  ∀ n, P16610831005778205799.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P14884035719582418054

`Δ[Δ[A131205(n+1)/2]]`
-/

namespace A040039.P14884035719582418054
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131205 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P14884035719582418054

namespace A040039

/-- `Δ[Δ[A131205(n+1)/2]]` -/
def P14884035719582418054.Spec : Prop :=
  ∀ n, P14884035719582418054.a n = (A040039 n : ℚ)

end A040039

/-! ## A040039.P7562486676594133316

`Δ[Δ[A022908(n+2)]-A000123(n+1)]`
-/

namespace A040039.P7562486676594133316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022908 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040039.P7562486676594133316

namespace A040039

/-- `Δ[Δ[A022908(n+2)]-A000123(n+1)]` -/
def P7562486676594133316.Spec : Prop :=
  ∀ n, P7562486676594133316.a n = A040039 n

end A040039

/-!
# A040040: Average of twin prime pairs (A014574), divided by 2. Equivalently, 2*a(n)-1 and 2*a(n)+1 are primes.

The programs for A040040, the canonical program `A040040.P16619200629137818045` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040040 has offset 1).

The definition of A040040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A040040.P16619200629137818045

`A014574(n+1)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A040040

/-- `A014574(n+1)/2` -/
def P16619200629137818045.Spec : Prop :=
  ∀ n, P16619200629137818045.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P5486888217083114652

`A054735(n+1)/4`
-/

namespace A040040.P5486888217083114652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 4

end

end A040040.P5486888217083114652

namespace A040040

/-- `A054735(n+1)/4` -/
def P5486888217083114652.Spec : Prop :=
  ∀ n, P5486888217083114652.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P3712852294615695193

`A111046(n+1)/8`
-/

namespace A040040.P3712852294615695193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 8

end

end A040040.P3712852294615695193

namespace A040040

/-- `A111046(n+1)/8` -/
def P3712852294615695193.Spec : Prop :=
  ∀ n, P3712852294615695193.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P11855615318239139228

`(A001359(n+1)+1)/2`
-/

namespace A040040.P11855615318239139228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 1 : ℚ) / 2

end

end A040040.P11855615318239139228

namespace A040040

/-- `(A001359(n+1)+1)/2` -/
def P11855615318239139228.Spec : Prop :=
  ∀ n, P11855615318239139228.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P3714045301355127643

`(A006512(n+1)-1)/2`
-/

namespace A040040.P3714045301355127643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) - 1 : ℚ) / 2

end

end A040040.P3714045301355127643

namespace A040040

/-- `(A006512(n+1)-1)/2` -/
def P3714045301355127643.Spec : Prop :=
  ∀ n, P3714045301355127643.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P4196889659058796040

`A243811(n+1)+2`
-/

namespace A040040.P4196889659058796040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1) + 2

end

end A040040.P4196889659058796040

namespace A040040

/-- `A243811(n+1)+2` -/
def P4196889659058796040.Spec : Prop :=
  ∀ n, P4196889659058796040.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P14414801202449270869

`sqrt(A075369(n+1))/2`
-/

namespace A040040.P14414801202449270869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) / 2

end

end A040040.P14414801202449270869

namespace A040040

/-- `sqrt(A075369(n+1))/2` -/
def P14414801202449270869.Spec : Prop :=
  ∀ n, P14414801202449270869.a n = (A040040 (n + 1) : ℝ)

end A040040

/-! ## A040040.P4088677135918263161

`floor(A006512(n+1)/2)`
-/

namespace A040040.P4088677135918263161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006512 (n + 1) : ℚ) / 2⌋

end

end A040040.P4088677135918263161

namespace A040040

/-- `floor(A006512(n+1)/2)` -/
def P4088677135918263161.Spec : Prop :=
  ∀ n, P4088677135918263161.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P9007093019901059259

`ceil(A001359(n+1)/2)`
-/

namespace A040040.P9007093019901059259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001359 (n + 1) : ℚ) / 2⌉

end

end A040040.P9007093019901059259

namespace A040040

/-- `ceil(A001359(n+1)/2)` -/
def P9007093019901059259.Spec : Prop :=
  ∀ n, P9007093019901059259.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P10201892138028935245

`A144834(n+1)/2+1`
-/

namespace A040040.P10201892138028935245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 1) : ℚ) / 2 + 1

end

end A040040.P10201892138028935245

namespace A040040

/-- `A144834(n+1)/2+1` -/
def P10201892138028935245.Spec : Prop :=
  ∀ n, P10201892138028935245.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P6969171992250182049

`(A082496(n+1)+1)/4`
-/

namespace A040040.P6969171992250182049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082496 (n + 1) + 1 : ℚ) / 4

end

end A040040.P6969171992250182049

namespace A040040

/-- `(A082496(n+1)+1)/4` -/
def P6969171992250182049.Spec : Prop :=
  ∀ n, P6969171992250182049.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P3557701635562134092

`(A108605(n+1)+2)/4`
-/

namespace A040040.P3557701635562134092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) + 2 : ℚ) / 4

end

end A040040.P3557701635562134092

namespace A040040

/-- `(A108605(n+1)+2)/4` -/
def P3557701635562134092.Spec : Prop :=
  ∀ n, P3557701635562134092.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P7270953939264257644

`(A176810(n+1)-2)/4`
-/

namespace A040040.P7270953939264257644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176810 (n + 1) - 2 : ℚ) / 4

end

end A040040.P7270953939264257644

namespace A040040

/-- `(A176810(n+1)-2)/4` -/
def P7270953939264257644.Spec : Prop :=
  ∀ n, P7270953939264257644.a n = (A040040 (n + 1) : ℚ)

end A040040

/-! ## A040040.P10685418393126213566

`A163059(n+1)-2*n`
-/

namespace A040040.P10685418393126213566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163059 (n + 1) - (2 * n : ℤ)

end

end A040040.P10685418393126213566

namespace A040040

/-- `A163059(n+1)-2*n` -/
def P10685418393126213566.Spec : Prop :=
  ∀ n, P10685418393126213566.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P12457103681106821461

`A074953(n)-a(n-1)` with `a(0)=2`
-/

namespace A040040.P12457103681106821461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074953 n - a (n - 1)

end

end A040040.P12457103681106821461

namespace A040040

/-- `A074953(n)-a(n-1)` -/
def P12457103681106821461.Spec : Prop :=
  ∀ n, P12457103681106821461.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P12682801382084318562

`floor(sqrt(A135286(n+1))/2)`
-/

namespace A040040.P12682801382084318562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A135286 (n + 1) : ℝ) / 2⌋

end

end A040040.P12682801382084318562

namespace A040040

/-- `floor(sqrt(A135286(n+1))/2)` -/
def P12682801382084318562.Spec : Prop :=
  ∀ n, P12682801382084318562.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P14864803230380522620

`ceil(sqrt(A037074(n+1))/2)`
-/

namespace A040040.P14864803230380522620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037074 (n + 1) : ℝ) / 2⌉

end

end A040040.P14864803230380522620

namespace A040040

/-- `ceil(sqrt(A037074(n+1))/2)` -/
def P14864803230380522620.Spec : Prop :=
  ∀ n, P14864803230380522620.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P5140465702435943445

`ceil(sqrt(A120875(n+1))/2)`
-/

namespace A040040.P5140465702435943445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A120875 (n + 1) : ℝ) / 2⌉

end

end A040040.P5140465702435943445

namespace A040040

/-- `ceil(sqrt(A120875(n+1))/2)` -/
def P5140465702435943445.Spec : Prop :=
  ∀ n, P5140465702435943445.a n = A040040 (n + 1)

end A040040

/-! ## A040040.P14967861551347425359

`sqrt((A120876(n+1)+1)/2)`
-/

namespace A040040.P14967861551347425359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A120876 (n + 1) + 1 : ℚ) / 2 : ℝ)

end

end A040040.P14967861551347425359

namespace A040040

/-- `sqrt((A120876(n+1)+1)/2)` -/
def P14967861551347425359.Spec : Prop :=
  ∀ n, P14967861551347425359.a n = (A040040 (n + 1) : ℝ)

end A040040

/-! ## A040040.P9757886238009487785

`A082669(n+1)/A006512(n+1)`
-/

namespace A040040.P9757886238009487785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082669 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A040040.P9757886238009487785

namespace A040040

/-- `A082669(n+1)/A006512(n+1)` -/
def P9757886238009487785.Spec : Prop :=
  ∀ n, P9757886238009487785.a n = (A040040 (n + 1) : ℚ)

end A040040

/-!
# A040044: Primes p such that x^3 = 5 has a solution mod p.

The programs for A040044, there is no canonical definition to state claims against.
-/

/-! ## A040044.P9538271423356659115

`∩[A106637(n+1), A216509(n+1)]`
-/

namespace A040044.P9538271423356659115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040044.P9538271423356659115

/-! ## A040044.P12638857972829540418

`eq[A112605(n), A362562(n)]`
-/

namespace A040044.P12638857972829540418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040044.P12638857972829540418

/-! ## A040044.P16900901274256036462

`eq[A246838(n), A362562(n)]`
-/

namespace A040044.P16900901274256036462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246838 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040044.P16900901274256036462

/-! ## A040044.P9658887203639858831

`eq[A262726(n), A362562(n)]`
-/

namespace A040044.P9658887203639858831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040044.P9658887203639858831

/-! ## A040044.P644008612284062893

`∩[A028776(n+1), A040065(n+1)]`
-/

namespace A040044.P644008612284062893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040044.P644008612284062893

/-!
# A040045: Primes p such that x^3 = 5 has no solution mod p.

The programs for A040045, there is no canonical definition to state claims against.
-/

/-! ## A040045.P7482520633432880375

`A002476(lt[A220237(3*n+4), A371783(3*(n+1))])`
-/

namespace A040045.P7482520633432880375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371783 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040045.P7482520633432880375

/-! ## A040045.P6250669064014500126

`A002476(lt[A321765(3*n+5), A325962(n+5)])`
-/

namespace A040045.P6250669064014500126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040045.P6250669064014500126

/-! ## A040045.P8904798591765716104

`∩[A272404(n+1), A141639(n+2)]`
-/

namespace A040045.P8904798591765716104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040045.P8904798591765716104

/-! ## A040045.P5420708801093949897

`A002476(lt[2, A000005((n+1)^4+2)])`
-/

namespace A040045.P5420708801093949897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 4 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A040045.P5420708801093949897

/-! ## A040045.P16648276758940075792

`A002476(lt[A115596(n+1), A121424(3*n+4)])`
-/

namespace A040045.P16648276758940075792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040045.P16648276758940075792

/-!
# A040046: Primes p such that x^3 = 6 has a solution mod p.

The programs for A040046, there is no canonical definition to state claims against.
-/

/-! ## A040046.P8867840977858337555

`p?[∑[A077196(A055230(n+1))]]`
-/

namespace A040046.P8867840977858337555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A055230 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040046.P8867840977858337555

/-! ## A040046.P4395671494573504006

`p?[A115837(n+1)-7]`
-/

namespace A040046.P4395671494573504006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115837 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040046.P4395671494573504006

/-! ## A040046.P10596023481200808727

`p?[n*A030203(A143068(n))]`
-/

namespace A040046.P10596023481200808727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030203 (A143068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040046.P10596023481200808727

/-! ## A040046.P13191118272401062824

`p?[∑[A192688(A107711(n))]]`
-/

namespace A040046.P13191118272401062824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192688 (A107711 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040046.P13191118272401062824

/-! ## A040046.P13729560266436200251

`A181659(A077168(n)+A048766(n+3))`
-/

namespace A040046.P13729560266436200251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181659 (A077168 n + A048766 (n + 3)).toNat

end

end A040046.P13729560266436200251

/-!
# A040047: Primes p such that x^3 = 6 has no solution mod p.

The programs for A040047, there is no canonical definition to state claims against.
-/

/-! ## A040047.P2156745166137898111

`∩[A071621(n+1), A349752(A245027(n+1))]`
-/

namespace A040047.P2156745166137898111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349752 (A245027 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040047.P2156745166137898111

/-! ## A040047.P514756811904203909

`A069324(lcm(∏{digits}[n, #]+1, n+1))`
-/

namespace A040047.P514756811904203909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069324 (Nat.lcm (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + 1) (n + 1))

end

end A040047.P514756811904203909

/-! ## A040047.P14256448636062820323

`A069324(comp[a(and(n, n-1))+1])` with `a(0)=13, a(1)=0`
-/

namespace A040047.P14256448636062820323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069324 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A040047.P14256448636062820323

/-! ## A040047.P14018039633127467746

`A069359(A069324(n+1)²)`
-/

namespace A040047.P14018039633127467746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A069324 (n + 1) ^ 2).toNat

end

end A040047.P14018039633127467746

/-! ## A040047.P3712418862817712269

`record[A069324(A358169(n+2))]`
-/

namespace A040047.P3712418862817712269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069324 (A358169 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040047.P3712418862817712269

/-!
# A040049: Primes p such that x^3 = 7 has a solution mod p.

The programs for A040049, there is no canonical definition to state claims against.
-/

/-! ## A040049.P5979868214559447727

`p?[comp[A040050(n+1)]]`
-/

namespace A040049.P5979868214559447727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040050 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040049.P5979868214559447727

/-! ## A040049.P11373636836355345618

`p?[n*A211352(A058281(n))]`
-/

namespace A040049.P11373636836355345618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A211352 (A058281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040049.P11373636836355345618

/-! ## A040049.P882588590976118545

`eq[A003415(n), A211352(A058281(n))]`
-/

namespace A040049.P882588590976118545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211352 (A058281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040049.P882588590976118545

/-! ## A040049.P11972484146710894637

`eq[A018783(n), A211352(A058281(n))]`
-/

namespace A040049.P11972484146710894637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211352 (A058281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040049.P11972484146710894637

/-! ## A040049.P3632064858964441237

`p?[n-A096004(A018835(n+2))]`
-/

namespace A040049.P3632064858964441237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A096004 (A018835 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040049.P3632064858964441237

/-!
# A040050: Primes p such that x^3 = 7 has no solution mod p.

The programs for A040050, there is no canonical definition to state claims against.
-/

/-! ## A040050.P11797878147670971159

`record[p?[A318281(A044622(n+1))]]`
-/

namespace A040050.P11797878147670971159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318281 (A044622 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040050.P11797878147670971159

/-! ## A040050.P322653128952601489

`A002476(lt[8, A221723(3*n+1)])`
-/

namespace A040050.P322653128952601489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A040050.P322653128952601489

/-! ## A040050.P18121289041390999552

`A002476(lt[A198954(3*n+1), A060026(n)])`
-/

namespace A040050.P18121289041390999552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040050.P18121289041390999552

/-! ## A040050.P9506834005577478447

`A002476(lt[A271518(n), A066010(3*n+2)])`
-/

namespace A040050.P9506834005577478447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066010 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040050.P9506834005577478447

/-! ## A040050.P2048003482504277216

`A002476(lt[A099981(n), A367209(3*n+2)])`
-/

namespace A040050.P2048003482504277216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099981 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367209 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040050.P2048003482504277216

/-!
# A040051: Parity of partition function A000041.

The programs for A040051, there is no canonical definition to state claims against.
-/

/-! ## A040051.P13336812688557162203

`A000035(A000041(n))`
-/

namespace A040051.P13336812688557162203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000041 n).toNat

end

end A040051.P13336812688557162203

/-! ## A040051.P9787310405447169352

`A000700(n)%2`
-/

namespace A040051.P9787310405447169352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) 2

end

end A040051.P9787310405447169352

/-! ## A040051.P5525600154287269522

`A069935(n)%2`
-/

namespace A040051.P5525600154287269522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069935 n) 2

end

end A040051.P5525600154287269522

/-! ## A040051.P3374637602981470455

`A070047(n)%2`
-/

namespace A040051.P3374637602981470455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070047 n) 2

end

end A040051.P3374637602981470455

/-! ## A040051.P2198954634312553623

`A108961(n)%2`
-/

namespace A040051.P2198954634312553623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108961 n) 2

end

end A040051.P2198954634312553623

/-! ## A040051.P2918433562722618672

`A108962(n)%2`
-/

namespace A040051.P2918433562722618672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108962 n) 2

end

end A040051.P2918433562722618672

/-! ## A040051.P14207980431045313974

`A121062(n)%2`
-/

namespace A040051.P14207980431045313974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121062 n) 2

end

end A040051.P14207980431045313974

/-! ## A040051.P9368232651002564888

`A132969(n)%2`
-/

namespace A040051.P9368232651002564888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132969 n) 2

end

end A040051.P9368232651002564888

/-! ## A040051.P1334056246433351617

`A178743(n)%2`
-/

namespace A040051.P1334056246433351617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178743 n) 2

end

end A040051.P1334056246433351617

/-! ## A040051.P14298243236966048781

`and(1, A000025(n))`
-/

namespace A040051.P14298243236966048781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000025 n)

end

end A040051.P14298243236966048781

/-! ## A040051.P10792475843683517900

`and(1, A053268(n))`
-/

namespace A040051.P10792475843683517900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053268 n)

end

end A040051.P10792475843683517900

/-! ## A040051.P10532412335536079072

`and(1, A081362(n))`
-/

namespace A040051.P10532412335536079072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081362 n)

end

end A040051.P10532412335536079072

/-! ## A040051.P11080278077668496007

`and(1, A085261(n))`
-/

namespace A040051.P11080278077668496007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A085261 n)

end

end A040051.P11080278077668496007

/-! ## A040051.P489280895068515291

`and(1, A124226(n))`
-/

namespace A040051.P489280895068515291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124226 n)

end

end A040051.P489280895068515291

/-! ## A040051.P15363267732574528798

`and(1, A132970(n))`
-/

namespace A040051.P15363267732574528798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A132970 n)

end

end A040051.P15363267732574528798

/-! ## A040051.P12923293905981528312

`and(1, A138559(n))`
-/

namespace A040051.P12923293905981528312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A138559 n)

end

end A040051.P12923293905981528312

/-! ## A040051.P9473292534797657228

`and(1, A260221(n))`
-/

namespace A040051.P9473292534797657228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260221 n)

end

end A040051.P9473292534797657228

/-! ## A040051.P2815816146965066374

`char[A052002(n+1)]`
-/

namespace A040051.P2815816146965066374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A040051.P2815816146965066374

/-! ## A040051.P16191773685386000907

`1-char[A001560(n+1)]`
-/

namespace A040051.P16191773685386000907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A040051.P16191773685386000907

/-! ## A040051.P5517542899270486453

`A000035(A069935(n))`
-/

namespace A040051.P5517542899270486453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A069935 n).toNat

end

end A040051.P5517542899270486453

/-!
# A040053: a(n) is 1 if and only if Ramanujan's tau(n) > 0.

The programs for A040053, there is no canonical definition to state claims against.
-/

/-! ## A040053.P5730251936267139892

`ceil(1/A145155(n))`
-/

namespace A040053.P5730251936267139892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A145155 n : ℚ)⌉

end

end A040053.P5730251936267139892

/-! ## A040053.P14348527435517841732

`ceil(1/A000594(n+1))`
-/

namespace A040053.P14348527435517841732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000594 (n + 1) : ℚ)⌉

end

end A040053.P14348527435517841732

/-! ## A040053.P2407397260686088874

`ceil(1/A034777(n+1))`
-/

namespace A040053.P2407397260686088874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A034777 (n + 1) : ℚ)⌉

end

end A040053.P2407397260686088874

/-! ## A040053.P1445662342265208168

`ceil(1/A308492(n+1))`
-/

namespace A040053.P1445662342265208168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A308492 (n + 1) : ℚ)⌉

end

end A040053.P1445662342265208168

/-! ## A040053.P3251844670713803472

`A000999(A079394(n+1))`
-/

namespace A040053.P3251844670713803472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 (A079394 (n + 1)).toNat

end

end A040053.P3251844670713803472

/-! ## A040053.P9609520184513132877

`floor(root(A004009(n), A000594(n+1)))`
-/

namespace A040053.P9609520184513132877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004009 n : ℝ) ^ (1 / (A000594 (n + 1) : ℝ))⌋

end

end A040053.P9609520184513132877

/-! ## A040053.P15769052988670361138

`floor(root(A008410(n), A000594(n+1)))`
-/

namespace A040053.P15769052988670361138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008410 n : ℝ) ^ (1 / (A000594 (n + 1) : ℝ))⌋

end

end A040053.P15769052988670361138

/-! ## A040053.P3244665692196628869

`A007053(floor(n/A000594(n+1))+1)`
-/

namespace A040053.P3244665692196628869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (⌊(n : ℚ) / (A000594 (n + 1) : ℚ)⌋ + 1).toNat

end

end A040053.P3244665692196628869

/-! ## A040053.P1045797323027396815

`A098108(floor(n/A000594(n+1))+1)`
-/

namespace A040053.P1045797323027396815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (⌊(n : ℚ) / (A000594 (n + 1) : ℚ)⌋ + 1).toNat

end

end A040053.P1045797323027396815

/-! ## A040053.P3193018092223740844

`A000720(floor(n/A000594(n+1))+2)`
-/

namespace A040053.P3193018092223740844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (⌊(n : ℚ) / (A000594 (n + 1) : ℚ)⌋ + 2).toNat

end

end A040053.P3193018092223740844

/-! ## A040053.P15409705362871018399

`A126812(1-floor(n/A000594(n+1)))`
-/

namespace A040053.P15409705362871018399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126812 (1 - ⌊(n : ℚ) / (A000594 (n + 1) : ℚ)⌋).toNat

end

end A040053.P15409705362871018399

/-! ## A040053.P16496831595845104418

`floor(root(A013959(n+1), A000594(n+1)))`
-/

namespace A040053.P16496831595845104418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013959 (n + 1) : ℝ) ^ (1 / (A000594 (n + 1) : ℝ))⌋

end

end A040053.P16496831595845104418

/-! ## A040053.P3575147232802664533

`floor(root(A096961(n+1), A000594(n+1)))`
-/

namespace A040053.P3575147232802664533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096961 (n + 1) : ℝ) ^ (1 / (A000594 (n + 1) : ℝ))⌋

end

end A040053.P3575147232802664533

/-! ## A040053.P13113787995030426175

`floor(A008689(n+1)/A008691(n+1))`
-/

namespace A040053.P13113787995030426175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008689 (n + 1) : ℚ) / (A008691 (n + 1) : ℚ)⌋

end

end A040053.P13113787995030426175

/-!
# A040054: Primes p such that x^3 = 10 has a solution mod p.

The programs for A040054, there is no canonical definition to state claims against.
-/

/-! ## A040054.P11985983810111312064

`p?[A002264(A060464(A273872(n)))]`
-/

namespace A040054.P11985983810111312064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A060464 (A273872 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040054.P11985983810111312064

/-! ## A040054.P1452310792129710873

`p?[A172275(n)+A111660(n+3)]`
-/

namespace A040054.P1452310792129710873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172275 n + A111660 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040054.P1452310792129710873

/-! ## A040054.P608090245439410554

`p?[comp[A123718(A123503(3*n+1))]]`
-/

namespace A040054.P608090245439410554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123718 (A123503 (3 * n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040054.P608090245439410554

/-! ## A040054.P6436435784027838299

`∩[A028800(n+1), A181659(n+1)]`
-/

namespace A040054.P6436435784027838299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040054.P6436435784027838299

/-! ## A040054.P17040294174149495605

`∩[A028800(n+1), A286267(n+1)]`
-/

namespace A040054.P17040294174149495605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040054.P17040294174149495605

/-!
# A040056: Continued fraction for sqrt(65).

The programs for A040056, there is no canonical definition to state claims against.
-/

/-! ## A040056.P2186251652427915302

`2*A040012(n)`
-/

namespace A040056.P2186251652427915302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040012 n

end

end A040056.P2186251652427915302

/-!
# A040057: Continued fraction for sqrt(66).

The programs for A040057, the canonical program `A040057.P18369166585514238202` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040057 has offset 0).

The definition of A040057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040057.P18369166585514238202

`a(n-2)` with `a(0)=8, a(1)=8, a(2)=16`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040057

/-- `a(n-2)` -/
def P18369166585514238202.Spec : Prop :=
  ∀ n, (P18369166585514238202.a n : ℤ) = A040057 n

theorem P18369166585514238202.correct : P18369166585514238202.Spec := by
  intro n
  simp only [A040057]

end A040057

/-!
# A040058: Primes p such that x^3 = 10 has no solution mod p.

The programs for A040058, there is no canonical definition to state claims against.
-/

/-! ## A040058.P13507295140978901909

`p?[A240835(A343225(2*(n+2)))]`
-/

namespace A040058.P13507295140978901909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240835 (A343225 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040058.P13507295140978901909

/-! ## A040058.P7691537157090534913

`A002476(eq[0, A025893(n)])`
-/

namespace A040058.P7691537157090534913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A040058.P7691537157090534913

/-! ## A040058.P9411413973381305583

`A002476(eq[0, A029410(n)])`
-/

namespace A040058.P9411413973381305583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A040058.P9411413973381305583

/-! ## A040058.P9905792409310553416

`A002476(lt[A025893(n), 1])`
-/

namespace A040058.P9905792409310553416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A040058.P9905792409310553416

/-! ## A040058.P15638393564752249962

`A002476(lt[A029410(n), 1])`
-/

namespace A040058.P15638393564752249962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029410 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A040058.P15638393564752249962

/-!
# A040060: Primes p such that x^3 = 11 has a solution mod p.

The programs for A040060, there is no canonical definition to state claims against.
-/

/-! ## A040060.P17217610289094679080

`∩[A028800(n+1), A216509(n+1)]`
-/

namespace A040060.P17217610289094679080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040060.P17217610289094679080

/-! ## A040060.P17776526023635592409

`eq[A003415(n), A005614(A000217(2*(n+2)))]`
-/

namespace A040060.P17776526023635592409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A000217 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040060.P17776526023635592409

/-! ## A040060.P2666791321397878345

`record[A302170(A024620(n+1))]`
-/

namespace A040060.P2666791321397878345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302170 (A024620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040060.P2666791321397878345

/-! ## A040060.P435542966692311832

`eq[A100676(n+1), A341701(n)]`
-/

namespace A040060.P435542966692311832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341701 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040060.P435542966692311832

/-! ## A040060.P228854655516978586

`eq[A100676(n+1), A125767(n+1)]`
-/

namespace A040060.P228854655516978586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040060.P228854655516978586

/-!
# A040061: Primes p such that x^3 = 11 has no solution mod p.

The programs for A040061, there is no canonical definition to state claims against.
-/

/-! ## A040061.P15938058722327501174

`A272407(∑[A317271(A002211(n))])`
-/

namespace A040061.P15938058722327501174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A002211 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A040061.P15938058722327501174

/-! ## A040061.P16714230800470926346

`A272407(∑[A000930(n)^A000122(2*n+3)])`
-/

namespace A040061.P16714230800470926346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) ^ (A000122 (2 * n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A040061.P16714230800470926346

/-! ## A040061.P1943615140770658189

`record[p?[A093563(A069909(n))]]`
-/

namespace A040061.P1943615140770658189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A069909 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040061.P1943615140770658189

/-! ## A040061.P8019194636636150533

`∩[A105435(n+1), A092214(n)]`
-/

namespace A040061.P8019194636636150533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040061.P8019194636636150533

/-! ## A040061.P6559388729141531687

`record[p?[A093563(A047513(n+1))]]`
-/

namespace A040061.P6559388729141531687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A047513 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040061.P6559388729141531687

/-!
# A040062: Primes p such that x^3 = 12 has a solution mod p.

The programs for A040062, there is no canonical definition to state claims against.
-/

/-! ## A040062.P14392067408229777776

`p?[lt[A128115(n+1), A300831(n+1)]]`
-/

namespace A040062.P14392067408229777776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300831 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040062.P14392067408229777776

/-! ## A040062.P3802447740270427509

`p?[eq[1, A176484(A117909(n))]]`
-/

namespace A040062.P3802447740270427509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176484 (A117909 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040062.P3802447740270427509

/-! ## A040062.P14167962230884457064

`eq[A003415(n), A176484(A117909(n))]`
-/

namespace A040062.P14167962230884457064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176484 (A117909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040062.P14167962230884457064

/-! ## A040062.P10002180955024006122

`∩[A216509(n+1), A328119(n+1)]`
-/

namespace A040062.P10002180955024006122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040062.P10002180955024006122

/-! ## A040062.P14293086436485685174

`∩[A028776(n+1), A077500(n+1)]`
-/

namespace A040062.P14293086436485685174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040062.P14293086436485685174

/-!
# A040064: Primes p such that x^3 = 12 has no solution mod p.

The programs for A040064, there is no canonical definition to state claims against.
-/

/-! ## A040064.P12643033512418938997

`p?[A016777(A186155(n+1)+A185245(n))]`
-/

namespace A040064.P12643033512418938997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A186155 (n + 1) + A185245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040064.P12643033512418938997

/-! ## A040064.P12832331754215988401

`∩[A189083(n+1), A272409(n+1)]`
-/

namespace A040064.P12832331754215988401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040064.P12832331754215988401

/-! ## A040064.P2656644412666158617

`∩[A102338(n+1), A272407(n+1)]`
-/

namespace A040064.P2656644412666158617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040064.P2656644412666158617

/-!
# A040065: Primes p such that x^3 = 13 has a solution mod p.

The programs for A040065, there is no canonical definition to state claims against.
-/

/-! ## A040065.P7969600321989945282

`∩[A028803(n+1), A299171(n+1)]`
-/

namespace A040065.P7969600321989945282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040065.P7969600321989945282

/-! ## A040065.P17640215962716056533

`∩[A028803(n+1), A347977(n+1)]`
-/

namespace A040065.P17640215962716056533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040065.P17640215962716056533

/-! ## A040065.P16122980462979780801

`∩[A069679(n+1), A347527(n+1)]`
-/

namespace A040065.P16122980462979780801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040065.P16122980462979780801

/-! ## A040065.P10267225905160656409

`∩[A295425(n+1), A347527(n+1)]`
-/

namespace A040065.P10267225905160656409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040065.P10267225905160656409

/-! ## A040065.P14240474915410536474

`eq[A010054(A047764(n+1)), A018783(n)]`
-/

namespace A040065.P14240474915410536474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A047764 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040065.P14240474915410536474

/-!
# A040066: Primes p such that x^3 = 13 has no solution mod p.

The programs for A040066, there is no canonical definition to state claims against.
-/

/-! ## A040066.P10000620542642533929

`p?[A007318(A155997(n))*A016777(n+5)]`
-/

namespace A040066.P10000620542642533929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A155997 n).toNat * A016777 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040066.P10000620542642533929

/-! ## A040066.P11258549843389937487

`p?[A016921(n+3)*A081406(A036853(n+3))]`
-/

namespace A040066.P11258549843389937487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 3) * A081406 (A036853 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040066.P11258549843389937487

/-! ## A040066.P5323010218128768312

`A272406(lt[A070801(n+4), A165278(3*(n+1))])`
-/

namespace A040066.P5323010218128768312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165278 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272406 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040066.P5323010218128768312

/-! ## A040066.P14787383318489498560

`A272404(A094270(n+2))`
-/

namespace A040066.P14787383318489498560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272404 (A094270 (n + 2)).toNat

end

end A040066.P14787383318489498560

/-! ## A040066.P4967712095169403703

`∩[A061841(n+1), A097358(n+1)]`
-/

namespace A040066.P4967712095169403703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040066.P4967712095169403703

/-!
# A040067: Primes p such that x^3 = 14 has a solution mod p.

The programs for A040067, there is no canonical definition to state claims against.
-/

/-! ## A040067.P3636257004825630304

`record[A007918(n)/A354599(n+9)]`
-/

namespace A040067.P3636257004825630304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007918 n : ℚ) / (A354599 (n + 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040067.P3636257004825630304

/-! ## A040067.P16154785286462944961

`record[A151800(n)/A354599(n+9)]`
-/

namespace A040067.P16154785286462944961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 n : ℚ) / (A354599 (n + 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040067.P16154785286462944961

/-! ## A040067.P2950642442739808917

`∩[A028809(n+1), A286267(n+1)]`
-/

namespace A040067.P2950642442739808917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040067.P2950642442739808917

/-! ## A040067.P3266491891564643274

`A139637(A239879(n+1))`
-/

namespace A040067.P3266491891564643274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A239879 (n + 1)).toNat

end

end A040067.P3266491891564643274

/-! ## A040067.P2982606800158919608

`∩[A028788(n+1), A109611(n+1)]`
-/

namespace A040067.P2982606800158919608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040067.P2982606800158919608

/-!
# A040068: Primes p such that x^3 = 14 has no solution mod p.

The programs for A040068, there is no canonical definition to state claims against.
-/

/-! ## A040068.P5575978000110040705

`A354936(Δ[A161951(n+1)²])`
-/

namespace A040068.P5575978000110040705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161951 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354936 (f1 (n + 1) - f1 n).toNat

end

end A040068.P5575978000110040705

/-! ## A040068.P309529139096453141

`A354936(Δ[∑[A354987(n+2)]²])`
-/

namespace A040068.P309529139096453141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354987 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354936 (f1 (n + 1) - f1 n).toNat

end

end A040068.P309529139096453141

/-! ## A040068.P123042420937462959

`∪[A354936(2*n+5), p?[3*A066385(n+3)+1]]`
-/

namespace A040068.P123042420937462959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354936 (2 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A066385 (n + 3) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040068.P123042420937462959

/-! ## A040068.P17075437777957351543

`A354936(2*n+3)%A116148(A320235(n))`
-/

namespace A040068.P17075437777957351543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354936 (2 * n + 3)) (A116148 (A320235 n).toNat)

end

end A040068.P17075437777957351543

/-! ## A040068.P508438521858280661

`or(A000122(A001333(n)), A354936(2*n+3))`
-/

namespace A040068.P508438521858280661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A001333 n).toNat) (A354936 (2 * n + 3))

end

end A040068.P508438521858280661

/-!
# A040069: Primes p such that x^3 = 15 has a solution mod p.

The programs for A040069, there is no canonical definition to state claims against.
-/

/-! ## A040069.P2787470117320481717

`p?[gcd(n, A033685(A056119(n)))]`
-/

namespace A040069.P2787470117320481717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033685 (A056119 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040069.P2787470117320481717

/-! ## A040069.P4003224633892032457

`p?[A000196(n*A124134(n+1))]`
-/

namespace A040069.P4003224633892032457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A124134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040069.P4003224633892032457

/-! ## A040069.P524135231409910218

`eq[A007920(n), A033685(A056119(n))]`
-/

namespace A040069.P524135231409910218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 (A056119 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040069.P524135231409910218

/-! ## A040069.P8225964228216648880

`p?[A059841(A035363(n))+A032766(n)]`
-/

namespace A040069.P8225964228216648880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A035363 n).toNat + A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040069.P8225964228216648880

/-! ## A040069.P16260378225097747841

`eq[A003415(n), A010684(A345788(2*n+1))]`
-/

namespace A040069.P16260378225097747841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A345788 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040069.P16260378225097747841

/-!
# A040070: Primes p such that x^3 = 15 has no solution mod p.

The programs for A040070, there is no canonical definition to state claims against.
-/

/-! ## A040070.P8377181154387414772

`p?[A000267(A301130(n))+4]`
-/

namespace A040070.P8377181154387414772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A301130 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040070.P8377181154387414772

/-! ## A040070.P12586725967997266678

`∩[A055047(n+1), A000040(A328869(n+5))]`
-/

namespace A040070.P12586725967997266678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A328869 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040070.P12586725967997266678

/-! ## A040070.P12376005399643028271

`p?[A016777(A180638(n+1)^A318997(n+1))]`
-/

namespace A040070.P12376005399643028271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.roundAway ((A180638 (n + 1) : ℚ) ^ (A318997 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040070.P12376005399643028271

/-! ## A040070.P17121317743154393040

`A002476(A080637(n+1)%A119034(3*n+2))`
-/

namespace A040070.P17121317743154393040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (Int.tmod (A080637 (n + 1)) (A119034 (3 * n + 2))).toNat

end

end A040070.P17121317743154393040

/-! ## A040070.P8145350937037701114

`A007645(record[A334299(2*n+3)])`
-/

namespace A040070.P8145350937037701114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A040070.P8145350937037701114

/-!
# A040072: Continued fraction for sqrt(82).

The programs for A040072, there is no canonical definition to state claims against.
-/

/-! ## A040072.P10371471322431480204

`3*A040006(n)`
-/

namespace A040072.P10371471322431480204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040006 n

end

end A040072.P10371471322431480204

/-!
# A040073: Continued fraction for sqrt(83).

The programs for A040073, the canonical program `A040073.P7626612885380361846` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040073 has offset 0).

The definition of A040073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040073.P7626612885380361846

`a(n-2)` with `a(0)=9, a(1)=9, a(2)=18`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040073

/-- `a(n-2)` -/
def P7626612885380361846.Spec : Prop :=
  ∀ n, (P7626612885380361846.a n : ℤ) = A040073 n

theorem P7626612885380361846.correct : P7626612885380361846.Spec := by
  intro n
  simp only [A040073]

end A040073

/-!
# A040075: 5-fold convolution of A000302 (powers of 4); expansion of 1/(1-4*x)^5.

The programs for A040075, the canonical program `A040075.P16622853079523685462` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040075 has offset 0).

The definition of A040075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040075.P16622853079523685462

`4^n*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040075

/-- `4^n*C(n+4, 4)` -/
def P16622853079523685462.Spec : Prop :=
  ∀ n, (P16622853079523685462.a n : ℤ) = A040075 n

theorem P16622853079523685462.correct : P16622853079523685462.Spec := by
  intro n
  simp only [A040075]

end A040075

/-! ## A040075.P3158316319232366028

`4^n*∑[∑[∑[n+1]]]`
-/

namespace A040075.P3158316319232366028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A040075.P3158316319232366028

namespace A040075

/-- `4^n*∑[∑[∑[n+1]]]` -/
def P3158316319232366028.Spec : Prop :=
  ∀ n, (P3158316319232366028.a n : ℤ) = A040075 n

end A040075

/-! ## A040075.P10789073068450665851

`floor(4*(n+4)*a(n-1)/n)` with `a(0)=1`
-/

namespace A040075.P10789073068450665851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊4 * ((n + 4 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A040075.P10789073068450665851

namespace A040075

/-- `floor(4*(n+4)*a(n-1)/n)` -/
def P10789073068450665851.Spec : Prop :=
  ∀ n, P10789073068450665851.a n = A040075 n

end A040075

/-! ## A040075.P16178268737193387547

`(6/n+2)*a(n-1)+(10/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A040075.P16178268737193387547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 / (n : ℚ) + 2) * a (n - 1) + (10 / (n : ℚ) + 2) * a (n - 1)

end

end A040075.P16178268737193387547

namespace A040075

/-- `(6/n+2)*a(n-1)+(10/n+2)*a(n-1)` -/
def P16178268737193387547.Spec : Prop :=
  ∀ n, P16178268737193387547.a n = (A040075 n : ℚ)

end A040075

/-! ## A040075.P649139211543983977

`A003472(n+4)+A000225(n)*A003472(n+4)`
-/

namespace A040075.P649139211543983977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003472 (n + 4) + A000225 n * A003472 (n + 4)

end

end A040075.P649139211543983977

namespace A040075

/-- `A003472(n+4)+A000225(n)*A003472(n+4)` -/
def P649139211543983977.Spec : Prop :=
  ∀ n, P649139211543983977.a n = A040075 n

end A040075

/-! ## A040075.P11726870370939416558

`4*(n+4)*a(n-1)/n` with `a(0)=1`
-/

namespace A040075.P11726870370939416558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((n + 4 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A040075.P11726870370939416558

namespace A040075

/-- `4*(n+4)*a(n-1)/n` -/
def P11726870370939416558.Spec : Prop :=
  ∀ n, P11726870370939416558.a n = (A040075 n : ℚ)

end A040075

/-! ## A040075.P5701635968250017333

`A001788(n+1)*A003472(n+4)/A000217(n+1)`
-/

namespace A040075.P5701635968250017333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 (n + 1) * A003472 (n + 4) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A040075.P5701635968250017333

namespace A040075

/-- `A001788(n+1)*A003472(n+4)/A000217(n+1)` -/
def P5701635968250017333.Spec : Prop :=
  ∀ n, P5701635968250017333.a n = (A040075 n : ℚ)

end A040075

/-! ## A040075.P301064818315871847

`A140354(2*n)-2*A000079(n)²*A282077(2*n)`
-/

namespace A040075.P301064818315871847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140354 (2 * n) - 2 * A000079 n ^ 2 * A282077 (2 * n)

end

end A040075.P301064818315871847

namespace A040075

/-- `A140354(2*n)-2*A000079(n)²*A282077(2*n)` -/
def P301064818315871847.Spec : Prop :=
  ∀ n, P301064818315871847.a n = A040075 n

end A040075

/-! ## A040075.P610636337388222217

`A140354(2*n)-A000079(2*n+1)*A282077(2*n)`
-/

namespace A040075.P610636337388222217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140354 (2 * n) - A000079 (2 * n + 1) * A282077 (2 * n)

end

end A040075.P610636337388222217

namespace A040075

/-- `A140354(2*n)-A000079(2*n+1)*A282077(2*n)` -/
def P610636337388222217.Spec : Prop :=
  ∀ n, P610636337388222217.a n = A040075 n

end A040075

/-! ## A040075.P3273708920624111866

`A038231(eq[4, A002262(n)])`
-/

namespace A040075.P3273708920624111866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A040075.P3273708920624111866

namespace A040075

/-- `A038231(eq[4, A002262(n)])` -/
def P3273708920624111866.Spec : Prop :=
  ∀ n, P3273708920624111866.a n = A040075 n

end A040075

/-! ## A040075.P9970342155516355723

`A172510(n)/2^n`
-/

namespace A040075.P9970342155516355723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172510 n : ℚ) / (2 ^ n : ℚ)

end

end A040075.P9970342155516355723

namespace A040075

/-- `A172510(n)/2^n` -/
def P9970342155516355723.Spec : Prop :=
  ∀ n, P9970342155516355723.a n = (A040075 n : ℚ)

end A040075

/-!
# A040076: Smallest m >= 0 such that n*2^m + 1 is prime, or -1 if no such m exists.

The programs for A040076, there is no canonical definition to state claims against.
-/

/-! ## A040076.P4449528913647976018

`lcm(A056051(n+2), A078680(n+1))`
-/

namespace A040076.P4449528913647976018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056051 (n + 2)) (A078680 (n + 1))

end

end A040076.P4449528913647976018

/-! ## A040076.P4458147266753876317

`Δ[A062298(n+1)]*A078680(n+1)`
-/

namespace A040076.P4458147266753876317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078680 (n + 1)

end

end A040076.P4458147266753876317

/-! ## A040076.P13750815795223061577

`(1-Δ[A000720(n+1)])*A078680(n+1)`
-/

namespace A040076.P13750815795223061577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A078680 (n + 1)

end

end A040076.P13750815795223061577

/-! ## A040076.P8296833270533454844

`A000607(Δ[A000720(n+1)])*A078680(n+1)`
-/

namespace A040076.P8296833270533454844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (n + 1) - f1 n).toNat * A078680 (n + 1)

end

end A040076.P8296833270533454844

/-! ## A040076.P920328568213047799

`A078680(n+1)%A069098(n+2)`
-/

namespace A040076.P920328568213047799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078680 (n + 1)) (A069098 (n + 2))

end

end A040076.P920328568213047799

/-! ## A040076.P8704425887916498304

`A225721(A005171(∑[n+1])+n+1)`
-/

namespace A040076.P8704425887916498304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (A005171 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) + 1).toNat

end

end A040076.P8704425887916498304

/-! ## A040076.P7568861822322947300

`A225721(A081668(2*n+1)+n)`
-/

namespace A040076.P7568861822322947300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (A081668 (2 * n + 1) + (n : ℤ)).toNat

end

end A040076.P7568861822322947300

/-! ## A040076.P12932936726765913437

`A225721(A216455(n+1)+1)`
-/

namespace A040076.P12932936726765913437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (A216455 (n + 1) + 1).toNat

end

end A040076.P12932936726765913437

/-! ## A040076.P14456672900509044110

`A225721(A354747(A108129(n+1))+n+1)`
-/

namespace A040076.P14456672900509044110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (A354747 (A108129 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A040076.P14456672900509044110

/-! ## A040076.P6045703942958213997

`A225721(n+2)+A010051(n+1)*A178948(n+2)`
-/

namespace A040076.P6045703942958213997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (n + 2) + A010051 (n + 1) * A178948 (n + 2)

end

end A040076.P6045703942958213997

/-!
# A040078: Primes p such that x^3 = 17 has a solution mod p.

The programs for A040078, there is no canonical definition to state claims against.
-/

/-! ## A040078.P6369248438501629127

`record[A162753(A073642(A224531(n+1)))]`
-/

namespace A040078.P6369248438501629127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A073642 (A224531 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040078.P6369248438501629127

/-! ## A040078.P12433572579595241282

`∩[A040054(n+1), A092875(n+1)]`
-/

namespace A040078.P12433572579595241282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040078.P12433572579595241282

/-! ## A040078.P14244741690362465087

`p?[or(A045506(n), A328794(n))]`
-/

namespace A040078.P14244741690362465087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045506 n) (A328794 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040078.P14244741690362465087

/-! ## A040078.P9634759686206114699

`∩[A028812(n+1), A040054(n+1)]`
-/

namespace A040078.P9634759686206114699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040078.P9634759686206114699

/-! ## A040078.P11010830825364214097

`∩[A038614(n+1), A276878(n+1)]`
-/

namespace A040078.P11010830825364214097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040078.P11010830825364214097

/-!
# A040079: Primes p such that x^3 = 17 has no solution mod p.

The programs for A040079, there is no canonical definition to state claims against.
-/

/-! ## A040079.P14309131226371105153

`A272409(lt[A117436(2*n+3), A271269(2*(n+1))])`
-/

namespace A040079.P14309131226371105153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117436 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040079.P14309131226371105153

/-! ## A040079.P7486324338591258246

`A007645(lt[A049289(n), A049417(n+1)]+1)`
-/

namespace A040079.P7486324338591258246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A040079.P7486324338591258246

/-! ## A040079.P5705584616346480978

`A007645(lt[A049289(n), A060462(n+1)]+1)`
-/

namespace A040079.P5705584616346480978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A040079.P5705584616346480978

/-! ## A040079.P16076483099336579788

`∩[A002476(n+1), A101771(n)]`
-/

namespace A040079.P16076483099336579788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040079.P16076483099336579788

/-!
# A040081: Riesel problem: a(n) = smallest m >= 0 such that n*2^m-1 is prime, or -1 if no such prime exists.

The programs for A040081, there is no canonical definition to state claims against.
-/

/-! ## A040081.P13377446602741314849

`log2((A038699(n+1)+1)/(n+1))`
-/

namespace A040081.P13377446602741314849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A038699 (n + 1) + 1 : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A040081.P13377446602741314849

/-! ## A040081.P16015908125141504284

`A000120(floor(A038699(n+1)/(n+1)))`
-/

namespace A040081.P16015908125141504284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊(A038699 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A040081.P16015908125141504284

/-! ## A040081.P4691030401906011563

`A000523((A038699(n+1)+1)/(n+1))`
-/

namespace A040081.P4691030401906011563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A038699 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))).toNat

end

end A040081.P4691030401906011563

/-! ## A040081.P6590620746874761126

`A001222((A038699(n+1)+1)/(n+1))`
-/

namespace A040081.P6590620746874761126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A038699 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))).toNat

end

end A040081.P6590620746874761126

/-! ## A040081.P12436088184078709028

`A003434((A038699(n+1)+1)/(n+1))`
-/

namespace A040081.P12436088184078709028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.roundAway ((A038699 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))).toNat

end

end A040081.P12436088184078709028

/-! ## A040081.P1556446028354316805

`A006666((A038699(n+1)+1)/(n+1))`
-/

namespace A040081.P1556446028354316805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway ((A038699 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))).toNat

end

end A040081.P1556446028354316805

/-! ## A040081.P3782764141450360996

`A056239((A038699(n+1)+1)/(n+1))`
-/

namespace A040081.P3782764141450360996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A038699 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))).toNat

end

end A040081.P3782764141450360996

/-! ## A040081.P15428804815332127292

`A113901((A038699(n+1)+1)/(n+1))`
-/

namespace A040081.P15428804815332127292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (SequenceMachineLib.roundAway ((A038699 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))).toNat

end

end A040081.P15428804815332127292

/-! ## A040081.P7713854073698868123

`A051903((A038699(n+1)-n)/(n+1)+1)`
-/

namespace A040081.P7713854073698868123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A038699 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ) + 1)).toNat

end

end A040081.P7713854073698868123

/-! ## A040081.P2695396855117069799

`A000120(A038699(n+1))-A000120(n)`
-/

namespace A040081.P2695396855117069799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A038699 (n + 1)).toNat - A000120 n

end

end A040081.P2695396855117069799

/-!
# A040082: Number of inequivalent Latin squares (or isotopy classes of Latin squares) of order n.

The programs for A040082, there is no canonical definition to state claims against.
-/

/-! ## A040082.P9502656399466723900

`A162544(∑[n+1])`
-/

namespace A040082.P9502656399466723900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162544 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A040082.P9502656399466723900

/-! ## A040082.P12880401460106834369

`A162545(∑[n+1])`
-/

namespace A040082.P12880401460106834369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A040082.P12880401460106834369

/-! ## A040082.P13139508912929046150

`A326541(n)+A162544(A062918(n+1))`
-/

namespace A040082.P13139508912929046150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A162544 (A062918 (n + 1)).toNat

end

end A040082.P13139508912929046150

/-! ## A040082.P10209557173109454721

`A139040(n+1)*A162544(A000217(n+1))`
-/

namespace A040082.P10209557173109454721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (n + 1) * A162544 (A000217 (n + 1)).toNat

end

end A040082.P10209557173109454721

/-!
# A040083: Primes p such that x^3 = 19 has a solution mod p.

The programs for A040083, there is no canonical definition to state claims against.
-/

/-! ## A040083.P18106113242402289869

`p?[A346951(n+1)-49]`
-/

namespace A040083.P18106113242402289869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346951 (n + 1) - 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040083.P18106113242402289869

/-! ## A040083.P15039014909997327705

`p?[or(A079979(n), A258575(n+1))]`
-/

namespace A040083.P15039014909997327705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079979 n) (A258575 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040083.P15039014909997327705

/-! ## A040083.P12315033356432120977

`record[p?[A333627(n)+n]]`
-/

namespace A040083.P12315033356432120977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040083.P12315033356432120977

/-! ## A040083.P15238569570237624431

`p?[A117741(n+1)-26]`
-/

namespace A040083.P15238569570237624431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (n + 1) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040083.P15238569570237624431

/-! ## A040083.P11435799298361505201

`p?[∑[n]%3+2*n-A103754(n+1)]`
-/

namespace A040083.P11435799298361505201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 + 2 * n : ℕ) : ℤ) - A103754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040083.P11435799298361505201

/-!
# A040084: Primes p such that x^3 = 19 has no solution mod p.

The programs for A040084, there is no canonical definition to state claims against.
-/

/-! ## A040084.P14170221531496660126

`p?[eq[-a(n-3), A102523(n+1)]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A040084.P14170221531496660126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f2 =>
  -f2 (n - 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102523 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040084.P14170221531496660126

/-! ## A040084.P16967093355115144938

`A272407(A064704(n+1))`
-/

namespace A040084.P16967093355115144938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (A064704 (n + 1)).toNat

end

end A040084.P16967093355115144938

/-! ## A040084.P11889052575755619329

`A272407(A083136(n+1))`
-/

namespace A040084.P11889052575755619329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (A083136 (n + 1)).toNat

end

end A040084.P11889052575755619329

/-! ## A040084.P862899635690440925

`A272407(A117057(n+1))`
-/

namespace A040084.P862899635690440925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (A117057 (n + 1)).toNat

end

end A040084.P862899635690440925

/-!
# A040085: Primes p such that x^3 = 20 has a solution mod p.

The programs for A040085, there is no canonical definition to state claims against.
-/

/-! ## A040085.P10685476978930744523

`p?[lt[A088950(n), 6^val(n+1, 6)]]`
-/

namespace A040085.P10685476978930744523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.valuation (n + 1) 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040085.P10685476978930744523

/-! ## A040085.P11633038715762430640

`p?[lt[A088951(n), 6^val(n+1, 6)]]`
-/

namespace A040085.P11633038715762430640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088951 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.valuation (n + 1) 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040085.P11633038715762430640

/-! ## A040085.P12109791710949177063

`p?[lt[A088951(n), A330749(n+1)]]`
-/

namespace A040085.P12109791710949177063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088951 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040085.P12109791710949177063

/-! ## A040085.P6931331545214729689

`eq[A003415(n), A005361(A256833(n))]`
-/

namespace A040085.P6931331545214729689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A256833 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040085.P6931331545214729689

/-! ## A040085.P4076048718278165293

`∩[A086472(n+1), A264387(n+1)]`
-/

namespace A040085.P4076048718278165293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040085.P4076048718278165293

/-!
# A040086: Primes p such that x^3 = 20 has no solution mod p.

The programs for A040086, there is no canonical definition to state claims against.
-/

/-! ## A040086.P4528812595699769369

`A272407(eq[A004526(n), A193921(n)])`
-/

namespace A040086.P4528812595699769369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A040086.P4528812595699769369

/-! ## A040086.P1527937269270442545

`∩[A189387(n+1), A356833(n+1)]`
-/

namespace A040086.P1527937269270442545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040086.P1527937269270442545

/-! ## A040086.P10345175279180196946

`∩[A272409(n+1), A297126(n+1)]`
-/

namespace A040086.P10345175279180196946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040086.P10345175279180196946

/-! ## A040086.P8448924001493131613

`∩[A189387(n+1), A392439(n+1)]`
-/

namespace A040086.P8448924001493131613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040086.P8448924001493131613

/-! ## A040086.P12697599276853691223

`A063910(n+3)+A004016(A090833(2*(n+2)))`
-/

namespace A040086.P12697599276853691223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063910 (n + 3) + A004016 (A090833 (2 * (n + 2))).toNat

end

end A040086.P12697599276853691223

/-!
# A040087: Primes p such that x^3 = 21 has a solution mod p.

The programs for A040087, there is no canonical definition to state claims against.
-/

/-! ## A040087.P11585146407588559007

`A000040(comp[12-A117436(n)])`
-/

namespace A040087.P11585146407588559007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - A117436 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040087.P11585146407588559007

/-! ## A040087.P4696092060863465060

`eq[A282460(n), A316990(n+2)]`
-/

namespace A040087.P4696092060863465060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316990 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040087.P4696092060863465060

/-! ## A040087.P15075155311537099524

`∩[A160547(n+1), A299956(n+1)]`
-/

namespace A040087.P15075155311537099524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040087.P15075155311537099524

/-! ## A040087.P3620446171453471842

`∩[A247064(n+1), A299956(n+1)]`
-/

namespace A040087.P3620446171453471842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040087.P3620446171453471842

/-! ## A040087.P6044744824821110889

`A000040(comp[12-n*A307997(n+1)])`
-/

namespace A040087.P6044744824821110889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - (n : ℤ) * A307997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040087.P6044744824821110889

/-!
# A040088: Primes p such that x^3 = 21 has no solution mod p.

The programs for A040088, there is no canonical definition to state claims against.
-/

/-! ## A040088.P1221317073763996417

`∩[A171891(3*n+11), A006514(n+1)]`
-/

namespace A040088.P1221317073763996417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (3 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040088.P1221317073763996417

/-! ## A040088.P14428166896026528297

`A002476(lt[A038028(n+1), A038004(3*n+2)])`
-/

namespace A040088.P14428166896026528297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038004 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040088.P14428166896026528297

/-! ## A040088.P16405016689564580827

`p?[(n+8)*A175267(n)]`
-/

namespace A040088.P16405016689564580827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * A175267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040088.P16405016689564580827

/-! ## A040088.P2489703570658605795

`p?[A339637(2*(n+1))-A339627(n+2)]`
-/

namespace A040088.P2489703570658605795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339637 (2 * (n + 1)) - A339627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040088.P2489703570658605795

/-!
# A040089: Primes p such that x^3 = 22 has a solution mod p.

The programs for A040089, there is no canonical definition to state claims against.
-/

/-! ## A040089.P9284139878090749307

`record[A006530(A100821(n+1)+A049705(2*(n+2))+n)]`
-/

namespace A040089.P9284139878090749307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100821 (n + 1) + A049705 (2 * (n + 2)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040089.P9284139878090749307

/-! ## A040089.P2296292191328599346

`p?[∑[A132588(A167743(n+1))]]`
-/

namespace A040089.P2296292191328599346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132588 (A167743 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040089.P2296292191328599346

/-! ## A040089.P15210139280576845641

`p?[∑[∏{e}[A128753(n), #]]]`
-/

namespace A040089.P15210139280576845641
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128753 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040089.P15210139280576845641

/-! ## A040089.P5211936397928634890

`record[p?[A222234(A112233(n+1))]]`
-/

namespace A040089.P5211936397928634890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A112233 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040089.P5211936397928634890

/-! ## A040089.P12844647715007571741

`A000040(lt[A219484((n+1)*((n+1)²+1)), 1])`
-/

namespace A040089.P12844647715007571741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 ((n + 1) * ((n + 1) ^ 2 + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A040089.P12844647715007571741

/-!
# A040090: Continued fraction for sqrt(101).

The programs for A040090, there is no canonical definition to state claims against.
-/

/-! ## A040090.P13297620836263602385

`2*A040020(n)`
-/

namespace A040090.P13297620836263602385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040020 n

end

end A040090.P13297620836263602385

/-!
# A040091: Continued fraction for sqrt(102).

The programs for A040091, the canonical program `A040091.P8756136610212090123` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040091 has offset 0).

The definition of A040091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040091.P8756136610212090123

`a(n-2)` with `a(0)=10, a(1)=10, a(2)=20`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A040091

/-- `a(n-2)` -/
def P8756136610212090123.Spec : Prop :=
  ∀ n, (P8756136610212090123.a n : ℤ) = A040091 n

theorem P8756136610212090123.correct : P8756136610212090123.Spec := by
  intro n
  simp only [A040091]

end A040091

/-!
# A040092: Primes p such that x^3 = 22 has no solution mod p.

The programs for A040092, there is no canonical definition to state claims against.
-/

/-! ## A040092.P1603017984099075884

`∩[A020635(n+1), A218146(n+1)]`
-/

namespace A040092.P1603017984099075884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040092.P1603017984099075884

/-! ## A040092.P9885248024099742778

`A215801(A173288(n+2)^A215561(n+4))`
-/

namespace A040092.P9885248024099742778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215801 (SequenceMachineLib.roundAway ((A173288 (n + 2) : ℚ) ^ (A215561 (n + 4) : ℤ))).toNat

end

end A040092.P9885248024099742778

/-! ## A040092.P14780479467831333304

`∩[A191983(n+1), A257002(n+1)]`
-/

namespace A040092.P14780479467831333304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040092.P14780479467831333304

/-!
# A040095: Primes p such that x^3 = 23 has a solution mod p.

The programs for A040095, there is no canonical definition to state claims against.
-/

/-! ## A040095.P8155210819175485007

`p?[or(A015829(n), A045506(n))]`
-/

namespace A040095.P8155210819175485007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015829 n) (A045506 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040095.P8155210819175485007

/-! ## A040095.P16196615459758816101

`p?[A002174(n+1)-A123108(A247430(n+1))]`
-/

namespace A040095.P16196615459758816101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (n + 1) - A123108 (A247430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040095.P16196615459758816101

/-! ## A040095.P4910677723280016998

`p?[eq[A280749(n), A286493(n+1)]]`
-/

namespace A040095.P4910677723280016998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040095.P4910677723280016998

/-! ## A040095.P8206671507478921693

`A000040(lt[A011191(n+1), A193968(3*n+1)])`
-/

namespace A040095.P8206671507478921693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193968 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040095.P8206671507478921693

/-! ## A040095.P15994880472419527478

`A000040(lt[A223256(3*n), A188881(3*(n+1))])`
-/

namespace A040095.P15994880472419527478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223256 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188881 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040095.P15994880472419527478

/-!
# A040096: Primes p such that x^3 = 23 has no solution mod p.

The programs for A040096, there is no canonical definition to state claims against.
-/

/-! ## A040096.P6338910466198446555

`p?[(3*n+7)*A106495(2*n+7)]`
-/

namespace A040096.P6338910466198446555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 7 : ℤ) * A106495 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040096.P6338910466198446555

/-! ## A040096.P727771041447853969

`record[p?[A047234(A118834(n+1))]]`
-/

namespace A040096.P727771041447853969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (A118834 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040096.P727771041447853969

/-!
# A040098: Primes p such that x^4 = 2 has a solution mod p.

The programs for A040098, there is no canonical definition to state claims against.
-/

/-! ## A040098.P17605502132454483241

`∪[A014754(n+1), A045382(n+1)]`
-/

namespace A040098.P17605502132454483241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040098.P17605502132454483241

/-! ## A040098.P1948991110901539019

`A008472(∪[A001134(n+1), A045315(n+1)]²)`
-/

namespace A040098.P1948991110901539019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A040098.P1948991110901539019

/-! ## A040098.P2967554774262806692

`A045315(A062399(n+1))`
-/

namespace A040098.P2967554774262806692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (A062399 (n + 1)).toNat

end

end A040098.P2967554774262806692

/-! ## A040098.P155714258475373987

`A049564(A120126(n+1))`
-/

namespace A040098.P155714258475373987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049564 (A120126 (n + 1)).toNat

end

end A040098.P155714258475373987

