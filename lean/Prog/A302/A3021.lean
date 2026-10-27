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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
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
# A302100: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * A(x)^n * Product_{k=0..n-1} (3*k + 1).

The programs for A302100, there is no canonical definition to state claims against.
-/

/-! ## A302100.P4312140932940237431

`A132403((n-1)*n²)`
-/

namespace A302100.P4312140932940237431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132403 (((n : ℤ) - 1) * (n ^ 2 : ℤ)).toNat

end

end A302100.P4312140932940237431

/-!
# A302101: G.f. A(x) satisfies: A(x) = 1 + x * (A(x) + 4*x*A'(x)) / (A(x) + x*A'(x)).

The programs for A302101, there is no canonical definition to state claims against.
-/

/-! ## A302101.P10288328095284218501

`A294786(∏[record[gcd(n+1, (9-n)^13)]])`
-/

namespace A302101.P10288328095284218501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((9 - (n : ℤ)) ^ 13)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294786 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A302101.P10288328095284218501

/-! ## A302101.P16064079414443670946

`A100196(A098637(n))`
-/

namespace A302101.P16064079414443670946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A098637 n).toNat

end

end A302101.P16064079414443670946

/-!
# A302102: G.f. A(x) satisfies: A(x) = 1 + x * (x*A(x)^4)' / (x*A(x))'.

The programs for A302102, there is no canonical definition to state claims against.
-/

/-! ## A302102.P15345784639814322841

`A249427(Δ[A292751(n)])`
-/

namespace A302102.P15345784639814322841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249427 (f1 (n + 1) - f1 n).toNat

end

end A302102.P15345784639814322841

/-!
# A302103: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (2 + x*A(x)^n)^n / 3^(n+1).

The programs for A302103, there is no canonical definition to state claims against.
-/

/-! ## A302103.P8768310450096510282

`ceil(3^(n-1))*A344881(n!)`
-/

namespace A302103.P8768310450096510282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A344881 (Nat.factorial n)

end

end A302103.P8768310450096510282

/-!
# A302104: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (3 + x*A(x)^n)^n / 4^(n+1).

The programs for A302104, there is no canonical definition to state claims against.
-/

/-! ## A302104.P6772446194863101147

`A364166(A149470(n))`
-/

namespace A302104.P6772446194863101147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364166 (A149470 n).toNat

end

end A302104.P6772446194863101147

/-!
# A302105: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (4 + x*A(x)^n)^n / 5^(n+1).

The programs for A302105, there is no canonical definition to state claims against.
-/

/-! ## A302105.P809344233146174419

`A064091(n)+A045763(A064091(n))`
-/

namespace A302105.P809344233146174419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064091 n + A045763 (A064091 n).toNat

end

end A302105.P809344233146174419

/-!
# A302106: G.f.: A(x) = 1 + x/2 * Sum_{n>=0} A(x)^(n^2) / 2^n.

The programs for A302106, there is no canonical definition to state claims against.
-/

/-! ## A302106.P8533235015263141384

`A030101(∑[42*a(n-1)]-1)` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A302106.P8533235015263141384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  42 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A302106.P8533235015263141384

/-!
# A302107: G.f. A(x) satisfies: [x^(n+1)] A(x)^(n^2) / (x*A(x)^n)' = 0 for n>=0.

The programs for A302107, there is no canonical definition to state claims against.
-/

/-! ## A302107.P16626458124052376146

`A324753(floor(exp(n-2)))`
-/

namespace A302107.P16626458124052376146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324753 ⌊Real.exp ((n : ℤ) - 2 : ℝ)⌋.toNat

end

end A302107.P16626458124052376146

/-! ## A302107.P4030191476671649042

`A321223(∑[3*C(∑[n], n)])`
-/

namespace A302107.P4030191476671649042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302107.P4030191476671649042

/-!
# A302108: G.f.: Sum_{n>=0} ( (1+x)^n - (1-x)^n )^n / 2^n.

The programs for A302108, there is no canonical definition to state claims against.
-/

/-! ## A302108.P7033238025475642377

`A004507(n^n+9)`
-/

namespace A302108.P7033238025475642377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004507 (n ^ n + 9)

end

end A302108.P7033238025475642377

/-! ## A302108.P6340282376137411844

`A004513(n^n+12)`
-/

namespace A302108.P6340282376137411844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (n ^ n + 12)

end

end A302108.P6340282376137411844

/-!
# A302109: Smallest integer N such that there are exactly n cyclic groups C_2 in the multiplicative group of integers modulo N when decomposed as a product of cyclic groups C_{k_1} x C_{k_2} x ... x C_{k_m}, and k_i divides k_j for i < j.

The programs for A302109, there is no canonical definition to state claims against.
-/

/-! ## A302109.P11741533430926692481

`filter[A102476(n), A011750(#)]`
-/

namespace A302109.P11741533430926692481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011750 (f1 j).toNat = 1) n)

end

end A302109.P11741533430926692481

/-!
# A302110: Let d be the list of A000005(n) = tau(n) divisors of n. Then a(n) is the largest k such that Sum_{i=1..#d-k} d_i > n.

The programs for A302110, there is no canonical definition to state claims against.
-/

/-! ## A302110.P8064626985563031097

`A000005(n+1)-A125747(n+1)`
-/

namespace A302110.P8064626985563031097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A125747 (n + 1)

end

end A302110.P8064626985563031097

/-! ## A302110.P1559710618037265042

`A300826(n+1)-A300826(A079458(n+1)+1)`
-/

namespace A302110.P1559710618037265042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (n + 1) - A300826 (A079458 (n + 1) + 1).toNat

end

end A302110.P1559710618037265042

/-! ## A302110.P13950628019643822849

`val(A026549(n), A026549(A125746(n+1)))`
-/

namespace A302110.P13950628019643822849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A026549 n).toNat (A026549 (A125746 (n + 1)).toNat).toNat

end

end A302110.P13950628019643822849

/-! ## A302110.P10421243574821759860

`A300826(n+1)-A300826(A062672(2*n+1))`
-/

namespace A302110.P10421243574821759860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (n + 1) - A300826 (A062672 (2 * n + 1)).toNat

end

end A302110.P10421243574821759860

/-! ## A302110.P5557451419624114816

`A300826(n+1)-A215926(A023196(n+1))`
-/

namespace A302110.P5557451419624114816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (n + 1) - A215926 (A023196 (n + 1)).toNat

end

end A302110.P5557451419624114816

/-! ## A302110.P11178945785736102742

`A264080(n)%A300826(n+1)`
-/

namespace A302110.P11178945785736102742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264080 n) (A300826 (n + 1))

end

end A302110.P11178945785736102742

/-! ## A302110.P4474349369921653327

`A266701(n)%A300826(n+1)`
-/

namespace A302110.P4474349369921653327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266701 n) (A300826 (n + 1))

end

end A302110.P4474349369921653327

/-! ## A302110.P8235278991798920726

`A293435(A000045(A300826(n+1)²))`
-/

namespace A302110.P8235278991798920726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A000045 (A300826 (n + 1) ^ 2).toNat).toNat

end

end A302110.P8235278991798920726

/-! ## A302110.P13162298795417200543

`A105392(n+1)%A300826(n+1)`
-/

namespace A302110.P13162298795417200543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105392 (n + 1)) (A300826 (n + 1))

end

end A302110.P13162298795417200543

/-! ## A302110.P9567599744458915873

`A083800(n+1)%A300826(n+1)`
-/

namespace A302110.P9567599744458915873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A300826 (n + 1))

end

end A302110.P9567599744458915873

/-! ## A302110.P3818221785112401714

`A070198(n)%A300826(n+1)`
-/

namespace A302110.P3818221785112401714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A300826 (n + 1))

end

end A302110.P3818221785112401714

/-! ## A302110.P17494692328066051541

`A079782(n+1)%A300826(n+1)`
-/

namespace A302110.P17494692328066051541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A300826 (n + 1))

end

end A302110.P17494692328066051541

/-! ## A302110.P2236087378023007621

`A083685(n+1)%A300826(n+1)`
-/

namespace A302110.P2236087378023007621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A300826 (n + 1))

end

end A302110.P2236087378023007621

/-! ## A302110.P18000674196433100156

`A005665(n)%A300826(n+1)`
-/

namespace A302110.P18000674196433100156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005665 n) (A300826 (n + 1))

end

end A302110.P18000674196433100156

/-! ## A302110.P5206739484110384503

`A057960(n)%A300826(n+1)`
-/

namespace A302110.P5206739484110384503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057960 n) (A300826 (n + 1))

end

end A302110.P5206739484110384503

/-! ## A302110.P7176613409493433877

`A124704(n)%A300826(n+1)`
-/

namespace A302110.P7176613409493433877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124704 n) (A300826 (n + 1))

end

end A302110.P7176613409493433877

/-! ## A302110.P4965945857041726848

`A104522(n)%A300826(n+1)`
-/

namespace A302110.P4965945857041726848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104522 n) (A300826 (n + 1))

end

end A302110.P4965945857041726848

/-! ## A302110.P3774597581889696330

`A122695(n)%A300826(n+1)`
-/

namespace A302110.P3774597581889696330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122695 n) (A300826 (n + 1))

end

end A302110.P3774597581889696330

/-! ## A302110.P1005400505616728282

`A007689(n)%A300826(n+1)`
-/

namespace A302110.P1005400505616728282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007689 n) (A300826 (n + 1))

end

end A302110.P1005400505616728282

/-! ## A302110.P12590122873394998021

`A066810(n)%A300826(n+1)`
-/

namespace A302110.P12590122873394998021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066810 n) (A300826 (n + 1))

end

end A302110.P12590122873394998021

/-!
# A302112: Number of forests with 2n nodes and n labeled trees. Also number of forests with exactly n edges on 2n labeled nodes.

The programs for A302112, there is no canonical definition to state claims against.
-/

/-! ## A302112.P13632978523605885085

`(A332679(n)-2*n*A332680(n))*C(2*n, n)/2^n`
-/

namespace A302112.P13632978523605885085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A332679 n - (2 * n : ℤ) * A332680 n) * (Nat.choose (2 * n) n : ℤ) : ℚ) / (2 ^ n : ℚ)

end

end A302112.P13632978523605885085

/-! ## A302112.P2795528780799200040

`A138464(A058331(n))`
-/

namespace A302112.P2795528780799200040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A058331 n).toNat

end

end A302112.P2795528780799200040

/-! ## A302112.P6278031812395610786

`A138464(A005408(n²))`
-/

namespace A302112.P6278031812395610786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A005408 (n ^ 2)).toNat

end

end A302112.P6278031812395610786

/-! ## A302112.P13008946125219114496

`A138464(A001105(n)+1)`
-/

namespace A302112.P13008946125219114496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A001105 n + 1).toNat

end

end A302112.P13008946125219114496

/-! ## A302112.P10316707031649983986

`A105599(A004275(n²+1))`
-/

namespace A302112.P10316707031649983986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A004275 (n ^ 2 + 1)).toNat

end

end A302112.P10316707031649983986

/-!
# A302114: a(n) = 8*(n-1)*(2*n-3)*a(n-1) + ((-1)^n)*(n-1)*Product_{k=0..n-3} (2*k+1)^2 with a(0) = 0.

The programs for A302114, there is no canonical definition to state claims against.
-/

/-! ## A302114.P3521619749748395203

`A241653(A241672(n+1)+A008973(n))`
-/

namespace A302114.P3521619749748395203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241653 (A241672 (n + 1) + A008973 n).toNat

end

end A302114.P3521619749748395203

/-!
# A302115: a(n) = 16*(n-1)*a(n-1) + ((-1)^n)*(4/3)*Product_{k=0..n-1} (2*k-3) with a(0) = 0.

The programs for A302115, the canonical program `A302115.P14253911316629959274` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302115 has offset 0).

The definition of A302115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302115.P14253911316629959274

`(14*n-11)*a(n-1)+16*(n-2)*(2*n-5)*a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302115

/-- `(14*n-11)*a(n-1)+16*(n-2)*(2*n-5)*a(n-2)` -/
def P14253911316629959274.Spec : Prop :=
  ∀ n, P14253911316629959274.a n = A302115 n

theorem P14253911316629959274.correct : P14253911316629959274.Spec := by
  intro n
  simp only [A302115]

end A302115

/-!
# A302117: a(n) = 4*(n-1)*a(n-1) - (1/3)*Product_{k=0..n-1} (2*k-3), with a(0) = 0.

The programs for A302117, there is no canonical definition to state claims against.
-/

/-! ## A302117.P645310150095681408

`A060145(∑[n!]²)`
-/

namespace A302117.P645310150095681408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A302117.P645310150095681408

/-!
# A302118: Number of permutations p of [n] such that |p(i) - p(i-1)| is in {1,3} for all i from 2 to n.

The programs for A302118, there is no canonical definition to state claims against.
-/

/-! ## A302118.P7371313990204587999

`gcd(2, A003274(n))*A302119(n)`
-/

namespace A302118.P7371313990204587999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A003274 n) : ℤ) * A302119 n

end

end A302118.P7371313990204587999

/-! ## A302118.P17271276991121471258

`A020639(A000010(n+1))*A302119(n)`
-/

namespace A302118.P17271276991121471258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A302119 n

end

end A302118.P17271276991121471258

/-! ## A302118.P1406850904129711392

`A020639(A185048(n+1))*A302119(n)`
-/

namespace A302118.P1406850904129711392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185048 (n + 1)).toNat * A302119 n

end

end A302118.P1406850904129711392

/-! ## A302118.P12399128472030909766

`A003274(n)/A069241(n)*A302119(n)`
-/

namespace A302118.P12399128472030909766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003274 n : ℚ) / (A069241 n : ℚ) * (A302119 n : ℚ)

end

end A302118.P12399128472030909766

/-! ## A302118.P4862794554267533781

`A302119(n)+A302119(n)%A002478(n)`
-/

namespace A302118.P4862794554267533781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302119 n + Int.tmod (A302119 n) (A002478 n)

end

end A302118.P4862794554267533781

/-! ## A302118.P11962175598424051186

`A180562(A000124(n))*A302119(n)`
-/

namespace A302118.P11962175598424051186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A000124 n).toNat * A302119 n

end

end A302118.P11962175598424051186

/-!
# A302119: Number of Hamiltonian paths in the graph on n vertices {1,...,n}, with i adjacent to j iff |i-j| in {1,3}.

The programs for A302119, there is no canonical definition to state claims against.
-/

/-! ## A302119.P12953742768002931938

`ceil(A302118(n)/2)`
-/

namespace A302119.P12953742768002931938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A302118 n : ℚ) / 2⌉

end

end A302119.P12953742768002931938

/-! ## A302119.P2090882347671238852

`A302118(n)/gcd(2, A003274(n))`
-/

namespace A302119.P2090882347671238852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302118 n : ℚ) / (Int.gcd 2 (A003274 n) : ℚ)

end

end A302119.P2090882347671238852

/-! ## A302119.P7074162155534580387

`A302118(n)/A020639(A000010(n+1))`
-/

namespace A302119.P7074162155534580387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302118 n : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A302119.P7074162155534580387

/-! ## A302119.P14993128311453328255

`A069241(n)/A003274(n)*A302118(n)`
-/

namespace A302119.P14993128311453328255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069241 n : ℚ) / (A003274 n : ℚ) * (A302118 n : ℚ)

end

end A302119.P14993128311453328255

/-! ## A302119.P17151868079898220776

`A302118(n)/A003274(A003274(n)/A069241(n))`
-/

namespace A302119.P17151868079898220776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302118 n : ℚ) / (A003274 (SequenceMachineLib.roundAway ((A003274 n : ℚ) / (A069241 n : ℚ))).toNat : ℚ)

end

end A302119.P17151868079898220776

/-! ## A302119.P13870237639098022389

`A302118(n)/A180562(A000124(n))`
-/

namespace A302119.P13870237639098022389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302118 n : ℚ) / (A180562 (A000124 n).toNat : ℚ)

end

end A302119.P13870237639098022389

/-!
# A302123: Numbers k such that 6*k^k - 5 is prime.

The programs for A302123, there is no canonical definition to state claims against.
-/

/-! ## A302123.P18070384955554095422

`record[xor(A059930(n+1), A111576(n+1))]`
-/

namespace A302123.P18070384955554095422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059930 (n + 1)) (A111576 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302123.P18070384955554095422

/-!
# A302124: Primes of form 6*k^k - 5.

The programs for A302124, there is no canonical definition to state claims against.
-/

/-! ## A302124.P8205713739421785047

`6*A302123(n+1)^A302123(n+1)-5`
-/

namespace A302124.P8205713739421785047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (A302123 (n + 1) : ℚ) ^ (A302123 (n + 1) : ℤ) - 5

end

end A302124.P8205713739421785047

/-!
# A302126: Interleaved Fibonacci and Lucas numbers.

The programs for A302126, the canonical program `A302126.P11251194459327783039` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302126 has offset 0).

The definition of A302126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302126.P11251194459327783039

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302126

/-- `a(n-2)+a(n-4)` -/
def P11251194459327783039.Spec : Prop :=
  ∀ n, (P11251194459327783039.a n : ℤ) = A302126 n

theorem P11251194459327783039.correct : P11251194459327783039.Spec := by
  intro n
  simp only [A302126]

end A302126

/-! ## A302126.P12333210728191038715

`ogf((2x+x^2-x^3)/(1-x^2-x^4))`
-/

namespace A302126.P12333210728191038715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1] [1, 0, -1, 0, -1] n

end

end A302126.P12333210728191038715

namespace A302126

/-- `ogf((2x+x^2-x^3)/(1-x^2-x^4))` -/
def P12333210728191038715.Spec : Prop :=
  ∀ n, P12333210728191038715.a n = A302126 n

end A302126

/-! ## A302126.P9676820305390668402

`A103609(n+1)+Δ[A103609(n)]`
-/

namespace A302126.P9676820305390668402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 1) + (f1 (n + 1) - f1 n)

end

end A302126.P9676820305390668402

namespace A302126

/-- `A103609(n+1)+Δ[A103609(n)]` -/
def P9676820305390668402.Spec : Prop :=
  ∀ n, P9676820305390668402.a n = A302126 n

end A302126

/-! ## A302126.P34533495848088218

`A303427(xor(1, n))`
-/

namespace A302126.P34533495848088218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (Nat.xor 1 n)

end

end A302126.P34533495848088218

namespace A302126

/-- `A303427(xor(1, n))` -/
def P34533495848088218.Spec : Prop :=
  ∀ n, P34533495848088218.a n = A302126 n

end A302126

/-! ## A302126.P15445692728249750832

`A303427(A004442(n))`
-/

namespace A302126.P15445692728249750832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (A004442 n).toNat

end

end A302126.P15445692728249750832

namespace A302126

/-- `A303427(A004442(n))` -/
def P15445692728249750832.Spec : Prop :=
  ∀ n, P15445692728249750832.a n = A302126 n

end A302126

/-! ## A302126.P3836990511142137700

`A214927(n+3)-A103609(n)`
-/

namespace A302126.P3836990511142137700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (n + 3) - A103609 n

end

end A302126.P3836990511142137700

namespace A302126

/-- `A214927(n+3)-A103609(n)` -/
def P3836990511142137700.Spec : Prop :=
  ∀ n, P3836990511142137700.a n = A302126 n

end A302126

/-!
# A302127: Primitive terms of A067808.

The programs for A302127, there is no canonical definition to state claims against.
-/

/-! ## A302127.P10015636611742961824

`A067808(A249115(n+1)%A067813(n+1))`
-/

namespace A302127.P10015636611742961824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067808 (Int.tmod (A249115 (n + 1)) (A067813 (n + 1))).toNat

end

end A302127.P10015636611742961824

/-! ## A302127.P18004268300226908510

`A067808(eq[A050375(n+1), A340691(n+1)])`
-/

namespace A302127.P18004268300226908510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067808 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A302127.P18004268300226908510

/-!
# A302128: a(n) = a(a(n-2)) + a(n-a(n-1)) with a(1) = a(2) = a(3) = 1.

The programs for A302128, the canonical program `A302128.P8226942823938727600` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302128 has offset 1).

The definition of A302128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-2)-1)+a(n-a(n-1))` (program `A302128.P8226942823938727600`, by `A302128.P8226942823938727600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302128.P8226942823938727600

`a(a(n-2)-1)+a(n-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302128

/-- `a(a(n-2)-1)+a(n-a(n-1))` -/
def P8226942823938727600.Spec : Prop :=
  ∀ n, (P8226942823938727600.a n : ℤ) = A302128 (n + 1)

theorem P8226942823938727600.correct : P8226942823938727600.Spec := by
  intro n
  simp only [A302128, Nat.add_sub_cancel]

end A302128

/-! ## A302128.P15980824849363050447

`ceil(A119025(A000069(n+1))/17)`
-/

namespace A302128.P15980824849363050447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119025 (A000069 (n + 1)).toNat : ℚ) / 17⌉

end

end A302128.P15980824849363050447

namespace A302128

/-- `ceil(A119025(A000069(n+1))/17)` -/
def P15980824849363050447.Spec : Prop :=
  ∀ n, P15980824849363050447.a n = A302128 (n + 1)

end A302128

/-! ## A302128.P12015650484417956672

`A001462(A384178(n)+A209899(3*n+2))`
-/

namespace A302128.P12015650484417956672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A384178 n + A209899 (3 * n + 2)).toNat

end

end A302128.P12015650484417956672

namespace A302128

/-- `A001462(A384178(n)+A209899(3*n+2))` -/
def P12015650484417956672.Spec : Prop :=
  ∀ n, P12015650484417956672.a n = A302128 (n + 1)

end A302128

/-! ## A302128.P5648789542355734177

`A171622(A246347(n+1))`
-/

namespace A302128.P5648789542355734177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171622 (A246347 (n + 1)).toNat

end

end A302128.P5648789542355734177

namespace A302128

/-- `A171622(A246347(n+1))` -/
def P5648789542355734177.Spec : Prop :=
  ∀ n, P5648789542355734177.a n = A302128 (n + 1)

end A302128

/-!
# A302130: a(n) = a(a(n-3)) + a(n-a(n-2)) with a(1) = a(2) = a(3) = a(4) = 1, a(5) = 2, a(6) = 5.

The programs for A302130, the canonical program `A302130.P11844512974660921652` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302130 has offset 1).

The definition of A302130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3)-1)+a(n-a(n-2))` (program `A302130.P11844512974660921652`, by `A302130.P11844512974660921652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302130.P11844512974660921652

`a(a(n-3)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302130

/-- `a(a(n-3)-1)+a(n-a(n-2))` -/
def P11844512974660921652.Spec : Prop :=
  ∀ n, (P11844512974660921652.a n : ℤ) = A302130 (n + 1)

theorem P11844512974660921652.correct : P11844512974660921652.Spec := by
  intro n
  simp only [A302130, Nat.add_sub_cancel]

end A302130

/-!
# A302131: Number of (undirected) paths in the n-triangular honeycomb obtuse knight graph.

The programs for A302131, there is no canonical definition to state claims against.
-/

/-! ## A302131.P12187090911842456276

`369%floor(sqrt(n!))²!`
-/

namespace A302131.P12187090911842456276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  369 % Nat.factorial (Nat.sqrt (Nat.factorial n) ^ 2)

end

end A302131.P12187090911842456276

/-!
# A302136: Numbers k such that 10*k^k - 9 is prime.

The programs for A302136, there is no canonical definition to state claims against.
-/

/-! ## A302136.P5650153610882672639

`A137803(A001044(n))+A096856(n)`
-/

namespace A302136.P5650153610882672639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (A001044 n).toNat + A096856 n

end

end A302136.P5650153610882672639

/-!
# A302138: Period of Kronecker symbol modulo n.

The programs for A302138, the canonical program `A302138.P7690415119872440868` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302138 has offset 1).

The definition of A302138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302138.P7690415119872440868

`(and(n+1, -(n+1))%3)²*∏{p}[n+1, #]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302138

/-- `(and(n+1, -(n+1))%3)²*∏{p}[n+1, #]` -/
def P7690415119872440868.Spec : Prop :=
  ∀ n, P7690415119872440868.a n = A302138 (n + 1)

theorem P7690415119872440868.correct : P7690415119872440868.Spec := by
  intro n
  simp only [A302138, Nat.add_sub_cancel]

end A302138

/-! ## A302138.P578200579709768148

`(2-(val(n+1, 2)²+2*n+1)%4)²*∏{p}[n+1, #]`
-/

namespace A302138.P578200579709768148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (((SequenceMachineLib.valuation (n + 1) 2 ^ 2 + (2 * n + 1)) % 4 : ℕ) : ℤ)) ^ 2 * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A302138.P578200579709768148

namespace A302138

/-- `(2-(val(n+1, 2)²+2*n+1)%4)²*∏{p}[n+1, #]` -/
def P578200579709768148.Spec : Prop :=
  ∀ n, P578200579709768148.a n = A302138 (n + 1)

end A302138

/-! ## A302138.P870961648950714413

`(val(n+1, 2)%2+1)²*A007947(n+1)`
-/

namespace A302138.P870961648950714413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1) ^ 2 : ℕ) : ℤ) * A007947 (n + 1)

end

end A302138.P870961648950714413

namespace A302138

/-- `(val(n+1, 2)%2+1)²*A007947(n+1)` -/
def P870961648950714413.Spec : Prop :=
  ∀ n, P870961648950714413.a n = A302138 (n + 1)

end A302138

/-! ## A302138.P2393698847210796429

`A056832(n+1)²*A007947(n+1)`
-/

namespace A302138.P2393698847210796429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) ^ 2 * A007947 (n + 1)

end

end A302138.P2393698847210796429

namespace A302138

/-- `A056832(n+1)²*A007947(n+1)` -/
def P2393698847210796429.Spec : Prop :=
  ∀ n, P2393698847210796429.a n = A302138 (n + 1)

end A302138

/-! ## A302138.P13902664814384459306

`A105931(n+1)²*A007947(n+1)`
-/

namespace A302138.P13902664814384459306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) ^ 2 * A007947 (n + 1)

end

end A302138.P13902664814384459306

namespace A302138

/-- `A105931(n+1)²*A007947(n+1)` -/
def P13902664814384459306.Spec : Prop :=
  ∀ n, P13902664814384459306.a n = A302138 (n + 1)

end A302138

/-! ## A302138.P1706577650716665244

`(A245187(n)+A091297(n+1))*∏{p}[n+1, #]`
-/

namespace A302138.P1706577650716665244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245187 n + A091297 (n + 1)) * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A302138.P1706577650716665244

namespace A302138

/-- `(A245187(n)+A091297(n+1))*∏{p}[n+1, #]` -/
def P1706577650716665244.Spec : Prop :=
  ∀ n, P1706577650716665244.a n = A302138 (n + 1)

end A302138

/-! ## A302138.P15393710672322733764

`A007947(n+1)*A008833(2*A007913(n+1))`
-/

namespace A302138.P15393710672322733764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008833 (2 * A007913 (n + 1)).toNat

end

end A302138.P15393710672322733764

namespace A302138

/-- `A007947(n+1)*A008833(2*A007913(n+1))` -/
def P15393710672322733764.Spec : Prop :=
  ∀ n, P15393710672322733764.a n = A302138 (n + 1)

end A302138

/-! ## A302138.P6204895810301071680

`gcd(A117888(n+1), A117889(n+1))`
-/

namespace A302138.P6204895810301071680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117888 (n + 1)) (A117889 (n + 1))

end

end A302138.P6204895810301071680

namespace A302138

/-- `gcd(A117888(n+1), A117889(n+1))` -/
def P6204895810301071680.Spec : Prop :=
  ∀ n, (P6204895810301071680.a n : ℤ) = A302138 (n + 1)

end A302138

/-!
# A302139: Numbers k such that A111336(k) = 4.

The programs for A302139, there is no canonical definition to state claims against.
-/

/-! ## A302139.P9205337885864709064

`record[A145154(∑[A222386(n+1)])]`
-/

namespace A302139.P9205337885864709064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302139.P9205337885864709064

/-!
# A302140: Numbers n with the property that for every m coprime to n, there are solutions to x^(psi(n)/ord(m,n)) == m (mod n), where psi(n) = A002322(n) and ord(m,n) is multiplicative order of m modulo n.

The programs for A302140, there is no canonical definition to state claims against.
-/

/-! ## A302140.P1417965513133208266

`eq[1, A196842(A104194(n+1))^n]+1`
-/

namespace A302140.P1417965513133208266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196842 (A104194 (n + 1)).toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302140.P1417965513133208266

/-! ## A302140.P1300332696287757020

`record[A000027(n+1)/A196842(A104194(n+1))^n]`
-/

namespace A302140.P1300332696287757020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A196842 (A104194 (n + 1)).toNat ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302140.P1300332696287757020

/-! ## A302140.P14461727514357827273

`record[(A005408(n)-n)/A196842(A104194(n+1))^n]`
-/

namespace A302140.P14461727514357827273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A196842 (A104194 (n + 1)).toNat ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302140.P14461727514357827273

/-! ## A302140.P16669937724842959657

`∑[A323023(A238279(∑{d}[n+1, #%(n+1)]))]`
-/

namespace A302140.P16669937724842959657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A238279 (∑ d ∈ Nat.divisors (f2 n), d % (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302140.P16669937724842959657

/-! ## A302140.P15327648882762246667

`lt[A242434(A279342(n+2)), A350206(n+1)]`
-/

namespace A302140.P15327648882762246667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242434 (A279342 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302140.P15327648882762246667

/-!
# A302141: Multiplicative order of 16 mod 2n+1.

The programs for A302141, there is no canonical definition to state claims against.
-/

/-! ## A302141.P10255793125468096149

`A053447(n)/gcd(A053447(n), 2)`
-/

namespace A302141.P10255793125468096149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053447 n : ℚ) / (Int.gcd (A053447 n) 2 : ℚ)

end

end A302141.P10255793125468096149

/-! ## A302141.P7821248302588115692

`A002326(n)/gcd(A002326(n), 4)`
-/

namespace A302141.P7821248302588115692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 n : ℚ) / (Int.gcd (A002326 n) 4 : ℚ)

end

end A302141.P7821248302588115692

/-! ## A302141.P1482587472094757986

`lcm(2, A053447(n))/2`
-/

namespace A302141.P1482587472094757986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A053447 n) : ℚ) / 2

end

end A302141.P1482587472094757986

/-! ## A302141.P13031445329899934683

`A026741(A053447(n))`
-/

namespace A302141.P13031445329899934683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A053447 n).toNat

end

end A302141.P13031445329899934683

/-! ## A302141.P2060741487924731560

`A060819(A002326(n))`
-/

namespace A302141.P2060741487924731560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A002326 n).toNat

end

end A302141.P2060741487924731560

/-! ## A302141.P17913559972656736854

`A030065(A055388(n+1))`
-/

namespace A302141.P17913559972656736854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A055388 (n + 1)).toNat

end

end A302141.P17913559972656736854

/-! ## A302141.P11077106162449156238

`A054716(Δ[n²])`
-/

namespace A302141.P11077106162449156238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A302141.P11077106162449156238

/-! ## A302141.P7054199505531033046

`A054716(2*n+1)%(n+2)`
-/

namespace A302141.P7054199505531033046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054716 (2 * n + 1)) (n + 2 : ℤ)

end

end A302141.P7054199505531033046

/-! ## A302141.P13429695466791592362

`A026741(A007735(2*n+1))`
-/

namespace A302141.P13429695466791592362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A007735 (2 * n + 1)).toNat

end

end A302141.P13429695466791592362

/-! ## A302141.P16518961474084621650

`gcd(A002326(n), A054716(A005408(n)))`
-/

namespace A302141.P16518961474084621650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002326 n) (A054716 (A005408 n).toNat)

end

end A302141.P16518961474084621650

/-! ## A302141.P3679236992279416637

`A026741(A026741(A007733(2*n+1)))`
-/

namespace A302141.P3679236992279416637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A007733 (2 * n + 1)).toNat).toNat

end

end A302141.P3679236992279416637

/-! ## A302141.P7387070521274530444

`A106609(2*A007733(2*n+1))`
-/

namespace A302141.P7387070521274530444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A007733 (2 * n + 1)).toNat

end

end A302141.P7387070521274530444

/-! ## A302141.P14727494459713189870

`A054716(2*A005408(n))-1`
-/

namespace A302141.P14727494459713189870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (2 * A005408 n).toNat - 1

end

end A302141.P14727494459713189870

/-! ## A302141.P7243541901816189932

`A051724(A002326(n)+2*A002326(n))`
-/

namespace A302141.P7243541901816189932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A002326 n + 2 * A002326 n).toNat

end

end A302141.P7243541901816189932

/-!
# A302145: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302145, there is no canonical definition to state claims against.
-/

/-! ## A302145.P14276951246758334573

`A302150(∑[4*n]+1)`
-/

namespace A302145.P14276951246758334573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302145.P14276951246758334573

/-! ## A302145.P12778560977102738509

`A302150(A001844(n))+char[19]`
-/

namespace A302145.P12778560977102738509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302145.P12778560977102738509

/-! ## A302145.P1240902755662094578

`lcm(A033999(n), A302150(A001844(n)))`
-/

namespace A302145.P1240902755662094578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A302150 (A001844 n).toNat)

end

end A302145.P1240902755662094578

/-! ## A302145.P7439837217145895991

`or(A000007(n), A302150(A001844(n)))`
-/

namespace A302145.P7439837217145895991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A302150 (A001844 n).toNat)

end

end A302145.P7439837217145895991

/-! ## A302145.P13509101337696049234

`or(A000035(n), A302150(A001844(n)))`
-/

namespace A302145.P13509101337696049234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A302150 (A001844 n).toNat)

end

end A302145.P13509101337696049234

/-!
# A302146: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302146, the canonical program `A302146.P15923196074063982875` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302146 has offset 1).

The definition of A302146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302146.P3073246370841208404

`ogf((1-2x-2x^2)/(1-4x+2x^2+2x^3))`
-/

namespace A302146.P3073246370841208404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -4, 2, 2] n

end

end A302146.P3073246370841208404

namespace A302146

/-- `ogf((1-2x-2x^2)/(1-4x+2x^2+2x^3))` -/
def P3073246370841208404.Spec : Prop :=
  ∀ n, P3073246370841208404.a n = A302146 (n + 1)

end A302146

/-! ## A302146.P15923196074063982875

`4*a(n-1)-2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302146

/-- `4*a(n-1)-2*a(n-2)-2*a(n-3)` -/
def P15923196074063982875.Spec : Prop :=
  ∀ n, P15923196074063982875.a n = A302146 (n + 1)

theorem P15923196074063982875.correct : P15923196074063982875.Spec := by
  intro n
  simp only [A302146, Nat.add_sub_cancel]

end A302146

/-! ## A302146.P8138413937813185904

`A302150(∑[n+3]+1)`
-/

namespace A302146.P8138413937813185904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302146.P8138413937813185904

namespace A302146

/-- `A302150(∑[n+3]+1)` -/
def P8138413937813185904.Spec : Prop :=
  ∀ n, P8138413937813185904.a n = A302146 (n + 1)

end A302146

/-! ## A302146.P5523900680791140336

`record[A302150(n+1)-A176129(n+2)]`
-/

namespace A302146.P5523900680791140336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (n + 1) - A176129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302146.P5523900680791140336

namespace A302146

/-- `record[A302150(n+1)-A176129(n+2)]` -/
def P5523900680791140336.Spec : Prop :=
  ∀ n, P5523900680791140336.a n = A302146 (n + 1)

end A302146

/-! ## A302146.P15751956925952055063

`record[A302150(n+1)/A022166(n+2)]`
-/

namespace A302146.P15751956925952055063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302150 (n + 1) : ℚ) / (A022166 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302146.P15751956925952055063

namespace A302146

/-- `record[A302150(n+1)/A022166(n+2)]` -/
def P15751956925952055063.Spec : Prop :=
  ∀ n, P15751956925952055063.a n = (A302146 (n + 1) : ℚ)

end A302146

/-!
# A302147: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302147, there is no canonical definition to state claims against.
-/

/-! ## A302147.P10950071396932470608

`A302150(eq[4, A193592(n)])`
-/

namespace A302147.P10950071396932470608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302147.P10950071396932470608

/-! ## A302147.P8912277140600191733

`A302150(Δ[A023545(n+1)])`
-/

namespace A302147.P8912277140600191733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (f1 (n + 1) - f1 n).toNat

end

end A302147.P8912277140600191733

/-! ## A302147.P16384137782193326713

`A302150(A034856(n+4)-2)`
-/

namespace A302147.P16384137782193326713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A034856 (n + 4) - 2).toNat

end

end A302147.P16384137782193326713

/-! ## A302147.P14049756745395251998

`A302150(A000217(n+5)-4)`
-/

namespace A302147.P14049756745395251998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A000217 (n + 5) - 4).toNat

end

end A302147.P14049756745395251998

/-! ## A302147.P16782899902226510849

`A302150(A000124(n+5)-5)`
-/

namespace A302147.P16782899902226510849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A000124 (n + 5) - 5).toNat

end

end A302147.P16782899902226510849

/-!
# A302148: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302148, there is no canonical definition to state claims against.
-/

/-! ## A302148.P6288242538232710101

`A302150(A052905(n+3))`
-/

namespace A302148.P6288242538232710101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A052905 (n + 3)).toNat

end

end A302148.P6288242538232710101

/-! ## A302148.P11644358167899102555

`A302150(eq[3, A219347(n)])`
-/

namespace A302148.P11644358167899102555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302148.P11644358167899102555

/-! ## A302148.P15000366577787872606

`A302150(eq[5, A193592(n)])`
-/

namespace A302148.P15000366577787872606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302148.P15000366577787872606

/-! ## A302148.P11378890973824797089

`A302150(A055999(n+3)+1)`
-/

namespace A302148.P11378890973824797089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A055999 (n + 3) + 1).toNat

end

end A302148.P11378890973824797089

/-! ## A302148.P441673817518660863

`A302150(eq[8, A185782(n+1)])`
-/

namespace A302148.P441673817518660863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302148.P441673817518660863

/-!
# A302149: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302149, there is no canonical definition to state claims against.
-/

/-! ## A302149.P11820438696838624331

`A302150(A055999(n+4))`
-/

namespace A302149.P11820438696838624331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A055999 (n + 4)).toNat

end

end A302149.P11820438696838624331

/-! ## A302149.P9836332644640612905

`A302150(eq[4, A219347(n)])`
-/

namespace A302149.P9836332644640612905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302149.P9836332644640612905

/-! ## A302149.P12164919576833115769

`A302150(eq[6, A193592(n)])`
-/

namespace A302149.P12164919576833115769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302149.P12164919576833115769

/-! ## A302149.P7270875227204041303

`A302150(A000124(n+7)-7)`
-/

namespace A302149.P7270875227204041303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A000124 (n + 7) - 7).toNat

end

end A302149.P7270875227204041303

/-! ## A302149.P1353854281499956043

`A302150(eq[10, A185782(n+1)])`
-/

namespace A302149.P1353854281499956043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302149.P1353854281499956043

/-!
# A302150: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302150, there is no canonical definition to state claims against.
-/

/-! ## A302150.P17121539821010894422

`A301906(n+1)+A081603(A022167(n))`
-/

namespace A302150.P17121539821010894422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (n + 1) + A081603 (A022167 n).toNat

end

end A302150.P17121539821010894422

/-! ## A302150.P8337115525861888979

`gcd(A059474(n), A124768(A102365(n)))`
-/

namespace A302150.P8337115525861888979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059474 n) (A124768 (A102365 n).toNat)

end

end A302150.P8337115525861888979

/-! ## A302150.P13971623535030166042

`or(A124768(A102365(n)), A130125(n))`
-/

namespace A302150.P13971623535030166042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124768 (A102365 n).toNat) (A130125 n)

end

end A302150.P13971623535030166042

/-! ## A302150.P15886451006246725195

`A301906(n+1)+A014707(A022171(n))`
-/

namespace A302150.P15886451006246725195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (n + 1) + A014707 (A022171 n).toNat

end

end A302150.P15886451006246725195

/-! ## A302150.P12416878125073445584

`A301906(n+1)+A025469(A022345(n))`
-/

namespace A302150.P12416878125073445584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301906 (n + 1) + A025469 (A022345 n).toNat

end

end A302150.P12416878125073445584

/-!
# A302151: Number of 3Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302151, there is no canonical definition to state claims against.
-/

/-! ## A302151.P8329790199838406463

`A302150(∑[n+2]+4)`
-/

namespace A302151.P8329790199838406463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302151.P8329790199838406463

/-! ## A302151.P3372558343382192872

`or(char[1], A302150(A167614(n+1)))`
-/

namespace A302151.P3372558343382192872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302150 (A167614 (n + 1)).toNat)

end

end A302151.P3372558343382192872

/-! ## A302151.P1282889716520924256

`A302150(A167614(n+1))+A185284(n)`
-/

namespace A302151.P1282889716520924256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A167614 (n + 1)).toNat + A185284 n

end

end A302151.P1282889716520924256

/-! ## A302151.P2882826402444166409

`lcm(A033999(n), A302150(A167614(n+1)))`
-/

namespace A302151.P2882826402444166409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A302150 (A167614 (n + 1)).toNat)

end

end A302151.P2882826402444166409

/-! ## A302151.P6191454470440660222

`A302150(A167614(n+1))%A046325(n+1)`
-/

namespace A302151.P6191454470440660222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302150 (A167614 (n + 1)).toNat) (A046325 (n + 1))

end

end A302151.P6191454470440660222

/-!
# A302152: Number of 4 X n 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302152, there is no canonical definition to state claims against.
-/

/-! ## A302152.P4160245159409073694

`A302150(A141214(n)+7)`
-/

namespace A302152.P4160245159409073694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A141214 n + 7).toNat

end

end A302152.P4160245159409073694

/-! ## A302152.P13392158146645907056

`A302150(A052905(n)+9)`
-/

namespace A302152.P13392158146645907056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A052905 n + 9).toNat

end

end A302152.P13392158146645907056

/-! ## A302152.P15879510007826691110

`A302150(A055999(n)+10)`
-/

namespace A302152.P15879510007826691110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A055999 n + 10).toNat

end

end A302152.P15879510007826691110

/-! ## A302152.P17346120018555516722

`A302150(A167614(n+2)+1)`
-/

namespace A302152.P17346120018555516722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A167614 (n + 2) + 1).toNat

end

end A302152.P17346120018555516722

/-! ## A302152.P12119663662484876523

`A302150(A133263(n+3)+2)`
-/

namespace A302152.P12119663662484876523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A133263 (n + 3) + 2).toNat

end

end A302152.P12119663662484876523

/-!
# A302153: Number of 5Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302153, there is no canonical definition to state claims against.
-/

/-! ## A302153.P16107782366976911305

`A302150(A167499(n+3))`
-/

namespace A302153.P16107782366976911305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A167499 (n + 3)).toNat

end

end A302153.P16107782366976911305

/-! ## A302153.P9558851943036018979

`A302150(A167614(n+3)+2)`
-/

namespace A302153.P9558851943036018979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A167614 (n + 3) + 2).toNat

end

end A302153.P9558851943036018979

/-! ## A302153.P15148793696569312558

`A302150(A000124(n+4)+4)`
-/

namespace A302153.P15148793696569312558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A000124 (n + 4) + 4).toNat

end

end A302153.P15148793696569312558

/-! ## A302153.P10519392032015002243

`A302150(A000217(n+4)+5)`
-/

namespace A302153.P10519392032015002243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A000217 (n + 4) + 5).toNat

end

end A302153.P10519392032015002243

/-! ## A302153.P1056623945322601666

`A302150(A055998(n+2)+8)`
-/

namespace A302153.P1056623945322601666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A055998 (n + 2) + 8).toNat

end

end A302153.P1056623945322601666

/-!
# A302154: Number of 6Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302154, there is no canonical definition to state claims against.
-/

/-! ## A302154.P2636611864733848510

`A302150(A238531(n+6)+4)`
-/

namespace A302154.P2636611864733848510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A238531 (n + 6) + 4).toNat

end

end A302154.P2636611864733848510

/-! ## A302154.P4279045157350683014

`A302150(A000217(n+5)+6)`
-/

namespace A302154.P4279045157350683014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A000217 (n + 5) + 6).toNat

end

end A302154.P4279045157350683014

/-! ## A302154.P15862191708232375309

`A302150(A000124(n+6)-(n+1))`
-/

namespace A302154.P15862191708232375309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A302154.P15862191708232375309

/-! ## A302154.P16830712681581001549

`A302150(A055998(n+5)-A005843(n+2))`
-/

namespace A302154.P16830712681581001549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A055998 (n + 5) - A005843 (n + 2)).toNat

end

end A302154.P16830712681581001549

/-!
# A302155: Number of 7 X n 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302155, there is no canonical definition to state claims against.
-/

/-! ## A302155.P16988229617861660007

`A302150(A167487(n+5))`
-/

namespace A302155.P16988229617861660007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A167487 (n + 5)).toNat

end

end A302155.P16988229617861660007

/-! ## A302155.P8474408833444316200

`A302150(A056119(n)+28)`
-/

namespace A302155.P8474408833444316200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A056119 n + 28).toNat

end

end A302155.P8474408833444316200

/-! ## A302155.P12045109039484382481

`A302150(eq[11, A066657(n)])`
-/

namespace A302155.P12045109039484382481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302155.P12045109039484382481

/-! ## A302155.P8399494889338039782

`A302150(A167499(n+5)+2)`
-/

namespace A302155.P8399494889338039782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (A167499 (n + 5) + 2).toNat

end

end A302155.P8399494889338039782

/-! ## A302155.P2983877930632186374

`A302150(eq[8, A131818(n+1)])`
-/

namespace A302155.P2983877930632186374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302155.P2983877930632186374

/-!
# A302156: a(n) = Product_{k=1..n} prime(k+1)^(n-k+1).

The programs for A302156, the canonical program `A302156.P3507929015073044205` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302156 has offset 0).

The definition of A302156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302156.P3507929015073044205

`A002110(n+1)*a(n-1)/2` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A302156

/-- `A002110(n+1)*a(n-1)/2` -/
def P3507929015073044205.Spec : Prop :=
  ∀ n, P3507929015073044205.a n = (A302156 n : ℚ)

end A302156

/-! ## A302156.P6246172939635370441

`∏[∏[A138980(n)]]`
-/

namespace A302156.P6246172939635370441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302156.P6246172939635370441

namespace A302156

/-- `∏[∏[A138980(n)]]` -/
def P6246172939635370441.Spec : Prop :=
  ∀ n, P6246172939635370441.a n = A302156 n

end A302156

/-! ## A302156.P16523437822729483602

`∏[A070826(n+1)]`
-/

namespace A302156.P16523437822729483602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302156.P16523437822729483602

namespace A302156

/-- `∏[A070826(n+1)]` -/
def P16523437822729483602.Spec : Prop :=
  ∀ n, P16523437822729483602.a n = A302156 n

end A302156

/-! ## A302156.P13010736103273792230

`A384003(2^(n+1)-2)`
-/

namespace A302156.P13010736103273792230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384003 (2 ^ (n + 1) - 2)

end

end A302156.P13010736103273792230

namespace A302156

/-- `A384003(2^(n+1)-2)` -/
def P13010736103273792230.Spec : Prop :=
  ∀ n, P13010736103273792230.a n = A302156 n

end A302156

/-! ## A302156.P5384231208363576696

`∏[∏[A000040(n+1)]/2]`
-/

namespace A302156.P5384231208363576696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302156.P5384231208363576696

namespace A302156

/-- `∏[∏[A000040(n+1)]/2]` -/
def P5384231208363576696.Spec : Prop :=
  ∀ n, P5384231208363576696.a n = (A302156 n : ℚ)

end A302156

/-!
# A302157: Number of n X n 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302157, there is no canonical definition to state claims against.
-/

/-! ## A302157.P7199964578011941063

`A302163(∑[4*n]+1)`
-/

namespace A302157.P7199964578011941063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302157.P7199964578011941063

/-! ## A302157.P10840489516595577609

`A302163(A001844(n))+char[19]`
-/

namespace A302157.P10840489516595577609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302157.P10840489516595577609

/-! ## A302157.P11093219643998185581

`record[A003982(n)*A302163(n+1)]`
-/

namespace A302157.P11093219643998185581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302157.P11093219643998185581

/-! ## A302157.P18387241829122274409

`A007318(∑[n])*A302163(A001844(n))`
-/

namespace A302157.P18387241829122274409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A302163 (A001844 n).toNat

end

end A302157.P18387241829122274409

/-! ## A302157.P16345356752682399983

`A302163(A001844(n))%A193684(n+4)`
-/

namespace A302157.P16345356752682399983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302163 (A001844 n).toNat) (A193684 (n + 4))

end

end A302157.P16345356752682399983

/-!
# A302158: Number of nX3 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302158, there is no canonical definition to state claims against.
-/

/-! ## A302158.P7604602525083776690

`A302163(∑[n+3]+1)`
-/

namespace A302158.P7604602525083776690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302158.P7604602525083776690

/-! ## A302158.P6699113929869909559

`or(1, A302163(A034856(n+2)))`
-/

namespace A302158.P6699113929869909559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302163 (A034856 (n + 2)).toNat)

end

end A302158.P6699113929869909559

/-! ## A302158.P5580116659254699006

`or(1, A302163(A052905(n)+3))`
-/

namespace A302158.P5580116659254699006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302163 (A052905 n + 3).toNat)

end

end A302158.P5580116659254699006

/-! ## A302158.P8824621710053343023

`or(1, A302163(A000124(n+3)-3))`
-/

namespace A302158.P8824621710053343023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302163 (A000124 (n + 3) - 3).toNat)

end

end A302158.P8824621710053343023

/-! ## A302158.P11349690198973381204

`A007318(C(n, 2))*A302163(A034856(n+2))`
-/

namespace A302158.P11349690198973381204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A302163 (A034856 (n + 2)).toNat

end

end A302158.P11349690198973381204

/-!
# A302159: Number of nX4 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302159, there is no canonical definition to state claims against.
-/

/-! ## A302159.P9002828954678935669

`A302163(∑[n+4]+3)`
-/

namespace A302159.P9002828954678935669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302159.P9002828954678935669

/-! ## A302159.P13460124201262591283

`A302163(A055998(n+2))+A000045(n)%-1`
-/

namespace A302159.P13460124201262591283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A055998 (n + 2)).toNat + Int.tmod (A000045 n) (-1)

end

end A302159.P13460124201262591283

/-! ## A302159.P15239049871106706829

`A000041(C(2, n+2))*A302163(A055998(n+2))`
-/

namespace A302159.P15239049871106706829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A302163 (A055998 (n + 2)).toNat

end

end A302159.P15239049871106706829

/-! ## A302159.P9231019172785360362

`A000108(C(2, 2*n))*A302163(A055998(n+2))`
-/

namespace A302159.P9231019172785360362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * A302163 (A055998 (n + 2)).toNat

end

end A302159.P9231019172785360362

/-!
# A302160: Number of nX5 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302160, there is no canonical definition to state claims against.
-/

/-! ## A302160.P1088616960644831793

`A302163(∑[n+5]+6)`
-/

namespace A302160.P1088616960644831793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302160.P1088616960644831793

/-! ## A302160.P9713266275887052749

`or(char[1], A302163(A046691(n+3)))`
-/

namespace A302160.P9713266275887052749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302163 (A046691 (n + 3)).toNat)

end

end A302160.P9713266275887052749

/-! ## A302160.P1277967922983121536

`A007318(C(2, n))*A302163(A046691(n+3))`
-/

namespace A302160.P1277967922983121536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302163 (A046691 (n + 3)).toNat

end

end A302160.P1277967922983121536

/-! ## A302160.P6173880906163271819

`A000108(C(n, n²))*A302163(A046691(n+3))`
-/

namespace A302160.P6173880906163271819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A302163 (A046691 (n + 3)).toNat

end

end A302160.P6173880906163271819

/-! ## A302160.P11256331170683647882

`A007318(and(2, n-2))*A302163(A046691(n+3))`
-/

namespace A302160.P11256331170683647882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A302163 (A046691 (n + 3)).toNat

end

end A302160.P11256331170683647882

/-!
# A302161: Number of nX6 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302161, there is no canonical definition to state claims against.
-/

/-! ## A302161.P5271009336668336244

`A302163(A052905(n+3))`
-/

namespace A302161.P5271009336668336244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A052905 (n + 3)).toNat

end

end A302161.P5271009336668336244

/-! ## A302161.P7656783717270820872

`A302163(A302537(n)+15)`
-/

namespace A302161.P7656783717270820872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A302537 n + 15).toNat

end

end A302161.P7656783717270820872

/-! ## A302161.P9134101136784995551

`A302163(A056119(n)+16)`
-/

namespace A302161.P9134101136784995551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A056119 n + 16).toNat

end

end A302161.P9134101136784995551

/-! ## A302161.P18198304142237648164

`A302163(eq[3, A219347(n)])`
-/

namespace A302161.P18198304142237648164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302161.P18198304142237648164

/-! ## A302161.P3852424897128563988

`A302163(eq[5, A193592(n)])`
-/

namespace A302161.P3852424897128563988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302161.P3852424897128563988

/-!
# A302162: Number of nX7 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302162, there is no canonical definition to state claims against.
-/

/-! ## A302162.P15174974753161758066

`A302163(A055999(n+4))`
-/

namespace A302162.P15174974753161758066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A055999 (n + 4)).toNat

end

end A302162.P15174974753161758066

/-! ## A302162.P6571468818424471335

`A302163(A056121(n)+22)`
-/

namespace A302162.P6571468818424471335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A056121 n + 22).toNat

end

end A302162.P6571468818424471335

/-! ## A302162.P1108477582224565515

`A302163(eq[4, A219347(n)])`
-/

namespace A302162.P1108477582224565515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302162.P1108477582224565515

/-! ## A302162.P8256090807922963966

`A302163(eq[6, A193592(n)])`
-/

namespace A302162.P8256090807922963966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302162.P8256090807922963966

/-! ## A302162.P14736796924024820079

`A302163(Δ[A023551(n+2)])`
-/

namespace A302162.P14736796924024820079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (f1 (n + 1) - f1 n).toNat

end

end A302162.P14736796924024820079

/-!
# A302163: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302163, there is no canonical definition to state claims against.
-/

/-! ## A302163.P11297796376607731006

`A302635(n+1)-A276167(A331278(n))`
-/

namespace A302163.P11297796376607731006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (n + 1) - A276167 (A331278 n).toNat

end

end A302163.P11297796376607731006

/-! ## A302163.P13052024116870972788

`A302635(n+1)-A186034(A022167(n))`
-/

namespace A302163.P13052024116870972788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (n + 1) - A186034 (A022167 n).toNat

end

end A302163.P13052024116870972788

/-! ## A302163.P7984339496754369572

`A302635(n+1)-A124763(A099594(n))`
-/

namespace A302163.P7984339496754369572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (n + 1) - A124763 (A099594 n).toNat

end

end A302163.P7984339496754369572

/-! ## A302163.P12981270892968049328

`A303197(n+1)-A014374(A099597(n))`
-/

namespace A302163.P12981270892968049328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (n + 1) - A014374 (A099597 n).toNat

end

end A302163.P12981270892968049328

/-! ## A302163.P10543707995588931954

`A302635(n+1)-A014374(A318045(n+1))`
-/

namespace A302163.P10543707995588931954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (n + 1) - A014374 (A318045 (n + 1)).toNat

end

end A302163.P10543707995588931954

/-!
# A302164: Number of 2Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302164, the canonical program `A302164.P16900386444525589440` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302164 has offset 1).

The definition of A302164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302164.P16900386444525589440

`a(n-1)+16*a(n-4)-8*a(n-5)` with `a(0)=2, a(1)=3, a(2)=9, a(3)=17, a(4)=25, a(5)=65`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302164

/-- `a(n-1)+16*a(n-4)-8*a(n-5)` -/
def P16900386444525589440.Spec : Prop :=
  ∀ n, P16900386444525589440.a n = A302164 (n + 1)

theorem P16900386444525589440.correct : P16900386444525589440.Spec := by
  intro n
  simp only [A302164, Nat.add_sub_cancel]

end A302164

/-! ## A302164.P7526536198626182877

`A302163(∑[n+1]+2)`
-/

namespace A302164.P7526536198626182877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302164.P7526536198626182877

namespace A302164

/-- `A302163(∑[n+1]+2)` -/
def P7526536198626182877.Spec : Prop :=
  ∀ n, P7526536198626182877.a n = A302164 (n + 1)

end A302164

/-! ## A302164.P6415279612499758894

`and(-1, A302163(A255128(2*(n+2))))`
-/

namespace A302164.P6415279612499758894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A302163 (A255128 (2 * (n + 2))).toNat)

end

end A302164.P6415279612499758894

namespace A302164

/-- `and(-1, A302163(A255128(2*(n+2))))` -/
def P6415279612499758894.Spec : Prop :=
  ∀ n, P6415279612499758894.a n = A302164 (n + 1)

end A302164

/-! ## A302164.P12333028545176454581

`and(-5, A302163(A000217(n+1)+2))`
-/

namespace A302164.P12333028545176454581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A302163 (A000217 (n + 1) + 2).toNat)

end

end A302164.P12333028545176454581

namespace A302164

/-- `and(-5, A302163(A000217(n+1)+2))` -/
def P12333028545176454581.Spec : Prop :=
  ∀ n, P12333028545176454581.a n = A302164 (n + 1)

end A302164

/-! ## A302164.P13099562978448485447

`or(A090173(n), A302163(A255128(2*(n+2))))`
-/

namespace A302164.P13099562978448485447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090173 n) (A302163 (A255128 (2 * (n + 2))).toNat)

end

end A302164.P13099562978448485447

namespace A302164

/-- `or(A090173(n), A302163(A255128(2*(n+2))))` -/
def P13099562978448485447.Spec : Prop :=
  ∀ n, P13099562978448485447.a n = A302164 (n + 1)

end A302164

/-!
# A302165: Number of 3 X n 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302165, the canonical program `A302165.P3823941962233415973` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302165 has offset 1).

The definition of A302165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302165.P3823941962233415973

`a(n-1)+a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=4, a(1)=6, a(2)=7, a(3)=12, a(4)=20, a(5)=34`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A302165

/-- `a(n-1)+a(n-2)-a(n-3)+2*a(n-4)` -/
def P3823941962233415973.Spec : Prop :=
  ∀ n, P3823941962233415973.a n = A302165 (n + 1)

theorem P3823941962233415973.correct : P3823941962233415973.Spec := by
  intro n
  simp only [A302165, Nat.add_sub_cancel]

end A302165

/-! ## A302165.P12039794595859726420

`A302163(∑[n+2]+4)`
-/

namespace A302165.P12039794595859726420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302165.P12039794595859726420

namespace A302165

/-- `A302163(∑[n+2]+4)` -/
def P12039794595859726420.Spec : Prop :=
  ∀ n, P12039794595859726420.a n = A302165 (n + 1)

end A302165

/-! ## A302165.P13269864218904317084

`or(char[2], A302163(A167614(n+1)))`
-/

namespace A302165.P13269864218904317084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302163 (A167614 (n + 1)).toNat)

end

end A302165.P13269864218904317084

namespace A302165

/-- `or(char[2], A302163(A167614(n+1)))` -/
def P13269864218904317084.Spec : Prop :=
  ∀ n, P13269864218904317084.a n = A302165 (n + 1)

end A302165

/-! ## A302165.P1074647127763307600

`A302163(A167614(n+1))%A020714(n)`
-/

namespace A302165.P1074647127763307600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302163 (A167614 (n + 1)).toNat) (A020714 n)

end

end A302165.P1074647127763307600

namespace A302165

/-- `A302163(A167614(n+1))%A020714(n)` -/
def P1074647127763307600.Spec : Prop :=
  ∀ n, P1074647127763307600.a n = A302165 (n + 1)

end A302165

/-! ## A302165.P14659553471814128000

`A007318(C(2, n))*A302163(A167614(n+1))`
-/

namespace A302165.P14659553471814128000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302163 (A167614 (n + 1)).toNat

end

end A302165.P14659553471814128000

namespace A302165

/-- `A007318(C(2, n))*A302163(A167614(n+1))` -/
def P14659553471814128000.Spec : Prop :=
  ∀ n, P14659553471814128000.a n = A302165 (n + 1)

end A302165

/-!
# A302166: Number of 4Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302166, there is no canonical definition to state claims against.
-/

/-! ## A302166.P10385656785857179132

`A302163(∑[n+3]+7)`
-/

namespace A302166.P10385656785857179132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302166.P10385656785857179132

/-! ## A302166.P4595237064558632727

`A302163(Δ[A008778(n)]+6)+char[40]`
-/

namespace A302166.P4595237064558632727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302166.P4595237064558632727

/-! ## A302166.P3141999618925039636

`A007318(C(2, n))*A302163(A055998(n+1)+7)`
-/

namespace A302166.P3141999618925039636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302163 (A055998 (n + 1) + 7).toNat

end

end A302166.P3141999618925039636

/-! ## A302166.P12821302680402949161

`A014963(52*(n+1))*A302163(Δ[A008778(n)]+6)`
-/

namespace A302166.P12821302680402949161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (52 * (n + 1)) * A302163 (f1 (n + 1) - f1 n + 6).toNat

end

end A302166.P12821302680402949161

/-! ## A302166.P18356615297848699379

`A302163(A055998(n+1)+7)/A000041(C(2, n+2))`
-/

namespace A302166.P18356615297848699379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302163 (A055998 (n + 1) + 7).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A302166.P18356615297848699379

/-!
# A302167: Number of 5Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302167, there is no canonical definition to state claims against.
-/

/-! ## A302167.P13576883536887827676

`A302163(A167499(n+3))`
-/

namespace A302167.P13576883536887827676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A167499 (n + 3)).toNat

end

end A302167.P13576883536887827676

/-! ## A302167.P3402853467407737674

`A302163(A155212(n)+13)`
-/

namespace A302167.P3402853467407737674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A155212 n + 13).toNat

end

end A302167.P3402853467407737674

/-! ## A302167.P12422037756633200880

`A302163(A056000(n)+15)`
-/

namespace A302167.P12422037756633200880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A056000 n + 15).toNat

end

end A302167.P12422037756633200880

/-! ## A302167.P4463706557275250137

`A302163(A166136(n+3)-1)`
-/

namespace A302167.P4463706557275250137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A166136 (n + 3) - 1).toNat

end

end A302167.P4463706557275250137

/-!
# A302168: Number of 6Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302168, there is no canonical definition to state claims against.
-/

/-! ## A302168.P7547976730764285938

`A302163(∑[n+5]+16)`
-/

namespace A302168.P7547976730764285938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A302168.P7547976730764285938

/-! ## A302168.P11793109839271265048

`A302163(A167499(n+4)+1)+A000035(2*n)`
-/

namespace A302168.P11793109839271265048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A167499 (n + 4) + 1).toNat + A000035 (2 * n)

end

end A302168.P11793109839271265048

/-! ## A302168.P9237203597225961901

`A033999(2*n)*A302163(A167499(n+4)+1)`
-/

namespace A302168.P9237203597225961901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A302163 (A167499 (n + 4) + 1).toNat

end

end A302168.P9237203597225961901

/-! ## A302168.P6888802142392387825

`A302163(A167499(n+4)+1)%A302169(n+3)`
-/

namespace A302168.P6888802142392387825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302163 (A167499 (n + 4) + 1).toNat) (A302169 (n + 3))

end

end A302168.P6888802142392387825

/-! ## A302168.P10812275614988346145

`A302163(A167499(n+4)+1)+A000038(2*(n+1))`
-/

namespace A302168.P10812275614988346145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A167499 (n + 4) + 1).toNat + A000038 (2 * (n + 1))

end

end A302168.P10812275614988346145

/-!
# A302169: Number of 7Xn 0..1 arrays with every element equal to 0, 1 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302169, there is no canonical definition to state claims against.
-/

/-! ## A302169.P1181700258924790345

`A302163(A302537(n)+27)`
-/

namespace A302169.P1181700258924790345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A302537 n + 27).toNat

end

end A302169.P1181700258924790345

/-! ## A302169.P11158463818830413596

`A302163(A056119(n)+28)`
-/

namespace A302169.P11158463818830413596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A056119 n + 28).toNat

end

end A302169.P11158463818830413596

/-! ## A302169.P7646224164419970957

`A302163(eq[11, A066657(n)])`
-/

namespace A302169.P7646224164419970957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302169.P7646224164419970957

/-! ## A302169.P15642946555851909816

`A302163(A166136(n+5)+1)`
-/

namespace A302169.P15642946555851909816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A166136 (n + 5) + 1).toNat

end

end A302169.P15642946555851909816

/-! ## A302169.P14200304798573579021

`A302163(A167499(n+5)+2)`
-/

namespace A302169.P14200304798573579021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302163 (A167499 (n + 5) + 2).toNat

end

end A302169.P14200304798573579021

/-!
# A302170: Irregular triangle T(n,k) read by rows: first row is 1, n-th row (n > 1) lists distinct prime factors of n in decreasing order.

The programs for A302170, the canonical program `A302170.P8300830872753223611` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302170 has offset 1).

The definition of A302170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302170.P10117880060825299047

`p?[A051537(n+1)+A000007(n)]-A000007(n)`
-/

namespace A302170.P10117880060825299047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A302170.P10117880060825299047

namespace A302170

/-- `p?[A051537(n+1)+A000007(n)]-A000007(n)` -/
def P10117880060825299047.Spec : Prop :=
  ∀ n, P10117880060825299047.a n = A302170 (n + 1)

end A302170

/-! ## A302170.P8300830872753223611

`p?[A126988(n+1)+A000007(n)]-A000007(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A302170

/-- `p?[A126988(n+1)+A000007(n)]-A000007(n)` -/
def P8300830872753223611.Spec : Prop :=
  ∀ n, P8300830872753223611.a n = A302170 (n + 1)

theorem P8300830872753223611.correct : P8300830872753223611.Spec := by
  intro n
  simp only [A302170, Nat.add_sub_cancel]

end A302170

/-! ## A302170.P316585514384830783

`p?[A126988(n+1)+A000007(n)]/A054977(n)`
-/

namespace A302170.P316585514384830783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A000007 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A054977 n : ℚ)

end

end A302170.P316585514384830783

namespace A302170

/-- `p?[A126988(n+1)+A000007(n)]/A054977(n)` -/
def P316585514384830783.Spec : Prop :=
  ∀ n, P316585514384830783.a n = (A302170 (n + 1) : ℚ)

end A302170

/-! ## A302170.P6913288044208726236

`p?[A126988(n+1)+A000007(n)]^(A000040(n+1)%2)`
-/

namespace A302170.P6913288044208726236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A000007 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A302170.P6913288044208726236

namespace A302170

/-- `p?[A126988(n+1)+A000007(n)]^(A000040(n+1)%2)` -/
def P6913288044208726236.Spec : Prop :=
  ∀ n, P6913288044208726236.a n = (A302170 (n + 1) : ℚ)

end A302170

/-! ## A302170.P15834833385244008645

`A082287(n+1)/A355079(n+1)`
-/

namespace A302170.P15834833385244008645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082287 (n + 1) : ℚ) / (A355079 (n + 1) : ℚ)

end

end A302170.P15834833385244008645

namespace A302170

/-- `A082287(n+1)/A355079(n+1)` -/
def P15834833385244008645.Spec : Prop :=
  ∀ n, P15834833385244008645.a n = (A302170 (n + 1) : ℚ)

end A302170

/-!
# A302171: G.f. A(x) satisfies: A(x) = Product_{k>=1} 1/(1 - x^k*A(x))^k.

The programs for A302171, there is no canonical definition to state claims against.
-/

/-! ## A302171.P11474791671386019990

`A149591(n)-A001221(A218679(n))`
-/

namespace A302171.P11474791671386019990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149591 n - A001221 (A218679 n).toNat

end

end A302171.P11474791671386019990

/-! ## A302171.P4285867010877557111

`A291751(A006319(n))%A061978(3*n+2)`
-/

namespace A302171.P4285867010877557111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291751 (A006319 n).toNat) (A061978 (3 * n + 2))

end

end A302171.P4285867010877557111

/-!
# A302172: Distance from sigma(n) to nearest multiple of phi(n).

The programs for A302172, there is no canonical definition to state claims against.
-/

/-! ## A302172.P12779540181376592029

`A324121(n+1)%A335434(A008574(n))`
-/

namespace A302172.P12779540181376592029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324121 (n + 1)) (A335434 (A008574 n).toNat)

end

end A302172.P12779540181376592029

/-! ## A302172.P16604267328781635833

`A009223(n+1)%A127835(n+1)`
-/

namespace A302172.P16604267328781635833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009223 (n + 1)) (A127835 (n + 1))

end

end A302172.P16604267328781635833

/-! ## A302172.P14035208918766257739

`A077099(n+1)%A166597(A026790(n))`
-/

namespace A302172.P14035208918766257739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077099 (n + 1)) (A166597 (A026790 n).toNat)

end

end A302172.P14035208918766257739

/-! ## A302172.P8668621086928694620

`and(A001227(n+1), A011772(A204284(n+1)))`
-/

namespace A302172.P8668621086928694620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001227 (n + 1)) (A011772 (A204284 (n + 1)).toNat)

end

end A302172.P8668621086928694620

/-! ## A302172.P6342017181758782968

`and(A009223(n+1), A011772(A204284(n+1)))`
-/

namespace A302172.P6342017181758782968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009223 (n + 1)) (A011772 (A204284 (n + 1)).toNat)

end

end A302172.P6342017181758782968

/-!
# A302173: Lexicographically first sequence of distinct terms such that any set of three successive digits can be reordered as {d, d+1, d+2}, d being the smallest of the three digits.

The programs for A302173, there is no canonical definition to state claims against.
-/

/-! ## A302173.P10058075991471397970

`A302504(lt[A302479(n+5), A112110(n+1)])`
-/

namespace A302173.P10058075991471397970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302479 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302504 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302173.P10058075991471397970

/-! ## A302173.P434367601755513271

`A302502(lt[A302502(n+1), A329452(3*n)])`
-/

namespace A302173.P434367601755513271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302502 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302173.P434367601755513271

/-! ## A302173.P4413571911247507820

`or(n, A362046(C(n, 9)+1))`
-/

namespace A302173.P4413571911247507820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A362046 (Nat.choose n 9 + 1))

end

end A302173.P4413571911247507820

/-! ## A302173.P17001584639662902857

`A259046(a(n-1)+a(n-dr(n))+1)` with `a(0)=0`
-/

namespace A302173.P17001584639662902857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A259046 (a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ)) + 1).toNat

end

end A302173.P17001584639662902857

/-! ## A302173.P17924188338691417282

`A259046(a(n-1)+10^floor((n-1)/9))` with `a(0)=0`
-/

namespace A302173.P17924188338691417282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A259046 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ))).toNat

end

end A302173.P17924188338691417282

/-!
# A302175: a(n) = [2^A006666(n)/3^A006667(n)], where [x] = floor(x).

The programs for A302175, there is no canonical definition to state claims against.
-/

/-! ## A302175.P2314449567100729552

`A225089(n+1)+1+n`
-/

namespace A302175.P2314449567100729552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225089 (n + 1) + 1 + (n : ℤ)

end

end A302175.P2314449567100729552

/-! ## A302175.P592979342741472007

`floor(2^A006666(n+1)/3^A006667(n+1))`
-/

namespace A302175.P592979342741472007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A006666 (n + 1) : ℤ) / (3 : ℚ) ^ (A006667 (n + 1) : ℤ)⌋

end

end A302175.P592979342741472007

/-! ## A302175.P7137386993255145688

`A191250(A061447(n+1)*A325365(n+2))+n+1`
-/

namespace A302175.P7137386993255145688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (A061447 (n + 1) * A325365 (n + 2)).toNat + (n + 1 : ℤ)

end

end A302175.P7137386993255145688

/-! ## A302175.P2874015916731243400

`A284258((A236924(n)+A000079(n))/2)+A065033(2*n+1)`
-/

namespace A302175.P2874015916731243400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (SequenceMachineLib.roundAway ((A236924 n + A000079 n : ℚ) / 2)).toNat + A065033 (2 * n + 1)

end

end A302175.P2874015916731243400

/-!
# A302177: Partial sums of A302176.

The programs for A302177, there is no canonical definition to state claims against.
-/

/-! ## A302177.P5810612382672439405

`∑[A302176(n)]`
-/

namespace A302177.P5810612382672439405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302177.P5810612382672439405

/-! ## A302177.P7275027253667130880

`A302176(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A302177.P7275027253667130880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302176 n + a (A023443 n).toNat

end

end A302177.P7275027253667130880

/-! ## A302177.P5717095181786695237

`a(n-1)+A302176(n)%A067713(n)` with `a(0)=1`
-/

namespace A302177.P5717095181786695237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A302176 n) (A067713 n)

end

end A302177.P5717095181786695237

/-! ## A302177.P4182553226326722971

`A302176(n%A302176(n))+a(n-1)` with `a(0)=1`
-/

namespace A302177.P4182553226326722971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302176 (Int.tmod (n : ℤ) (A302176 n)).toNat + a (n - 1)

end

end A302177.P4182553226326722971

/-!
# A302178: The number of 3D walks of semilength n in a quadrant returning to the origin.

The programs for A302178, there is no canonical definition to state claims against.
-/

/-! ## A302178.P10089175458353946048

`(n+3)/3*A064037(n)`
-/

namespace A302178.P10089175458353946048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A064037 n : ℚ)

end

end A302178.P10089175458353946048

/-! ## A302178.P1894889277649754548

`A302179(2*n)`
-/

namespace A302178.P1894889277649754548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302179 (2 * n)

end

end A302178.P1894889277649754548

/-! ## A302178.P16964013276126174458

`record[A302179(A062157(n)+n)]`
-/

namespace A302178.P16964013276126174458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302179 (A062157 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302178.P16964013276126174458

/-! ## A302178.P13558366354561820138

`record[A302179(n)/A033999(n)]`
-/

namespace A302178.P13558366354561820138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302179 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302178.P13558366354561820138

/-! ## A302178.P12990451637488319544

`record[or(A210628(n), A302179(n))]`
-/

namespace A302178.P12990451637488319544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210628 n) (A302179 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302178.P12990451637488319544

/-!
# A302179: The number of 3D walks of length n in an octant returning to axis of origin.

The programs for A302179, there is no canonical definition to state claims against.
-/

/-! ## A302179.P2251299321503104070

`A149166(n)-A090225(A176627(n))`
-/

namespace A302179.P2251299321503104070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149166 n - A090225 (A176627 n).toNat

end

end A302179.P2251299321503104070

/-! ## A302179.P1667889378683796833

`A149166(n)-A218876(A341252(2*n+1))`
-/

namespace A302179.P1667889378683796833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149166 n - A218876 (A341252 (2 * n + 1)).toNat

end

end A302179.P1667889378683796833

/-!
# A302180: Number of 3D walks of type aad.

The programs for A302180, there is no canonical definition to state claims against.
-/

/-! ## A302180.P11106526543014159797

`A208643(A369688(n))`
-/

namespace A302180.P11106526543014159797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208643 (A369688 n).toNat

end

end A302180.P11106526543014159797

/-! ## A302180.P14412084431326233053

`A294333(A000138(n))+A014334(n)`
-/

namespace A302180.P14412084431326233053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (A000138 n).toNat + A014334 n

end

end A302180.P14412084431326233053

/-! ## A302180.P13476472020483441043

`or(A001222(A030806(n+1)), A045610(n))`
-/

namespace A302180.P13476472020483441043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A030806 (n + 1)).toNat) (A045610 n)

end

end A302180.P13476472020483441043

/-! ## A302180.P16833308521012149076

`or(A001221(A220711(n+1)), A045610(n))`
-/

namespace A302180.P16833308521012149076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A220711 (n + 1)).toNat) (A045610 n)

end

end A302180.P16833308521012149076

/-!
# A302181: Number of 3D walks of type abb.

The programs for A302181, there is no canonical definition to state claims against.
-/

/-! ## A302181.P6916867248026288814

`A135390(n)/(2*n+1)`
-/

namespace A302181.P6916867248026288814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135390 n : ℚ) / (2 * n + 1 : ℚ)

end

end A302181.P6916867248026288814

/-! ## A302181.P10935344850713024801

`A000108(n)*A087457(n+1)`
-/

namespace A302181.P10935344850713024801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A087457 (n + 1)

end

end A302181.P10935344850713024801

/-! ## A302181.P16426299495597955906

`abs(A087457(n+1)*A168491(n))`
-/

namespace A302181.P16426299495597955906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087457 (n + 1) * A168491 n|

end

end A302181.P16426299495597955906

/-! ## A302181.P2242959446385174554

`Δ[A155587(n)]*A087457(n+1)`
-/

namespace A302181.P2242959446385174554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087457 (n + 1)

end

end A302181.P2242959446385174554

/-! ## A302181.P14984900279059924058

`A002893(n+1)/3*A000108(n)`
-/

namespace A302181.P14984900279059924058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002893 (n + 1) : ℚ) / 3 * (A000108 n : ℚ)

end

end A302181.P14984900279059924058

/-!
# A302182: Number of 3D walks of type abc.

The programs for A302182, there is no canonical definition to state claims against.
-/

/-! ## A302182.P3535453287032499218

`A063677(A149569(n))`
-/

namespace A302182.P3535453287032499218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A149569 n).toNat

end

end A302182.P3535453287032499218

/-! ## A302182.P1227646962535652872

`A171727(A356569(n))`
-/

namespace A302182.P1227646962535652872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (A356569 n).toNat

end

end A302182.P1227646962535652872

/-!
# A302183: Number of 3D n-step walks of type abd.

The programs for A302183, there is no canonical definition to state claims against.
-/

/-! ## A302183.P316680128731654622

`Δ[A201805(n+1)/4]/(n+1)`
-/

namespace A302183.P316680128731654622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201805 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / (n + 1 : ℚ)

end

end A302183.P316680128731654622

/-! ## A302183.P2379332588724082342

`A025235(n)+A002264(A084603(n)-A025237(n))`
-/

namespace A302183.P2379332588724082342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025235 n + A002264 (A084603 n - A025237 n).toNat

end

end A302183.P2379332588724082342

/-! ## A302183.P8980546315962764140

`A096457(A149202(n))`
-/

namespace A302183.P8980546315962764140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A149202 n).toNat

end

end A302183.P8980546315962764140

/-!
# A302184: Number of 3D walks of type abe.

The programs for A302184, there is no canonical definition to state claims against.
-/

/-! ## A302184.P3826845899432362691

`A138999(A151094(n+1))`
-/

namespace A302184.P3826845899432362691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A151094 (n + 1)).toNat

end

end A302184.P3826845899432362691

/-!
# A302185: Number of 3D n-step walks of type acc.

The programs for A302185, there is no canonical definition to state claims against.
-/

/-! ## A302185.P15409419631728823370

`A214701(∑[A149735(n)])`
-/

namespace A302185.P15409419631728823370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302185.P15409419631728823370

/-! ## A302185.P5204037994315544600

`A214701(∑[A149736(n)])`
-/

namespace A302185.P5204037994315544600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302185.P5204037994315544600

/-!
# A302186: Number of 3D walks of type ace.

The programs for A302186, there is no canonical definition to state claims against.
-/

/-! ## A302186.P737623531747532779

`A080907(∑[A289719(n)])`
-/

namespace A302186.P737623531747532779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302186.P737623531747532779

/-! ## A302186.P18142874507601985282

`A306904(A150634(n+1))`
-/

namespace A302186.P18142874507601985282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306904 (A150634 (n + 1)).toNat

end

end A302186.P18142874507601985282

/-!
# A302187: Number of 3D walks of type bcc.

The programs for A302187, there is no canonical definition to state claims against.
-/

/-! ## A302187.P15877090214740688156

`A110654(∑[A105343(n)]*A004251(n))`
-/

namespace A302187.P15877090214740688156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((∑ j ∈ Finset.range (n + 1), f1 j) * A004251 n).toNat

end

end A302187.P15877090214740688156

/-! ## A302187.P14326321015148928578

`A129400(n)-A085856(A074018(n+1))`
-/

namespace A302187.P14326321015148928578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129400 n - A085856 (A074018 (n + 1)).toNat

end

end A302187.P14326321015148928578

/-!
# A302188: Number of 3D walks of type bce.

The programs for A302188, there is no canonical definition to state claims against.
-/

/-! ## A302188.P5361644959718415162

`A083273(3*(n+1))+A057354(5^n)`
-/

namespace A302188.P5361644959718415162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083273 (3 * (n + 1)) + A057354 (5 ^ n)

end

end A302188.P5361644959718415162

/-! ## A302188.P4668815840343209030

`A329362(n)+A151888(A047849(n))`
-/

namespace A302188.P4668815840343209030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 n + A151888 (A047849 n).toNat

end

end A302188.P4668815840343209030

/-!
# A302190: Hurwitz logarithm of natural numbers 1,2,3,4,5,...

The programs for A302190, there is no canonical definition to state claims against.
-/

/-! ## A302190.P11842121096035127637

`(1-n)*a(n-1)` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A302190.P11842121096035127637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1] fun n a =>
  (1 - (n : ℤ)) * a (n - 1)

end

end A302190.P11842121096035127637

/-! ## A302190.P7818668606399298488

`a(n-1)/(1-n)^(-1)` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A302190.P7818668606399298488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, -1] fun n a =>
  a (n - 1) / (1 - (n : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A302190.P7818668606399298488

/-! ## A302190.P4692852909973134157

`a(n-1)²/a(n-2)-a(n-1)` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=2`
-/

namespace A302190.P4692852909973134157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, -1, 2] fun n a =>
  a (n - 1) ^ 2 / a (n - 2) - a (n - 1)

end

end A302190.P4692852909973134157

/-! ## A302190.P11764471254227521537

`A048994(A000124(n))+char[1]`
-/

namespace A302190.P11764471254227521537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302190.P11764471254227521537

/-! ## A302190.P7052984528683866691

`A019590(n+1)+∏[1-A233583(n+1)]`
-/

namespace A302190.P7052984528683866691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302190.P7052984528683866691

/-!
# A302192: Denominators of Hurwitz inverse of primes [2,3,5,7,...].

The programs for A302192, there is no canonical definition to state claims against.
-/

/-! ## A302192.P7874003594843296597

`2^A302193(n)`
-/

namespace A302192.P7874003594843296597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A302193 n : ℤ)

end

end A302192.P7874003594843296597

/-! ## A302192.P9655348979326322333

`A000079(xor(n, xor(n, A302193(n))))`
-/

namespace A302192.P9655348979326322333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A302193 n))).toNat

end

end A302192.P9655348979326322333

/-! ## A302192.P1165787599876353892

`A000225(xor(n, xor(n, A302193(n))))+1`
-/

namespace A302192.P1165787599876353892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A302193 n))).toNat + 1

end

end A302192.P1165787599876353892

/-! ## A302192.P17942809782232247547

`A016116(2*xor(n, xor(n, A302193(n))))`
-/

namespace A302192.P17942809782232247547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * Int.xor (n : ℤ) (Int.xor (n : ℤ) (A302193 n))).toNat

end

end A302192.P17942809782232247547

/-! ## A302192.P4252577701923894810

`A007283(xor(n, xor(n, A302193(n))))/3`
-/

namespace A302192.P4252577701923894810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A302193 n))).toNat : ℚ) / 3

end

end A302192.P4252577701923894810

/-! ## A302192.P7549262978624104271

`A005010(xor(n, xor(n, A302193(n))))/9`
-/

namespace A302192.P7549262978624104271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005010 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A302193 n))).toNat : ℚ) / 9

end

end A302192.P7549262978624104271

/-! ## A302192.P9788819415025634792

`A000079(A302193(n)+A264668(n))`
-/

namespace A302192.P9788819415025634792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A302193 n + A264668 n).toNat

end

end A302192.P9788819415025634792

/-! ## A302192.P15806015858126100511

`A000079(or(A264668(n), A302193(n)))`
-/

namespace A302192.P15806015858126100511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.lor (A264668 n) (A302193 n)).toNat

end

end A302192.P15806015858126100511

/-! ## A302192.P12002000162785097659

`A000079(A302193(n)+n)/A000079(n)`
-/

namespace A302192.P12002000162785097659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A302193 n + (n : ℤ)).toNat : ℚ) / (A000079 n : ℚ)

end

end A302192.P12002000162785097659

/-! ## A302192.P266319694383116833

`A005010(A302193(n)+n)/A005010(n)`
-/

namespace A302192.P266319694383116833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005010 (A302193 n + (n : ℤ)).toNat : ℚ) / (A005010 n : ℚ)

end

end A302192.P266319694383116833

/-!
# A302193: a(n) = log_2(A302192(n)).

The programs for A302193, there is no canonical definition to state claims against.
-/

/-! ## A302193.P9901843027622931947

`log2(A302192(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302193.P9901843027622931947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A302192 n : ℝ)

end

end A302193.P9901843027622931947

/-! ## A302193.P18414781383988684191

`A083345(A302192(n)²)`
-/

namespace A302193.P18414781383988684191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A302192 n ^ 2).toNat

end

end A302193.P18414781383988684191

/-! ## A302193.P10376182633583389836

`A293896(A302192(n)²)`
-/

namespace A302193.P10376182633583389836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (A302192 n ^ 2).toNat

end

end A302193.P10376182633583389836

/-! ## A302193.P12690334937941523329

`A000120(A302192(n)-1)`
-/

namespace A302193.P12690334937941523329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A302192 n - 1).toNat

end

end A302193.P12690334937941523329

/-! ## A302193.P1579792938446146426

`A002487(A302192(n)-1)`
-/

namespace A302193.P1579792938446146426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A302192 n - 1).toNat

end

end A302193.P1579792938446146426

/-! ## A302193.P849843541959508940

`A064918(A302192(n)+2)`
-/

namespace A302193.P849843541959508940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064918 (A302192 n + 2).toNat

end

end A302193.P849843541959508940

/-! ## A302193.P18160797457456098677

`A124770(A302192(n)-1)`
-/

namespace A302193.P18160797457456098677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A302192 n - 1).toNat

end

end A302193.P18160797457456098677

/-! ## A302193.P3582088745379822321

`A007814(3*A302192(n))`
-/

namespace A302193.P3582088745379822321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * A302192 n).toNat

end

end A302193.P3582088745379822321

/-! ## A302193.P1022053639235379710

`A000120(C(A302192(n), 2))`
-/

namespace A302193.P1022053639235379710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A302192 n).toNat 2)

end

end A302193.P1022053639235379710

/-! ## A302193.P15706034186491360227

`∑{d}[A302192(n), A001221(#)]`
-/

namespace A302193.P15706034186491360227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A302193.P15706034186491360227

/-!
# A302194: Hurwitz inverse of [1 followed by primes], [1,2,3,5,7,...].

The programs for A302194, there is no canonical definition to state claims against.
-/

/-! ## A302194.P3519735486001319761

`A354826(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A302194.P3519735486001319761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354826 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A302194.P3519735486001319761

/-! ## A302194.P3758389348604565437

`A354826(A002110(n))`
-/

namespace A302194.P3758389348604565437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354826 (A002110 n).toNat

end

end A302194.P3758389348604565437

/-!
# A302195: Hurwitz inverse of triangular numbers [1,3,6,10,15,...].

The programs for A302195, there is no canonical definition to state claims against.
-/

/-! ## A302195.P12335221484289981565

`A077921(n)*A328389(A181768(2*n+1))`
-/

namespace A302195.P12335221484289981565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n * A328389 (A181768 (2 * n + 1)).toNat

end

end A302195.P12335221484289981565

/-!
# A302196: Hurwitz logarithm of triangular numbers [1,3,6,10,15,...].

The programs for A302196, there is no canonical definition to state claims against.
-/

/-! ## A302196.P15325937357307519316

`A302190(n)+A009345(n)`
-/

namespace A302196.P15325937357307519316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302190 n + A009345 n

end

end A302196.P15325937357307519316

/-! ## A302196.P7173924774707681833

`A009345(n)+A048994(A000124(n))+char[1]`
-/

namespace A302196.P7173924774707681833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009345 n + (A048994 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A302196.P7173924774707681833

