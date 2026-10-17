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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A255500: a(n) = (p^9 + 5*p^8 + 4*p^7 - p^6 - 5*p^5 + 2*p^4)/6 where p is the n-th prime.

The programs for A255500, the canonical program `A255500.P15062980389255917047` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255500 has offset 1).

The definition of A255500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255500.P15062980389255917047

`A229740(A024620(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A255500

/-- `A229740(A024620(n+1))` -/
def P15062980389255917047.Spec : Prop :=
  ∀ n, P15062980389255917047.a n = A255500 (n + 1)

theorem P15062980389255917047.correct : P15062980389255917047.Spec := by
  intro n
  simp only [A255500, Nat.add_sub_cancel]

end A255500

/-! ## A255500.P1074537076230788677

`A255501(p?[comp[n²]])`
-/

namespace A255500.P1074537076230788677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A255500.P1074537076230788677

namespace A255500

/-- `A255501(p?[comp[n²]])` -/
def P1074537076230788677.Spec : Prop :=
  ∀ n, P1074537076230788677.a n = A255500 (n + 1)

end A255500

/-! ## A255500.P3074032012481827846

`A255501(A000040(n+1))`
-/

namespace A255500.P3074032012481827846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (A000040 (n + 1)).toNat

end

end A255500.P3074032012481827846

namespace A255500

/-- `A255501(A000040(n+1))` -/
def P3074032012481827846.Spec : Prop :=
  ∀ n, P3074032012481827846.a n = A255500 (n + 1)

end A255500

/-! ## A255500.P685933315908827577

`A255501(A008578(n+2))`
-/

namespace A255500.P685933315908827577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (A008578 (n + 2)).toNat

end

end A255500.P685933315908827577

namespace A255500

/-- `A255501(A008578(n+2))` -/
def P685933315908827577.Spec : Prop :=
  ∀ n, P685933315908827577.a n = A255500 (n + 1)

end A255500

/-! ## A255500.P14353998323810634687

`A255501(record[A006530(n+2)])`
-/

namespace A255500.P14353998323810634687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255500.P14353998323810634687

namespace A255500

/-- `A255501(record[A006530(n+2)])` -/
def P14353998323810634687.Spec : Prop :=
  ∀ n, P14353998323810634687.a n = A255500 (n + 1)

end A255500

/-! ## A255500.P17420099312186210992

`A255501(record[A014963(n+2)])`
-/

namespace A255500.P17420099312186210992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255500.P17420099312186210992

namespace A255500

/-- `A255501(record[A014963(n+2)])` -/
def P17420099312186210992.Spec : Prop :=
  ∀ n, P17420099312186210992.a n = A255500 (n + 1)

end A255500

/-! ## A255500.P8718814044721881956

`A255501(record[A020639(n+2)])`
-/

namespace A255500.P8718814044721881956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255500.P8718814044721881956

namespace A255500

/-- `A255501(record[A020639(n+2)])` -/
def P8718814044721881956.Spec : Prop :=
  ∀ n, P8718814044721881956.a n = A255500 (n + 1)

end A255500

/-!
# A255501: a(n) = (n^9 + 5*n^8 + 4*n^7 - n^6 - 5*n^5 + 2*n^4)/6.

The programs for A255501, the canonical program `A255501.P8745692229488319938` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255501 has offset 0).

The definition of A255501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255501.P8745692229488319938

`n^4*(n^5+5*n^4+4*n^3-n²-5*n+2)/6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255501

/-- `n^4*(n^5+5*n^4+4*n^3-n²-5*n+2)/6` -/
def P8745692229488319938.Spec : Prop :=
  ∀ n, P8745692229488319938.a n = (A255501 n : ℚ)

end A255501

/-!
# A255502: Number of terms in n-th order nested Lie bracket.

The programs for A255502, there is no canonical definition to state claims against.
-/

/-! ## A255502.P3106124102621111532

`A192877(n)+A145037(A014500(n))`
-/

namespace A255502.P3106124102621111532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192877 n + A145037 (A014500 n).toNat

end

end A255502.P3106124102621111532

/-! ## A255502.P3581031939949236319

`A293061(A000910(n))+A140420(n)`
-/

namespace A255502.P3581031939949236319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293061 (A000910 n).toNat + A140420 n

end

end A255502.P3581031939949236319

/-! ## A255502.P8731582932443529208

`A016727(A002605(n)*A314149(n)+1)`
-/

namespace A255502.P8731582932443529208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (A002605 n * A314149 n + 1).toNat

end

end A255502.P8731582932443529208

/-!
# A255505: 

The programs for A255505, there is no canonical definition to state claims against.
-/

/-! ## A255505.P11543905221670619109

`A358625(A122045(2*n+1)+2*n)`
-/

namespace A255505.P11543905221670619109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358625 (A122045 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A255505.P11543905221670619109

/-!
# A255506: Denominator of Bernoulli(2n)/(2n!).

The programs for A255506, there is no canonical definition to state claims against.
-/

/-! ## A255506.P16888161288437849832

`A075180(A004273(n))*A081123(A004273(n))`
-/

namespace A255506.P16888161288437849832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (A004273 n).toNat * A081123 (A004273 n).toNat

end

end A255506.P16888161288437849832

/-! ## A255506.P17653230504755329662

`A005843(A002445(n)*A232981(n))`
-/

namespace A255506.P17653230504755329662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002445 n * A232981 n).toNat

end

end A255506.P17653230504755329662

/-!
# A255507: First differences of A255437.

The programs for A255507, there is no canonical definition to state claims against.
-/

/-! ## A255507.P7333054211047964371

`Δ[A255437(n+1)]`
-/

namespace A255507.P7333054211047964371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255507.P7333054211047964371

/-! ## A255507.P2206842427887245120

`A255437(n+2)-A255437(n+1)`
-/

namespace A255507.P2206842427887245120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255437 (n + 2) - A255437 (n + 1)

end

end A255507.P2206842427887245120

/-!
# A255508: Partial sums of A255437.

The programs for A255508, there is no canonical definition to state claims against.
-/

/-! ## A255508.P3702876098539865913

`∑[A255437(n+1)]`
-/

namespace A255508.P3702876098539865913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255508.P3702876098539865913

/-! ## A255508.P13315970015316752743

`∑[A255507(n)+a(n-1)]` with `a(0)=1`
-/

namespace A255508.P13315970015316752743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A255507 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255508.P13315970015316752743

/-! ## A255508.P2336396228183561223

`∑[∑[A255507(A028310(n))]]`
-/

namespace A255508.P2336396228183561223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255508.P2336396228183561223

/-! ## A255508.P6445885903540918965

`∑[∑[A255507(A000007(n)+n)]]`
-/

namespace A255508.P6445885903540918965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255508.P6445885903540918965

/-! ## A255508.P6220751387137503678

`A255437(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A255508.P6220751387137503678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255437 (n + 1) + a (A023443 n).toNat

end

end A255508.P6220751387137503678

/-! ## A255508.P1041978813684686026

`∑[∑[A255507(A123108(2*n))]]`
-/

namespace A255508.P1041978813684686026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255507 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255508.P1041978813684686026

/-!
# A255509: a(1)=1, a(2)=2, a(3)=3; for n>=4, a(n) is the maximal prime factor P_n of a(n-2) if P_n is not already a term, otherwise a(n) is the smallest not appeared earlier positive number x such that gcd(x,a(n-2))>1, gcd(x,a(n-1))=1.

The programs for A255509, there is no canonical definition to state claims against.
-/

/-! ## A255509.P2254168426957594057

`filter[A257862(n+1), A114213(#)]`
-/

namespace A255509.P2254168426957594057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A255509.P2254168426957594057

/-! ## A255509.P129835818614110352

`filter[A257862(n+1), A267959(#)]`
-/

namespace A255509.P129835818614110352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A255509.P129835818614110352

/-! ## A255509.P1532359197998998658

`A257862(n+1)%Δ[A032748(n+1)]`
-/

namespace A255509.P1532359197998998658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257862 (n + 1)) (f1 (n + 1) - f1 n)

end

end A255509.P1532359197998998658

/-! ## A255509.P15435737970379493246

`A257862(n+1)+A000007(A007865(n))`
-/

namespace A255509.P15435737970379493246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257862 (n + 1) + A000007 (A007865 n).toNat

end

end A255509.P15435737970379493246

/-! ## A255509.P14406499018737405804

`A257862(n+1)+A000007(A025047(n))`
-/

namespace A255509.P14406499018737405804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257862 (n + 1) + A000007 (A025047 n).toNat

end

end A255509.P14406499018737405804

/-!
# A255515: 1/n! times the number of ordered pairs of permutation functions f,g on n elements where f(f(x)) = g(f(g(x))).

The programs for A255515, there is no canonical definition to state claims against.
-/

/-! ## A255515.P23391425426072223

`A239837(n)/n!`
-/

namespace A255515.P23391425426072223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239837 n : ℚ) / (Nat.factorial n : ℚ)

end

end A255515.P23391425426072223

/-! ## A255515.P12405356530028775769

`A239837(n)/A000142(n)`
-/

namespace A255515.P12405356530028775769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239837 n : ℚ) / (A000142 n : ℚ)

end

end A255515.P12405356530028775769

/-! ## A255515.P15506040343583733685

`A239837(n)/∏[A028310(n)]`
-/

namespace A255515.P15506040343583733685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239837 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A255515.P15506040343583733685

/-! ## A255515.P11065883050062604909

`A239837(n)/A008279(A000096(n))`
-/

namespace A255515.P11065883050062604909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239837 n : ℚ) / (A008279 (A000096 n).toNat : ℚ)

end

end A255515.P11065883050062604909

/-! ## A255515.P5007523499709126044

`A239837(n)/A142589(A000124(n))`
-/

namespace A255515.P5007523499709126044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239837 n : ℚ) / (A142589 (A000124 n).toNat : ℚ)

end

end A255515.P5007523499709126044

/-!
# A255516: a(n) = A239839(n)/n! where A239839(n) is the number of ordered pairs of permutation functions on n elements where f(f(f(x))) = g(f(g(x))).

The programs for A255516, there is no canonical definition to state claims against.
-/

/-! ## A255516.P17020539002543173941

`A239839(n)/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255516.P17020539002543173941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239839 n : ℚ) / (Nat.factorial n : ℚ)

end

end A255516.P17020539002543173941

/-! ## A255516.P7947392980099340751

`A239839(n)/A000142(n)`
-/

namespace A255516.P7947392980099340751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239839 n : ℚ) / (A000142 n : ℚ)

end

end A255516.P7947392980099340751

/-! ## A255516.P6963931910057919178

`A239839(n)/Δ[A003422(n)]`
-/

namespace A255516.P6963931910057919178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239839 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A255516.P6963931910057919178

/-! ## A255516.P4972770772984835883

`A239839(n)/A068106(A000096(n))`
-/

namespace A255516.P4972770772984835883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239839 n : ℚ) / (A068106 (A000096 n).toNat : ℚ)

end

end A255516.P4972770772984835883

/-!
# A255517: Number A(n,k) of rooted identity trees with n nodes and k-colored non-root nodes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A255517, there is no canonical definition to state claims against.
-/

/-! ## A255517.P15736095790521968054

`A142132(n+1)%(A000120(A288972(n)*A318757(n))+1)`
-/

namespace A255517.P15736095790521968054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142132 (n + 1)) (A000120 (A288972 n * A318757 n).toNat + 1)

end

end A255517.P15736095790521968054

/-! ## A255517.P9101637109881937868

`A355262(n)%A007947(A156914(n))`
-/

namespace A255517.P9101637109881937868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355262 n) (A007947 (A156914 n).toNat)

end

end A255517.P9101637109881937868

/-! ## A255517.P14810805575103867848

`C(A352361(n), A332292(A241416(n)))`
-/

namespace A255517.P14810805575103867848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A352361 n).toNat (A332292 (A241416 n).toNat).toNat

end

end A255517.P14810805575103867848

/-! ## A255517.P7066710784732642286

`A366531(A215847(n+5))+A145153(n)`
-/

namespace A255517.P7066710784732642286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366531 (A215847 (n + 5)).toNat + A145153 n

end

end A255517.P7066710784732642286

/-! ## A255517.P1943775236766370111

`A107808(3*(n+1))%A053263(A361290(n))`
-/

namespace A255517.P1943775236766370111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107808 (3 * (n + 1))) (A053263 (A361290 n).toNat)

end

end A255517.P1943775236766370111

/-!
# A255518: Number of rooted identity trees with n nodes and 6-colored non-root nodes.

The programs for A255518, there is no canonical definition to state claims against.
-/

/-! ## A255518.P6772918557853786250

`A255517(eq[6, A025581(n)])`
-/

namespace A255518.P6772918557853786250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255518.P6772918557853786250

/-! ## A255518.P1800296791977024352

`A255517(A056000(n+3)+3)`
-/

namespace A255518.P1800296791977024352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A056000 (n + 3) + 3).toNat

end

end A255518.P1800296791977024352

/-! ## A255518.P15244935903422350925

`A255517(A055999(n+4)-1)`
-/

namespace A255518.P15244935903422350925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055999 (n + 4) - 1).toNat

end

end A255518.P15244935903422350925

/-! ## A255518.P3940940061055456448

`A255517(eq[3, A316074(n+2)])`
-/

namespace A255518.P3940940061055456448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255518.P3940940061055456448

/-! ## A255518.P8316338985916979931

`record[A255517(abs(A046691(n)+n))]`
-/

namespace A255518.P8316338985916979931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 |A046691 n + (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255518.P8316338985916979931

/-! ## A255518.P1245299734337419058

`record[A255517(A052905(n+1)-2)]`
-/

namespace A255518.P1245299734337419058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255518.P1245299734337419058

/-! ## A255518.P16902902336951674454

`record[A255517(A060577(n+1)+n)]`
-/

namespace A255518.P16902902336951674454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A060577 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255518.P16902902336951674454

/-! ## A255518.P15666528332614872975

`A255517(A167499(n+4)+2*n+1)`
-/

namespace A255518.P15666528332614872975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A167499 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A255518.P15666528332614872975

/-! ## A255518.P7497941264963869443

`A255517(A167614(n+4)+A004273(n+2))`
-/

namespace A255518.P7497941264963869443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A167614 (n + 4) + A004273 (n + 2)).toNat

end

end A255518.P7497941264963869443

/-! ## A255518.P3676809341096934893

`A255517(A004273(n+4)+A000096(n+4))`
-/

namespace A255518.P3676809341096934893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A004273 (n + 4) + A000096 (n + 4)).toNat

end

end A255518.P3676809341096934893

/-!
# A255519: Number of rooted identity trees with n nodes and 7-colored non-root nodes.

The programs for A255519, there is no canonical definition to state claims against.
-/

/-! ## A255519.P12208959144879830543

`A255517(eq[7, A025581(n)])`
-/

namespace A255519.P12208959144879830543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255519.P12208959144879830543

/-! ## A255519.P11438397205405205984

`A255517(eq[15, A099375(n)])`
-/

namespace A255519.P11438397205405205984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255519.P11438397205405205984

/-! ## A255519.P3771726163663445415

`A255517(eq[8, A004736(n+1)])`
-/

namespace A255519.P3771726163663445415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255519.P3771726163663445415

/-! ## A255519.P13002924835246849649

`A255517(A055998(n+2)+A016813(n+5))`
-/

namespace A255519.P13002924835246849649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055998 (n + 2) + A016813 (n + 5)).toNat

end

end A255519.P13002924835246849649

/-! ## A255519.P9560912161878704789

`A255517(A046691(n+4)+A004273(n+6))`
-/

namespace A255519.P9560912161878704789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A046691 (n + 4) + A004273 (n + 6)).toNat

end

end A255519.P9560912161878704789

/-! ## A255519.P17167396320962349835

`A255517(A055999(n+3)+A004273(n+7))`
-/

namespace A255519.P17167396320962349835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055999 (n + 3) + A004273 (n + 7)).toNat

end

end A255519.P17167396320962349835

/-!
# A255520: Number of rooted identity trees with n nodes and 8-colored non-root nodes.

The programs for A255520, there is no canonical definition to state claims against.
-/

/-! ## A255520.P4376128715847199806

`A255517(A056000(n+5)+1)`
-/

namespace A255520.P4376128715847199806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A056000 (n + 5) + 1).toNat

end

end A255520.P4376128715847199806

/-! ## A255520.P7327279160536549029

`A255517(A000096(n+7)+1+n)`
-/

namespace A255520.P7327279160536549029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A000096 (n + 7) + 1 + (n : ℤ)).toNat

end

end A255520.P7327279160536549029

/-! ## A255520.P9411178058237710549

`A255517(A167614(n+6)+A004273(n+3))`
-/

namespace A255520.P9411178058237710549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A167614 (n + 6) + A004273 (n + 3)).toNat

end

end A255520.P9411178058237710549

/-! ## A255520.P13299477886357693219

`A255517(A055998(n+4)+A008486(n+6))`
-/

namespace A255520.P13299477886357693219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A055998 (n + 4) + A008486 (n + 6)).toNat

end

end A255520.P13299477886357693219

/-! ## A255520.P9274372902313344083

`A255517(A027379(n+5)+A004273(n+6))`
-/

namespace A255520.P9274372902313344083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A027379 (n + 5) + A004273 (n + 6)).toNat

end

end A255520.P9274372902313344083

/-!
# A255521: Number of rooted identity trees with n nodes and 9-colored non-root nodes.

The programs for A255521, there is no canonical definition to state claims against.
-/

/-! ## A255521.P14064032191908438330

`A255517(eq[9, A025581(n)])`
-/

namespace A255521.P14064032191908438330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255521.P14064032191908438330

/-! ## A255521.P2795284604204541392

`A255517(eq[10, A193739(n)])`
-/

namespace A255521.P2795284604204541392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255521.P2795284604204541392

/-! ## A255521.P1657804150088611610

`A255517(eq[19, A099375(n)])`
-/

namespace A255521.P1657804150088611610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255521.P1657804150088611610

/-! ## A255521.P12099134034641680004

`A255517(A000217(n+10)-10)`
-/

namespace A255521.P12099134034641680004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (A000217 (n + 10) - 10).toNat

end

end A255521.P12099134034641680004

/-! ## A255521.P3479633374803763066

`A255517(eq[10, A004736(n+1)])`
-/

namespace A255521.P3479633374803763066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255521.P3479633374803763066

/-!
# A255522: Number of rooted identity trees with n nodes and 10-colored non-root nodes.

The programs for A255522, there is no canonical definition to state claims against.
-/

/-! ## A255522.P17310806967932154252

`A255517(eq[10, A025581(n)])`
-/

namespace A255522.P17310806967932154252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255522.P17310806967932154252

/-! ## A255522.P1792173012667598132

`A255517(eq[11, A193739(n)])`
-/

namespace A255522.P1792173012667598132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255522.P1792173012667598132

/-! ## A255522.P17715095989285080452

`A255517(eq[11, A195663(n)])`
-/

namespace A255522.P17715095989285080452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255522.P17715095989285080452

/-! ## A255522.P344119515869296058

`A255517(eq[21, A099375(n)])`
-/

namespace A255522.P344119515869296058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255522.P344119515869296058

/-! ## A255522.P8178085009021637913

`A255517(eq[10, A193592(n+1)])`
-/

namespace A255522.P8178085009021637913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255522.P8178085009021637913

/-! ## A255522.P9557283449591873069

`A255517(eq[11, A004736(n+1)])`
-/

namespace A255522.P9557283449591873069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255522.P9557283449591873069

/-!
# A255523: Number of rooted identity trees with n n-colored non-root nodes.

The programs for A255523, there is no canonical definition to state claims against.
-/

/-! ## A255523.P4875338574542390958

`A255517(2*(n+1)²)`
-/

namespace A255523.P4875338574542390958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (2 * (n + 1) ^ 2)

end

end A255523.P4875338574542390958

/-!
# A255525: 1/n! times the number of ordered pairs of permutation functions f,g on n elements where f(g(g(x))) = g(f(f(x))).

The programs for A255525, there is no canonical definition to state claims against.
-/

/-! ## A255525.P8511687123369020402

`A239836(n)/n!`
-/

namespace A255525.P8511687123369020402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239836 n : ℚ) / (Nat.factorial n : ℚ)

end

end A255525.P8511687123369020402

/-! ## A255525.P4741517673252493558

`A239836(n)/A000142(n)`
-/

namespace A255525.P4741517673252493558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239836 n : ℚ) / (A000142 n : ℚ)

end

end A255525.P4741517673252493558

/-!
# A255526: Coefficient of x^n in Product_{k>=1} 1/(1+x^k)^n.

The programs for A255526, there is no canonical definition to state claims against.
-/

/-! ## A255526.P6288586941485980829

`A286352(∑[4*(n+1)])`
-/

namespace A255526.P6288586941485980829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255526.P6288586941485980829

/-!
# A255527: Where records occur in A255437.

The programs for A255527, the canonical program `A255527.P13612266625817391283` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255527 has offset 1).

The definition of A255527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255527.P8668059992858770360

`A179865(round(sqrt(n))+1)+n`
-/

namespace A255527.P8668059992858770360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + 1).toNat + (n : ℤ)

end

end A255527.P8668059992858770360

namespace A255527

/-- `A179865(round(sqrt(n))+1)+n` -/
def P8668059992858770360.Spec : Prop :=
  ∀ n, P8668059992858770360.a n = A255527 (n + 1)

end A255527

/-! ## A255527.P16999454542789126200

`A000217(round(sqrt(abs(1-n)+1)))+n`
-/

namespace A255527.P16999454542789126200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (|1 - (n : ℤ)| + 1 : ℝ))).toNat + (n : ℤ)

end

end A255527.P16999454542789126200

namespace A255527

/-- `A000217(round(sqrt(abs(1-n)+1)))+n` -/
def P16999454542789126200.Spec : Prop :=
  ∀ n, P16999454542789126200.a n = A255527 (n + 1)

end A255527

/-! ## A255527.P3320950137683833869

`A000096(comp[(n+1)²]%(n+1))+n+1`
-/

namespace A255527.P3320950137683833869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)) + (n + 1 : ℤ)

end

end A255527.P3320950137683833869

namespace A255527

/-- `A000096(comp[(n+1)²]%(n+1))+n+1` -/
def P3320950137683833869.Spec : Prop :=
  ∀ n, P3320950137683833869.a n = A255527 (n + 1)

end A255527

/-! ## A255527.P13612266625817391283

`A127739(A065033(n))+n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A255527

/-- `A127739(A065033(n))+n` -/
def P13612266625817391283.Spec : Prop :=
  ∀ n, P13612266625817391283.a n = A255527 (n + 1)

theorem P13612266625817391283.correct : P13612266625817391283.Spec := by
  intro n
  simp only [A255527, Nat.add_sub_cancel]

end A255527

/-! ## A255527.P4262801597151031355

`A028310(A000217(round(sqrt(n))))+n`
-/

namespace A255527.P4262801597151031355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000217 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat).toNat + (n : ℤ)

end

end A255527.P4262801597151031355

namespace A255527

/-- `A028310(A000217(round(sqrt(n))))+n` -/
def P4262801597151031355.Spec : Prop :=
  ∀ n, P4262801597151031355.a n = A255527 (n + 1)

end A255527

/-! ## A255527.P3898332735279259664

`A000124(A000194(n))+(n-1)%(n+1)`
-/

namespace A255527.P3898332735279259664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000194 n).toNat + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

end

end A255527.P3898332735279259664

namespace A255527

/-- `A000124(A000194(n))+(n-1)%(n+1)` -/
def P3898332735279259664.Spec : Prop :=
  ∀ n, P3898332735279259664.a n = A255527 (n + 1)

end A255527

/-! ## A255527.P17039981950130641135

`A000096(comp[A005563(n+1)]-n)+n+1`
-/

namespace A255527.P17039981950130641135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) + (n + 1 : ℤ)

end

end A255527.P17039981950130641135

namespace A255527

/-- `A000096(comp[A005563(n+1)]-n)+n+1` -/
def P17039981950130641135.Spec : Prop :=
  ∀ n, P17039981950130641135.a n = A255527 (n + 1)

end A255527

/-! ## A255527.P17586633160291078992

`∑[A037213(A000196(n)+n)+1]`
-/

namespace A255527.P17586633160291078992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A000196 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255527.P17586633160291078992

namespace A255527

/-- `∑[A037213(A000196(n)+n)+1]` -/
def P17586633160291078992.Spec : Prop :=
  ∀ n, P17586633160291078992.a n = A255527 (n + 1)

end A255527

/-! ## A255527.P12671466492065857844

`A123108(2*n)+A000217(A000194(n))`
-/

namespace A255527.P12671466492065857844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) + A000217 (A000194 n).toNat

end

end A255527.P12671466492065857844

namespace A255527

/-- `A123108(2*n)+A000217(A000194(n))` -/
def P12671466492065857844.Spec : Prop :=
  ∀ n, P12671466492065857844.a n = A255527 (n + 1)

end A255527

/-!
# A255528: G.f.: Product_{k>=1} 1/(1+x^k)^k.

The programs for A255528, there is no canonical definition to state claims against.
-/

/-! ## A255528.P4147841452832220635

`A279928(∑[n+2]-1)`
-/

namespace A255528.P4147841452832220635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A255528.P4147841452832220635

/-! ## A255528.P3087559119043513365

`A279928(A034856(n+1))%A003500(n)`
-/

namespace A255528.P3087559119043513365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279928 (A034856 (n + 1)).toNat) (A003500 n)

end

end A255528.P3087559119043513365

/-! ## A255528.P2707789096099662020

`or(A000007(n), A279928(A034856(n+1)))`
-/

namespace A255528.P2707789096099662020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A279928 (A034856 (n + 1)).toNat)

end

end A255528.P2707789096099662020

/-! ## A255528.P9813723570679243876

`A007318(∑[n])*A279928(A034856(n+1))`
-/

namespace A255528.P9813723570679243876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A279928 (A034856 (n + 1)).toNat

end

end A255528.P9813723570679243876

/-! ## A255528.P6519351847272187391

`A279928(A034856(n+1))+A000007(n+1)`
-/

namespace A255528.P6519351847272187391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A255528.P6519351847272187391

/-! ## A255528.P17923610428789346516

`A059126(A175153(n+1))*A279928(A034856(n+1))`
-/

namespace A255528.P17923610428789346516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A175153 (n + 1)).toNat * A279928 (A034856 (n + 1)).toNat

end

end A255528.P17923610428789346516

/-! ## A255528.P8249210741562389022

`A284993(∑[n+2]-1)`
-/

namespace A255528.P8249210741562389022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A255528.P8249210741562389022

/-! ## A255528.P2543291358842703706

`A284993(A034856(n+1))%A001576(n)`
-/

namespace A255528.P2543291358842703706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284993 (A034856 (n + 1)).toNat) (A001576 n)

end

end A255528.P2543291358842703706

/-! ## A255528.P12469211612467314008

`A001222(A142178(n+1))*A284993(A034856(n+1))`
-/

namespace A255528.P12469211612467314008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A142178 (n + 1)).toNat * A284993 (A034856 (n + 1)).toNat

end

end A255528.P12469211612467314008

/-!
# A255532: Indices of primes in the 9th-order Fibonacci number sequence, A251749.

The programs for A255532, there is no canonical definition to state claims against.
-/

/-! ## A255532.P13181690690317535406

`A166136(n+1)+A000045(A204540(n+1))`
-/

namespace A255532.P13181690690317535406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (n + 1) + A000045 (A204540 (n + 1)).toNat

end

end A255532.P13181690690317535406

/-!
# A255536: Indices of primes in the 9th-order Fibonacci number sequence, A251752.

The programs for A255536, there is no canonical definition to state claims against.
-/

/-! ## A255536.P7670667574918012734

`xor(A061882(n), A328023(A326275(n)))`
-/

namespace A255536.P7670667574918012734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061882 n) (A328023 (A326275 n).toNat)

end

end A255536.P7670667574918012734

/-!
# A255538: Number of connected rigid digital images of n points, up to isomorphism.

The programs for A255538, there is no canonical definition to state claims against.
-/

/-! ## A255538.P12330756048309415535

`round(A146698(n+1)/((n+1)*C(4*n+2, 2)))`
-/

namespace A255538.P12330756048309415535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146698 (n + 1) : ℚ) / ((n + 1) * Nat.choose (4 * n + 2) 2 : ℚ))

end

end A255538.P12330756048309415535

/-! ## A255538.P15070099778601625582

`A248571(n+1)-∑[A004197(n)]`
-/

namespace A255538.P15070099778601625582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248571 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255538.P15070099778601625582

/-! ## A255538.P12700688920931179460

`A248571(n+1)-∑[A298902(n+1)]`
-/

namespace A255538.P12700688920931179460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248571 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255538.P12700688920931179460

/-! ## A255538.P14763071731595435242

`A248571(n+1)-∑[A025922(n+4)]`
-/

namespace A255538.P14763071731595435242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248571 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255538.P14763071731595435242

/-! ## A255538.P684899200869596912

`and(∑[A081064(3*n+1)], A146808(n+1))`
-/

namespace A255538.P684899200869596912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081064 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A146808 (n + 1))

end

end A255538.P684899200869596912

/-!
# A255539: Number of digital images in Z^2 with 4-adjacency on n points up to isomorphism.

The programs for A255539, there is no canonical definition to state claims against.
-/

/-! ## A255539.P14496430202303352826

`A116572(record[A110880(n)])`
-/

namespace A255539.P14496430202303352826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255539.P14496430202303352826

/-!
# A255540: Number of connected digital images in Z^2 (regarding each point as connected to its 8 neighbors) on n points up to isomorphism.

The programs for A255540, there is no canonical definition to state claims against.
-/

/-! ## A255540.P11964153105017525647

`A262689(A317985(n))`
-/

namespace A255540.P11964153105017525647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A317985 n).toNat

end

end A255540.P11964153105017525647

/-! ## A255540.P8647338599987122239

`A066490(A150739(n)+2)`
-/

namespace A255540.P8647338599987122239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A150739 n + 2).toNat

end

end A255540.P8647338599987122239

/-! ## A255540.P17296375007956110674

`A217291(A249665(n+2))`
-/

namespace A255540.P17296375007956110674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217291 (A249665 (n + 2)).toNat

end

end A255540.P17296375007956110674

/-!
# A255541: a(n) = 1+Sum_{k=1..2^n-1} A000010(k).

The programs for A255541, the canonical program `A255541.P16486879820483679436` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255541 has offset 0).

The definition of A255541 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005728, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255541.P16486879820483679436

`A005728(2^n-1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A255541

/-- `A005728(2^n-1)` -/
def P16486879820483679436.Spec : Prop :=
  ∀ n, P16486879820483679436.a n = A255541 n

theorem P16486879820483679436.correct : P16486879820483679436.Spec := by
  intro n
  simp only [A255541]

end A255541

/-! ## A255541.P4338295961499573877

`A104191(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A255541.P4338295961499573877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104191 (n - 1) + a (n - 1)

end

end A255541.P4338295961499573877

namespace A255541

/-- `A104191(n-1)+a(n-1)` -/
def P4338295961499573877.Spec : Prop :=
  ∀ n, P4338295961499573877.a n = A255541 n

end A255541

/-! ## A255541.P247636540399931694

`∑[A104191(log2(A011782(n)))]`
-/

namespace A255541.P247636540399931694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104191 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255541.P247636540399931694

namespace A255541

/-- `∑[A104191(log2(A011782(n)))]` -/
def P247636540399931694.Spec : Prop :=
  ∀ n, P247636540399931694.a n = A255541 n

end A255541

/-! ## A255541.P4223714145045318889

`∑[A104191(n)]+1-A104191(n)`
-/

namespace A255541.P4223714145045318889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A104191 n)

end

end A255541.P4223714145045318889

namespace A255541

/-- `∑[A104191(n)]+1-A104191(n)` -/
def P4223714145045318889.Spec : Prop :=
  ∀ n, P4223714145045318889.a n = A255541 n

end A255541

/-! ## A255541.P9814643718003964735

`∑[A104191(A004526(A004275(n)))]`
-/

namespace A255541.P9814643718003964735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104191 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255541.P9814643718003964735

namespace A255541

/-- `∑[A104191(A004526(A004275(n)))]` -/
def P9814643718003964735.Spec : Prop :=
  ∀ n, P9814643718003964735.a n = A255541 n

end A255541

/-!
# A255542: a(n) = number of prime factors of (3^n + 10) counted with multiplicity.

The programs for A255542, there is no canonical definition to state claims against.
-/

/-! ## A255542.P13642166380027918451

`A277315(A126290(A051701(n+1)))`
-/

namespace A255542.P13642166380027918451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277315 (A126290 (A051701 (n + 1)).toNat).toNat

end

end A255542.P13642166380027918451

/-! ## A255542.P3474289387476308746

`A162642(A023194(n+1)+(-1)^∑{e}[n+1, #])`
-/

namespace A255542.P3474289387476308746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A023194 (n + 1) + (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A255542.P3474289387476308746

/-! ## A255542.P18418678729762602098

`A162642(A023194(n+1)+∏{e}[n+1, (-1)^#])`
-/

namespace A255542.P18418678729762602098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A023194 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), (-1) ^ Nat.factorization (f1 n) p).toNat

end

end A255542.P18418678729762602098

/-! ## A255542.P3093951441121124128

`A162642(A023194(n+1)+(-1)^Δ[A022559(n)])`
-/

namespace A255542.P3093951441121124128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (SequenceMachineLib.roundAway ((A023194 (n + 1) : ℚ) + (-1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A255542.P3093951441121124128

/-! ## A255542.P11514029490249463434

`A162642(A023194(n+1)+(-1)^A001222(n+1))`
-/

namespace A255542.P11514029490249463434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (SequenceMachineLib.roundAway ((A023194 (n + 1) : ℚ) + (-1 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A255542.P11514029490249463434

/-!
# A255543: Unlucky array: Row n consists of unlucky numbers removed at the stage n of Lucky sieve.

The programs for A255543, there is no canonical definition to state claims against.
-/

/-! ## A255543.P16245097166050140929

`A255545(comp[∑[n]])`
-/

namespace A255543.P16245097166050140929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A255543.P16245097166050140929

/-! ## A255543.P12208075390652121556

`A255544(A038722(n+1))`
-/

namespace A255543.P12208075390652121556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A038722 (n + 1)).toNat

end

end A255543.P12208075390652121556

/-! ## A255543.P10681705923495432366

`A255544(A061579(n)+1)`
-/

namespace A255543.P10681705923495432366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A061579 n + 1).toNat

end

end A255543.P10681705923495432366

/-! ## A255543.P2669300502820820692

`A255544(2-A127948(n)+n)`
-/

namespace A255543.P2669300502820820692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (2 - A127948 n + (n : ℤ)).toNat

end

end A255543.P2669300502820820692

/-! ## A255543.P14139280336002822463

`A257255(n+1)+A255545(n+1)`
-/

namespace A255543.P14139280336002822463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257255 (n + 1) + A255545 (n + 1)

end

end A255543.P14139280336002822463

/-! ## A255543.P11171781144582681259

`A255547(2*A004736(n+1)+n+1)`
-/

namespace A255543.P11171781144582681259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (2 * A004736 (n + 1) + (n : ℤ) + 1).toNat

end

end A255543.P11171781144582681259

/-! ## A255543.P2508448148395452969

`A255551(A278512(A278507(n+1)))`
-/

namespace A255543.P2508448148395452969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255551 (A278512 (A278507 (n + 1)).toNat).toNat

end

end A255543.P2508448148395452969

/-!
# A255544: Unlucky array, transposed.

The programs for A255544, there is no canonical definition to state claims against.
-/

/-! ## A255544.P14254134707344550429

`A255547(comp[∑[n]]+1)`
-/

namespace A255544.P14254134707344550429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A255544.P14254134707344550429

/-! ## A255544.P14398038582484447199

`A255543(∑[char[∑[n]]]²-n)`
-/

namespace A255544.P14398038582484447199
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A255544.P14398038582484447199

/-! ## A255544.P8814058379017538502

`A255545(2*A004736(n+1)+n)`
-/

namespace A255544.P8814058379017538502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A255544.P8814058379017538502

/-! ## A255544.P10062654641273494795

`A255545(A127739(n+1)+val(A081954(n+1), 2))`
-/

namespace A255544.P10062654641273494795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (A127739 (n + 1) + (SequenceMachineLib.valuation (A081954 (n + 1)).toNat 2 : ℤ)).toNat

end

end A255544.P10062654641273494795

/-! ## A255544.P12535721992924422297

`A255545(A127739(n+1)+val(A118586(n+1), 2))`
-/

namespace A255544.P12535721992924422297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (A127739 (n + 1) + (SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2 : ℤ)).toNat

end

end A255544.P12535721992924422297

/-! ## A255544.P14771526579669868629

`A255545(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A255544.P14771526579669868629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A255544.P14771526579669868629

/-!
# A255545: Lucky / Unlucky array: Each row starts with n-th lucky number, followed by all unlucky numbers removed at stage n of the sieve.

The programs for A255545, there is no canonical definition to state claims against.
-/

/-! ## A255545.P12460438320949371570

`A255547(A038722(n+1))`
-/

namespace A255545.P12460438320949371570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (A038722 (n + 1)).toNat

end

end A255545.P12460438320949371570

/-! ## A255545.P7188884164623545069

`A255547(A061579(n)+1)`
-/

namespace A255545.P7188884164623545069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (A061579 n + 1).toNat

end

end A255545.P7188884164623545069

/-! ## A255545.P5077889498532175139

`A255547(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A255545.P5077889498532175139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A255545.P5077889498532175139

/-! ## A255545.P6725801936316439522

`A278505(n+1)+A255551(n+2)-A278511(n+1)`
-/

namespace A255545.P6725801936316439522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (n + 1) + (A255551 (n + 2) - A278511 (n + 1))

end

end A255545.P6725801936316439522

/-! ## A255545.P16872189880146310852

`A255543(n+1)-A257255(n+1)`
-/

namespace A255545.P16872189880146310852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (n + 1) - A257255 (n + 1)

end

end A255545.P16872189880146310852

/-!
# A255546: Inverse permutation to A255545.

The programs for A255546, there is no canonical definition to state claims against.
-/

/-! ## A255546.P7488843185571063671

`A255552(A114112(n+2))-1`
-/

namespace A255546.P7488843185571063671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A114112 (n + 2)).toNat - 1

end

end A255546.P7488843185571063671

/-! ## A255546.P12046392428220368475

`A255552(A065190(n+1)+1)-1`
-/

namespace A255546.P12046392428220368475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A065190 (n + 1) + 1).toNat - 1

end

end A255546.P12046392428220368475

/-! ## A255546.P9117296342809647505

`A038722(A255548(n+1))`
-/

namespace A255546.P9117296342809647505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A255548 (n + 1)).toNat

end

end A255546.P9117296342809647505

/-! ## A255546.P13335105161203886169

`A061579(A255548(n+1)-1)+1`
-/

namespace A255546.P13335105161203886169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A255548 (n + 1) - 1).toNat + 1

end

end A255546.P13335105161203886169

/-! ## A255546.P9543397126094733914

`A249742(xor(A057427(n), A255554(n+1)))`
-/

namespace A255546.P9543397126094733914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (Int.xor (A057427 n) (A255554 (n + 1))).toNat

end

end A255546.P9543397126094733914

/-!
# A255547: Lucky / Unlucky array, transposed.

The programs for A255547, there is no canonical definition to state claims against.
-/

/-! ## A255547.P9255035963217181921

`A255545(∑[char[∑[n]]]²-n)`
-/

namespace A255547.P9255035963217181921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A255547.P9255035963217181921

/-! ## A255547.P4455913769432692936

`A255545(A038722(n+1))%A142200(n+1)`
-/

namespace A255547.P4455913769432692936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255545 (A038722 (n + 1)).toNat) (A142200 (n + 1))

end

end A255547.P4455913769432692936

/-! ## A255547.P454748942264003411

`A255545(A038722(n+1))+n%A028310(n)`
-/

namespace A255547.P454748942264003411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (A038722 (n + 1)).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A255547.P454748942264003411

/-! ## A255547.P1469437299060444407

`A137530(n+1)%5*A255545(A038722(n+1))`
-/

namespace A255547.P1469437299060444407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137530 (n + 1)) 5 * A255545 (A038722 (n + 1)).toNat

end

end A255547.P1469437299060444407

/-! ## A255547.P488479658292300591

`A255545(A038722(n+1))%A256840(A255350(n))`
-/

namespace A255547.P488479658292300591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255545 (A038722 (n + 1)).toNat) (A256840 (A255350 n).toNat)

end

end A255547.P488479658292300591

/-! ## A255547.P1233100271601368631

`A255545(A038722(n+1))%A074606(n)`
-/

namespace A255547.P1233100271601368631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255545 (A038722 (n + 1)).toNat) (A074606 n)

end

end A255547.P1233100271601368631

/-!
# A255548: Inverse permutation to A255547.

The programs for A255548, there is no canonical definition to state claims against.
-/

/-! ## A255548.P17537624788461376504

`A038722(A255546(n+1))`
-/

namespace A255548.P17537624788461376504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A255546 (n + 1)).toNat

end

end A255548.P17537624788461376504

/-! ## A255548.P3146551514566814799

`A061579(A255546(n+1)-1)+1`
-/

namespace A255548.P3146551514566814799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A255546 (n + 1) - 1).toNat + 1

end

end A255548.P3146551514566814799

/-! ## A255548.P17492582607727306330

`A255546(A255547(A255546(A255546(A255545(n+1)))))`
-/

namespace A255548.P17492582607727306330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255546 (A255547 (A255546 (A255546 (A255545 (n + 1)).toNat).toNat).toNat).toNat

end

end A255548.P17492582607727306330

/-! ## A255548.P18043923689495778984

`A278504(n+1)+A159075(A171816(n))`
-/

namespace A255548.P18043923689495778984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278504 (n + 1) + A159075 (A171816 n).toNat

end

end A255548.P18043923689495778984

/-! ## A255548.P11262185695837690611

`A278504(n+1)-A226955(A050932(n))`
-/

namespace A255548.P11262185695837690611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278504 (n + 1) - A226955 (A050932 n).toNat

end

end A255548.P11262185695837690611

/-!
# A255549: Main diagonal of Unlucky array: a(n) = A255543(n,n).

The programs for A255549, there is no canonical definition to state claims against.
-/

/-! ## A255549.P8168059277874166796

`A255545(2*(n+1)²)`
-/

namespace A255549.P8168059277874166796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (2 * (n + 1) ^ 2)

end

end A255549.P8168059277874166796

/-! ## A255549.P17822705962222393962

`A255543(∑[4*n]+1)`
-/

namespace A255549.P17822705962222393962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255549.P17822705962222393962

/-! ## A255549.P8663921127053545880

`A255544(∑[4*n]+1)`
-/

namespace A255549.P8663921127053545880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255549.P8663921127053545880

/-! ## A255549.P1309137952409707324

`A255547(2*(n+1)²+1)`
-/

namespace A255549.P1309137952409707324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (2 * (n + 1) ^ 2 + 1)

end

end A255549.P1309137952409707324

/-! ## A255549.P10155459534977928164

`or(char[2], A255545(∑[4*n+2]))`
-/

namespace A255549.P10155459534977928164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A255545 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A255549.P10155459534977928164

/-! ## A255549.P5481425080540166748

`or(char[1], A255543(A001844(n)))`
-/

namespace A255549.P5481425080540166748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A255543 (A001844 n).toNat)

end

end A255549.P5481425080540166748

/-! ## A255549.P8547871731239322453

`record[A255544(A003602((n+1)²))]`
-/

namespace A255549.P8547871731239322453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255549.P8547871731239322453

/-! ## A255549.P13722876700795406188

`record[gcd(A255543(n+1), A255544(n+1))]`
-/

namespace A255549.P13722876700795406188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255543 (n + 1)) (A255544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255549.P13722876700795406188

/-!
# A255550: Main diagonal of array A255551.

The programs for A255550, there is no canonical definition to state claims against.
-/

/-! ## A255550.P16095372946993940835

`A255543(2*n²+1)`
-/

namespace A255550.P16095372946993940835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (2 * n ^ 2 + 1)

end

end A255550.P16095372946993940835

/-! ## A255550.P2432733633285944019

`A255551(∑[4*n]+2)`
-/

namespace A255550.P2432733633285944019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255551 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255550.P2432733633285944019

/-! ## A255550.P17076558089540225464

`C(2, C(2, n²))*A255545(∑[4*n]+1)`
-/

namespace A255550.P17076558089540225464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) * A255545 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255550.P17076558089540225464

/-! ## A255550.P3284117909582851263

`A255544(A004277(n²))`
-/

namespace A255550.P3284117909582851263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A004277 (n ^ 2)).toNat

end

end A255550.P3284117909582851263

/-! ## A255550.P14118749221514753271

`A255545(Δ[A179903(n)])`
-/

namespace A255550.P14118749221514753271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (f1 (n + 1) - f1 n).toNat

end

end A255550.P14118749221514753271

/-! ## A255550.P10412786329060086145

`A255544(A028310(2*n²))`
-/

namespace A255550.P10412786329060086145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A028310 (2 * n ^ 2)).toNat

end

end A255550.P10412786329060086145

/-! ## A255550.P4337905469545053628

`A255544(n²+A028310(n²))`
-/

namespace A255550.P4337905469545053628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A255550.P4337905469545053628

/-! ## A255550.P3781012141584762606

`A255544((2*n²)^A178334(n))`
-/

namespace A255550.P3781012141584762606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (SequenceMachineLib.roundAway ((2 * n ^ 2 : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A255550.P3781012141584762606

/-! ## A255550.P7011269041711544474

`record[gcd(A114327(n), A255551(n+2))]`
-/

namespace A255550.P7011269041711544474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A255551 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255550.P7011269041711544474

/-! ## A255550.P3449746378180016848

`A255545(∑[4*n]+1)+-1%A000032(n+1)+1`
-/

namespace A255550.P3449746378180016848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (Int.tmod (-1) (A000032 (n + 1)) + 1)

end

end A255550.P3449746378180016848

/-!
# A255551: Lucky / Unlucky array, shifted version, read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A255551, there is no canonical definition to state claims against.
-/

/-! ## A255551.P11681786615810275840

`A255545(n+1)+A278511(n+1)-A278505(n+1)`
-/

namespace A255551.P11681786615810275840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (n + 1) + (A278511 (n + 1) - A278505 (n + 1))

end

end A255551.P11681786615810275840

/-! ## A255551.P8569560539607197352

`A255545(A066182(n+1)+1)`
-/

namespace A255551.P8569560539607197352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (A066182 (n + 1) + 1).toNat

end

end A255551.P8569560539607197352

/-! ## A255551.P2680144015505398899

`A114112(A255545(n+1)+1)`
-/

namespace A255551.P2680144015505398899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A255545 (n + 1) + 1).toNat

end

end A255551.P2680144015505398899

/-! ## A255551.P3146153152562199054

`A260436(A255127(n+2))`
-/

namespace A255551.P3146153152562199054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A255127 (n + 2)).toNat

end

end A255551.P3146153152562199054

/-! ## A255551.P18348185837419462683

`A255553(A083221(n+2))`
-/

namespace A255551.P18348185837419462683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (A083221 (n + 2)).toNat

end

end A255551.P18348185837419462683

/-! ## A255551.P7262689578219097476

`A255553(A249741(n+1)+1)`
-/

namespace A255551.P7262689578219097476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (A249741 (n + 1) + 1).toNat

end

end A255551.P7262689578219097476

/-! ## A255551.P14204200724100829780

`A255553(A083140(A252460(A083140(n+2))))`
-/

namespace A255551.P14204200724100829780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (A083140 (A252460 (A083140 (n + 2)).toNat).toNat).toNat

end

end A255551.P14204200724100829780

/-!
# A255552: Inverse permutation to A255551.

The programs for A255552, there is no canonical definition to state claims against.
-/

/-! ## A255552.P6740250594658754658

`A255546(n+1)+A278512(n+1)-A278506(n+1)`
-/

namespace A255552.P6740250594658754658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255546 (n + 1) + (A278512 (n + 1) - A278506 (n + 1))

end

end A255552.P6740250594658754658

/-! ## A255552.P12275314269240827634

`A252460(A255554(n+1))`
-/

namespace A255552.P12275314269240827634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A255554 (n + 1)).toNat

end

end A255552.P12275314269240827634

/-! ## A255552.P17707560569437828141

`A249742(A255554(n+1)-A057427(n))+A057427(n)`
-/

namespace A255552.P17707560569437828141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A255554 (n + 1) - A057427 n).toNat + A057427 n

end

end A255552.P17707560569437828141

/-! ## A255552.P10798472984512792592

`A255128(A260435(n+1))`
-/

namespace A255552.P10798472984512792592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255128 (A260435 (n + 1)).toNat

end

end A255552.P10798472984512792592

/-! ## A255552.P16975825494945418697

`A252460(A260435(n+1))%A264798(A003657(n+1))`
-/

namespace A255552.P16975825494945418697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252460 (A260435 (n + 1)).toNat) (A264798 (A003657 (n + 1)).toNat)

end

end A255552.P16975825494945418697

/-!
# A255553: Permutation of natural numbers: a(n) = A255551(A252460(n)).

The programs for A255553, there is no canonical definition to state claims against.
-/

/-! ## A255553.P6947501336440503921

`A260436(A255407(n+1))`
-/

namespace A255553.P6947501336440503921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A255407 (n + 1)).toNat

end

end A255553.P6947501336440503921

/-! ## A255553.P7987515235376480689

`A260436(A269171(n+1)%p?[(n+1)^3-n²])`
-/

namespace A255553.P7987515235376480689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (Int.tmod (A269171 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A255553.P7987515235376480689

/-! ## A255553.P3060585506856670562

`A260436(A269171(n+1))%A289000(n)`
-/

namespace A255553.P3060585506856670562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260436 (A269171 (n + 1)).toNat) (A289000 n)

end

end A255553.P3060585506856670562

/-! ## A255553.P15346990181974176028

`A260436(A269395(n+1)^Δ[A269394(n+1)])`
-/

namespace A255553.P15346990181974176028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (SequenceMachineLib.roundAway ((A269395 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A255553.P15346990181974176028

/-! ## A255553.P15661478049159164661

`A260436(C(A269171(n+1), n))`
-/

namespace A255553.P15661478049159164661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (Nat.choose (A269171 (n + 1)).toNat n)

end

end A255553.P15661478049159164661

/-!
# A255554: Permutation of natural numbers: a(n) = A083221(A255552(n)).

The programs for A255554, there is no canonical definition to state claims against.
-/

/-! ## A255554.P12715737235885480420

`A255408(A260435(n+1))`
-/

namespace A255554.P12715737235885480420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A260435 (n + 1)).toNat

end

end A255554.P12715737235885480420

/-! ## A255554.P14553643803557023975

`xor(A057427(n), A249741(A255546(n+1)))`
-/

namespace A255554.P14553643803557023975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A249741 (A255546 (n + 1)).toNat)

end

end A255554.P14553643803557023975

/-! ## A255554.P1781016598286688900

`xor(A057428(n)², A249741(A255546(n+1)))`
-/

namespace A255554.P1781016598286688900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057428 n ^ 2) (A249741 (A255546 (n + 1)).toNat)

end

end A255554.P1781016598286688900

/-! ## A255554.P5237760810209543807

`A249741(A255546(n+1))-(A065190(n+1)-(n+1))`
-/

namespace A255554.P5237760810209543807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (A255546 (n + 1)).toNat - (A065190 (n + 1) - (n + 1 : ℤ))

end

end A255554.P5237760810209543807

/-! ## A255554.P12788188932029208294

`A249741(A255546(n+1))+A081729(A008486(n))`
-/

namespace A255554.P12788188932029208294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (A255546 (n + 1)).toNat + A081729 (A008486 n).toNat

end

end A255554.P12788188932029208294

/-! ## A255554.P3706625727969837936

`(A249741(A255546(n+1))+A033999(n))/A054977(n)`
-/

namespace A255554.P3706625727969837936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249741 (A255546 (n + 1)).toNat + A033999 n : ℚ) / (A054977 n : ℚ)

end

end A255554.P3706625727969837936

/-!
# A255555: Square array A(row,col) read by downwards antidiagonals: A(1,1) = 1, A(row,1) = A055938(row-1), and for col > 1, A(row,col) = A005187(1+A(row,col-1)).

The programs for A255555, there is no canonical definition to state claims against.
-/

/-! ## A255555.P12012693234097530424

`A255557(A038722(n+1))`
-/

namespace A255555.P12012693234097530424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A038722 (n + 1)).toNat

end

end A255555.P12012693234097530424

/-! ## A255555.P14271328391532602107

`A255557(A061579(n)+1)`
-/

namespace A255555.P14271328391532602107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A061579 n + 1).toNat

end

end A255555.P14271328391532602107

/-! ## A255555.P1177078373763668801

`A255557(A114327(n)+1+n)`
-/

namespace A255555.P1177078373763668801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A114327 n + 1 + (n : ℤ)).toNat

end

end A255555.P1177078373763668801

/-! ## A255555.P11670406490017986368

`A255557(A093995(n+1)-n)`
-/

namespace A255555.P11670406490017986368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A255555.P11670406490017986368

/-! ## A255555.P11020053044048119243

`A255557(A002024(n+1)²-n)`
-/

namespace A255555.P11020053044048119243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A255555.P11020053044048119243

/-! ## A255555.P17457858451891585625

`A255557(A255556(A255557(n+1)))`
-/

namespace A255555.P17457858451891585625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A255556 (A255557 (n + 1)).toNat).toNat

end

end A255555.P17457858451891585625

/-! ## A255555.P10059759309822778514

`A255557(A254106(A254107(n+1)))`
-/

namespace A255555.P10059759309822778514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A254106 (A254107 (n + 1)).toNat).toNat

end

end A255555.P10059759309822778514

/-! ## A255555.P717361366186916788

`A255557(A254108(A254105(n+1)))`
-/

namespace A255555.P717361366186916788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255557 (A254108 (A254105 (n + 1)).toNat).toNat

end

end A255555.P717361366186916788

/-!
# A255556: Inverse permutation to A255555.

The programs for A255556, there is no canonical definition to state claims against.
-/

/-! ## A255556.P2214520495181267206

`A255558(n+1)+A255560(n+1)-A255559(n+1)`
-/

namespace A255556.P2214520495181267206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255558 (n + 1) + (A255560 (n + 1) - A255559 (n + 1))

end

end A255556.P2214520495181267206

/-! ## A255556.P16794352276316534470

`A038722(A255558(n+1))`
-/

namespace A255556.P16794352276316534470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A255558 (n + 1)).toNat

end

end A255556.P16794352276316534470

/-! ## A255556.P13345882310622982315

`A061579(A255558(n+1)-1)+1`
-/

namespace A255556.P13345882310622982315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A255558 (n + 1) - 1).toNat + 1

end

end A255556.P13345882310622982315

/-!
# A255557: Square array A(row,col): A(1,1) = 1, A(1,col) = A055938(col-1), and for row > 1: A(row,col) = A005187(1+A(row-1,col)).

The programs for A255557, there is no canonical definition to state claims against.
-/

/-! ## A255557.P12181859915267684620

`A255555(A038722(n+1))`
-/

namespace A255557.P12181859915267684620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A038722 (n + 1)).toNat

end

end A255557.P12181859915267684620

/-! ## A255557.P12590949500932068640

`A255555(A061579(n)+1)`
-/

namespace A255557.P12590949500932068640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A061579 n + 1).toNat

end

end A255557.P12590949500932068640

/-! ## A255557.P7578476809679636689

`A255555(A114327(n)+1+n)`
-/

namespace A255557.P7578476809679636689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A114327 n + 1 + (n : ℤ)).toNat

end

end A255557.P7578476809679636689

/-! ## A255557.P1686728832970773752

`A255555(A093995(n+1)-n)`
-/

namespace A255557.P1686728832970773752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A255557.P1686728832970773752

/-! ## A255557.P7207368117199901027

`A255555(A057944(n)+A004736(n+1))`
-/

namespace A255557.P7207368117199901027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A057944 n + A004736 (n + 1)).toNat

end

end A255557.P7207368117199901027

/-! ## A255557.P547690323902754798

`A255555(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A255557.P547690323902754798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A255557.P547690323902754798

/-! ## A255557.P1444251694573888940

`A255555(A254106(A254107(n+1)))`
-/

namespace A255557.P1444251694573888940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A254106 (A254107 (n + 1)).toNat).toNat

end

end A255557.P1444251694573888940

/-! ## A255557.P16460328187510278943

`A255555(A254108(A254105(n+1)))`
-/

namespace A255557.P16460328187510278943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A254108 (A254105 (n + 1)).toNat).toNat

end

end A255557.P16460328187510278943

/-! ## A255557.P9683131297172783133

`A255555(A255558(A255555(n+1)))`
-/

namespace A255557.P9683131297172783133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (A255558 (A255555 (n + 1)).toNat).toNat

end

end A255557.P9683131297172783133

/-!
# A255558: Inverse permutation to A255557.

The programs for A255558, there is no canonical definition to state claims against.
-/

/-! ## A255558.P13974380998589359692

`A255556(n+1)+A255559(n+1)-A255560(n+1)`
-/

namespace A255558.P13974380998589359692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255556 (n + 1) + (A255559 (n + 1) - A255560 (n + 1))

end

end A255558.P13974380998589359692

/-! ## A255558.P6750375300426571769

`A038722(A255556(n+1))`
-/

namespace A255558.P6750375300426571769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A255556 (n + 1)).toNat

end

end A255558.P6750375300426571769

/-! ## A255558.P3525285566199629666

`A061579(A255556(n+1)-1)+1`
-/

namespace A255558.P3525285566199629666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A255556 (n + 1) - 1).toNat + 1

end

end A255558.P3525285566199629666

/-!
# A255559: One-based column index of n in array A255555.

The programs for A255559, there is no canonical definition to state claims against.
-/

/-! ## A255559.P14717584446974647584

`A255558(n+1)+A255560(n+1)-A255556(n+1)`
-/

namespace A255559.P14717584446974647584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255558 (n + 1) + (A255560 (n + 1) - A255556 (n + 1))

end

end A255559.P14717584446974647584

/-! ## A255559.P1395641028622916883

`A001511(A233275(n+1))`
-/

namespace A255559.P1395641028622916883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A233275 (n + 1)).toNat

end

end A255559.P1395641028622916883

/-! ## A255559.P6616158407429513538

`A091090(A233277(n+1))`
-/

namespace A255559.P6616158407429513538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A233277 (n + 1)).toNat

end

end A255559.P6616158407429513538

/-! ## A255559.P4015196587717039434

`A265332(A276344(n+1))`
-/

namespace A255559.P4015196587717039434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A276344 (n + 1)).toNat

end

end A255559.P4015196587717039434

/-! ## A255559.P1805101032610117468

`A265332(A276346(A276343(A276346(n+1))))`
-/

namespace A255559.P1805101032610117468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A276346 (A276343 (A276346 (n + 1)).toNat).toNat).toNat

end

end A255559.P1805101032610117468

/-! ## A255559.P1498395038609356331

`A094267(A233275(n+1)-(2-A233275(n+1)))`
-/

namespace A255559.P1498395038609356331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A233275 (n + 1) - (2 - A233275 (n + 1))).toNat

end

end A255559.P1498395038609356331

/-! ## A255559.P6588034450450084226

`A002260(A255558(n+1))`
-/

namespace A255559.P6588034450450084226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255558 (n + 1)).toNat

end

end A255559.P6588034450450084226

/-! ## A255559.P128777412683596255

`A256989(A256997(A255558(A005187(n+2))))`
-/

namespace A255559.P128777412683596255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256989 (A256997 (A255558 (A005187 (n + 2)).toNat).toNat).toNat

end

end A255559.P128777412683596255

/-! ## A255559.P13453017483941702142

`A004736(A255556(n+1))`
-/

namespace A255559.P13453017483941702142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A255556 (n + 1)).toNat

end

end A255559.P13453017483941702142

/-! ## A255559.P18416690899870522513

`A057555(2*A255558(n+1)-1)`
-/

namespace A255559.P18416690899870522513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A255558 (n + 1) - 1).toNat

end

end A255559.P18416690899870522513

/-! ## A255559.P6937508870278976383

`A057555(A255558(n+1)+A255558(n+1)-1)`
-/

namespace A255559.P6937508870278976383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A255558 (n + 1) + (A255558 (n + 1) - 1)).toNat

end

end A255559.P6937508870278976383

/-!
# A255560: One-based row index of n in array A255555.

The programs for A255560, there is no canonical definition to state claims against.
-/

/-! ## A255560.P15110014898804737277

`A255556(n+1)+A255559(n+1)-A255558(n+1)`
-/

namespace A255560.P15110014898804737277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255556 (n + 1) + (A255559 (n + 1) - A255558 (n + 1))

end

end A255560.P15110014898804737277

/-! ## A255560.P8884851535758370484

`A002260(A255556(n+1))`
-/

namespace A255560.P8884851535758370484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255556 (n + 1)).toNat

end

end A255560.P8884851535758370484

/-! ## A255560.P2081834940900499435

`A004736(A255558(n+1))`
-/

namespace A255560.P2081834940900499435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A255558 (n + 1)).toNat

end

end A255560.P2081834940900499435

/-! ## A255560.P9374483493468566409

`A025581(A255558(n+1)-1)+1`
-/

namespace A255560.P9374483493468566409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A255558 (n + 1) - 1).toNat + 1

end

end A255560.P9374483493468566409

/-! ## A255560.P15972301140015624880

`A002262(A255556(n+1)-1)+1`
-/

namespace A255560.P15972301140015624880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A255556 (n + 1) - 1).toNat + 1

end

end A255560.P15972301140015624880

/-! ## A255560.P13928402819433804166

`A057555(2*A255558(n+1))`
-/

namespace A255560.P13928402819433804166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A255558 (n + 1)).toNat

end

end A255560.P13928402819433804166

/-!
# A255561: Numbers whose binary representation traces a non-selfcrossing circuit in the honeycomb lattice when each one of its bits, from the most significant to the least significant, is interpreted as a direction to proceed at each vertex.

The programs for A255561, there is no canonical definition to state claims against.
-/

/-! ## A255561.P8478459689146991248

`floor(A258001(n)/2)`
-/

namespace A255561.P8478459689146991248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258001 n : ℚ) / 2⌋

end

end A255561.P8478459689146991248

/-! ## A255561.P4802627265902246041

`floor(A255571(2*n)/2)`
-/

namespace A255561.P4802627265902246041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A255571 (2 * n) : ℚ) / 2⌋

end

end A255561.P4802627265902246041

/-! ## A255561.P14501623978931445367

`n*A255571(A004273(n))/A004277(n)`
-/

namespace A255561.P14501623978931445367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A255571 (A004273 n).toNat : ℚ) / (A004277 n : ℚ))

end

end A255561.P14501623978931445367

/-! ## A255561.P15517756698316549568

`A255571(A004273(n))/2*A057428(n)²`
-/

namespace A255561.P15517756698316549568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255571 (A004273 n).toNat : ℚ) / 2 * (A057428 n ^ 2 : ℚ)

end

end A255561.P15517756698316549568

/-! ## A255561.P18148355412350990345

`ceil(A255571(A004273(n))/2-A000007(n))`
-/

namespace A255561.P18148355412350990345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A255571 (A004273 n).toNat : ℚ) / 2 - (A000007 n : ℚ)⌉

end

end A255561.P18148355412350990345

/-! ## A255561.P18016105264410740832

`A273943(A255571(2*n)-1)`
-/

namespace A255561.P18016105264410740832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A255571 (2 * n) - 1).toNat

end

end A255561.P18016105264410740832

/-! ## A255561.P14282774507844481553

`record[A273943(A255571(n)-A080116(n))]`
-/

namespace A255561.P14282774507844481553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A255571 n - A080116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255561.P14282774507844481553

/-! ## A255561.P15063384659594687661

`record[A273943(A057427(n)*A255571(n))]`
-/

namespace A255561.P15063384659594687661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A057427 n * A255571 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255561.P15063384659594687661

/-!
# A255563: a(n) = -3 * n/4 if n divisible by 4, a(n) = -(-1)^n * n otherwise.

The programs for A255563, the canonical program `A255563.P4786817755465883835` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255563 has offset 0).

The definition of A255563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255563.P13214895995014483195

`n*(1-2/gcd(4, n))²-n%or(1, n)`
-/

namespace A255563.P13214895995014483195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 - 2 / (Nat.gcd 4 n : ℚ)) ^ 2 - ((n % Nat.lor 1 n : ℕ) : ℚ)

end

end A255563.P13214895995014483195

namespace A255563

/-- `n*(1-2/gcd(4, n))²-n%or(1, n)` -/
def P13214895995014483195.Spec : Prop :=
  ∀ n, P13214895995014483195.a n = (A255563 n : ℚ)

end A255563

/-! ## A255563.P4786817755465883835

`A316631(n)-A237420(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A255563

/-- `A316631(n)-A237420(n)` -/
def P4786817755465883835.Spec : Prop :=
  ∀ n, P4786817755465883835.a n = A255563 n

theorem P4786817755465883835.correct : P4786817755465883835.Spec := by
  intro n
  simp only [A255563]

end A255563

/-! ## A255563.P4525517494267426754

`A316631(n)-2*A142150(n)`
-/

namespace A255563.P4525517494267426754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n - 2 * A142150 n

end

end A255563.P4525517494267426754

namespace A255563

/-- `A316631(n)-2*A142150(n)` -/
def P4525517494267426754.Spec : Prop :=
  ∀ n, P4525517494267426754.a n = A255563 n

end A255563

/-! ## A255563.P1404925873505953168

`A142150(A142150(n))-A038608(n)`
-/

namespace A255563.P1404925873505953168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 n).toNat - A038608 n

end

end A255563.P1404925873505953168

namespace A255563

/-- `A142150(A142150(n))-A038608(n)` -/
def P1404925873505953168.Spec : Prop :=
  ∀ n, P1404925873505953168.a n = A255563 n

end A255563

/-! ## A255563.P11232853298427844565

`A316631(A190621(n))+A316631(n)-n`
-/

namespace A255563.P11232853298427844565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (A190621 n).toNat + (A316631 n - (n : ℤ))

end

end A255563.P11232853298427844565

namespace A255563

/-- `A316631(A190621(n))+A316631(n)-n` -/
def P11232853298427844565.Spec : Prop :=
  ∀ n, P11232853298427844565.a n = A255563 n

end A255563

/-! ## A255563.P9034388673491032884

`A176447(n)-A026741(n-A026741(n))`
-/

namespace A255563.P9034388673491032884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n - A026741 ((n : ℤ) - A026741 n).toNat

end

end A255563.P9034388673491032884

namespace A255563

/-- `A176447(n)-A026741(n-A026741(n))` -/
def P9034388673491032884.Spec : Prop :=
  ∀ n, P9034388673491032884.a n = A255563 n

end A255563

/-! ## A255563.P9242825884760862447

`A142150(A142150(n))+n*A062157(n)`
-/

namespace A255563.P9242825884760862447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 n).toNat + (n : ℤ) * A062157 n

end

end A255563.P9242825884760862447

namespace A255563

/-- `A142150(A142150(n))+n*A062157(n)` -/
def P9242825884760862447.Spec : Prop :=
  ∀ n, P9242825884760862447.a n = A255563 n

end A255563

/-! ## A255563.P2531938341637861961

`A026741(n)-(A038608(n)+A026741(A026741(n)))`
-/

namespace A255563.P2531938341637861961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n - (A038608 n + A026741 (A026741 n).toNat)

end

end A255563.P2531938341637861961

namespace A255563

/-- `A026741(n)-(A038608(n)+A026741(A026741(n)))` -/
def P2531938341637861961.Spec : Prop :=
  ∀ n, P2531938341637861961.a n = A255563 n

end A255563

/-! ## A255563.P7290686994216302443

`A165351(n)-(A026741(A026741(n))+A022998(n))`
-/

namespace A255563.P7290686994216302443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 n - (A026741 (A026741 n).toNat + A022998 n)

end

end A255563.P7290686994216302443

namespace A255563

/-- `A165351(n)-(A026741(A026741(n))+A022998(n))` -/
def P7290686994216302443.Spec : Prop :=
  ∀ n, P7290686994216302443.a n = A255563 n

end A255563

/-! ## A255563.P3205022594377461945

`A026741(n)+A184418(A026741(n))-A184418(n)`
-/

namespace A255563.P3205022594377461945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A184418 (A026741 n).toNat - A184418 n)

end

end A255563.P3205022594377461945

namespace A255563

/-- `A026741(n)+A184418(A026741(n))-A184418(n)` -/
def P3205022594377461945.Spec : Prop :=
  ∀ n, P3205022594377461945.a n = A255563 n

end A255563

/-! ## A255563.P9814178140138610992

`A142150(A064680(n))-2*A142150(n)`
-/

namespace A255563.P9814178140138610992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A064680 n).toNat - 2 * A142150 n

end

end A255563.P9814178140138610992

namespace A255563

/-- `A142150(A064680(n))-2*A142150(n)` -/
def P9814178140138610992.Spec : Prop :=
  ∀ n, P9814178140138610992.a n = A255563 n

end A255563

/-! ## A255563.P5650337729444061982

`A237420(A064680(n))/2-A237420(n)`
-/

namespace A255563.P5650337729444061982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237420 (A064680 n).toNat : ℚ) / 2 - (A237420 n : ℚ)

end

end A255563.P5650337729444061982

namespace A255563

/-- `A237420(A064680(n))/2-A237420(n)` -/
def P5650337729444061982.Spec : Prop :=
  ∀ n, P5650337729444061982.a n = (A255563 n : ℚ)

end A255563

/-! ## A255563.P4906293848615768529

`A142150(A064680(n))-A005843(A142150(n))`
-/

namespace A255563.P4906293848615768529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A064680 n).toNat - A005843 (A142150 n).toNat

end

end A255563.P4906293848615768529

namespace A255563

/-- `A142150(A064680(n))-A005843(A142150(n))` -/
def P4906293848615768529.Spec : Prop :=
  ∀ n, P4906293848615768529.a n = A255563 n

end A255563

/-! ## A255563.P16922891134228395429

`A064680(A237420(A064680(n)))-A237420(n)`
-/

namespace A255563.P16922891134228395429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A237420 (A064680 n).toNat).toNat - A237420 n

end

end A255563.P16922891134228395429

namespace A255563

/-- `A064680(A237420(A064680(n)))-A237420(n)` -/
def P16922891134228395429.Spec : Prop :=
  ∀ n, P16922891134228395429.a n = A255563 n

end A255563

/-! ## A255563.P10553922559339337372

`A142150(A142150(n))-A076118(A008585(n))`
-/

namespace A255563.P10553922559339337372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 n).toNat - A076118 (A008585 n).toNat

end

end A255563.P10553922559339337372

namespace A255563

/-- `A142150(A142150(n))-A076118(A008585(n))` -/
def P10553922559339337372.Spec : Prop :=
  ∀ n, P10553922559339337372.a n = A255563 n

end A255563

/-! ## A255563.P10860241956847039990

`A142150(A109045(n)-A142150(n))-n`
-/

namespace A255563.P10860241956847039990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A109045 n - A142150 n).toNat - (n : ℤ)

end

end A255563.P10860241956847039990

namespace A255563

/-- `A142150(A109045(n)-A142150(n))-n` -/
def P10860241956847039990.Spec : Prop :=
  ∀ n, P10860241956847039990.a n = A255563 n

end A255563

/-!
# A255564: Primes having in binary representation a nonprime number of 1's.

The programs for A255564, the canonical program `A255564.P8935569486323325449` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255564 has offset 1).

The definition of A255564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255564.P8935569486323325449

`p?[A010051(A014499(n+1))+A000040(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255564

/-- `p?[A010051(A014499(n+1))+A000040(n+1)]` -/
def P8935569486323325449.Spec : Prop :=
  ∀ n, P8935569486323325449.a n = A255564 (n + 1)

theorem P8935569486323325449.correct : P8935569486323325449.Spec := by
  intro n
  simp only [A255564, Nat.add_sub_cancel]

end A255564

/-! ## A255564.P15100289429154625358

`p?[n+1-(A010051(A000120(n)+1)-n)]`
-/

namespace A255564.P15100289429154625358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A010051 (A000120 n + 1).toNat - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255564.P15100289429154625358

namespace A255564

/-- `p?[n+1-(A010051(A000120(n)+1)-n)]` -/
def P15100289429154625358.Spec : Prop :=
  ∀ n, P15100289429154625358.a n = A255564 (n + 1)

end A255564

/-! ## A255564.P18135069645855202439

`p?[n+1+A322867(A000120(n+1)+1)+n]`
-/

namespace A255564.P18135069645855202439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A322867 (A000120 (n + 1) + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255564.P18135069645855202439

namespace A255564

/-- `p?[n+1+A322867(A000120(n+1)+1)+n]` -/
def P18135069645855202439.Spec : Prop :=
  ∀ n, P18135069645855202439.a n = A255564 (n + 1)

end A255564

/-! ## A255564.P10001197572746636894

`p?[A084345(n+1)]`
-/

namespace A255564.P10001197572746636894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255564.P10001197572746636894

namespace A255564

/-- `p?[A084345(n+1)]` -/
def P10001197572746636894.Spec : Prop :=
  ∀ n, P10001197572746636894.a n = A255564 (n + 1)

end A255564

/-! ## A255564.P6742843371726290626

`filter[A084345(n+2), A010051(#)]`
-/

namespace A255564.P6742843371726290626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A255564.P6742843371726290626

namespace A255564

/-- `filter[A084345(n+2), A010051(#)]` -/
def P6742843371726290626.Spec : Prop :=
  ∀ n, P6742843371726290626.a n = A255564 (n + 1)

end A255564

/-! ## A255564.P10404772622209285804

`filter[A084345(n+2), A323153(#)]`
-/

namespace A255564.P10404772622209285804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A255564.P10404772622209285804

namespace A255564

/-- `filter[A084345(n+2), A323153(#)]` -/
def P10404772622209285804.Spec : Prop :=
  ∀ n, P10404772622209285804.a n = A255564 (n + 1)

end A255564

/-! ## A255564.P16745208425973010998

`∩[A000040(n+1), A084345(n+1)]`
-/

namespace A255564.P16745208425973010998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255564.P16745208425973010998

namespace A255564

/-- `∩[A000040(n+1), A084345(n+1)]` -/
def P16745208425973010998.Spec : Prop :=
  ∀ n, (P16745208425973010998.a n : ℤ) = A255564 (n + 1)

end A255564

/-! ## A255564.P10511786245815576129

`∩[A045319(n+1), A084345(n+1)]`
-/

namespace A255564.P10511786245815576129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255564.P10511786245815576129

namespace A255564

/-- `∩[A045319(n+1), A084345(n+1)]` -/
def P10511786245815576129.Spec : Prop :=
  ∀ n, (P10511786245815576129.a n : ℤ) = A255564 (n + 1)

end A255564

/-! ## A255564.P8729056418737608987

`∩[A045344(n+1), A084345(n+1)]`
-/

namespace A255564.P8729056418737608987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255564.P8729056418737608987

namespace A255564

/-- `∩[A045344(n+1), A084345(n+1)]` -/
def P8729056418737608987.Spec : Prop :=
  ∀ n, (P8729056418737608987.a n : ℤ) = A255564 (n + 1)

end A255564

/-! ## A255564.P1644565178673482959

`∩[A053813(n+1), A084345(n+1)]`
-/

namespace A255564.P1644565178673482959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255564.P1644565178673482959

namespace A255564

/-- `∩[A053813(n+1), A084345(n+1)]` -/
def P1644565178673482959.Spec : Prop :=
  ∀ n, (P1644565178673482959.a n : ℤ) = A255564 (n + 1)

end A255564

/-! ## A255564.P7880064583611592794

`∩[A084345(n+1), A116974(n+1)]`
-/

namespace A255564.P7880064583611592794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255564.P7880064583611592794

namespace A255564

/-- `∩[A084345(n+1), A116974(n+1)]` -/
def P7880064583611592794.Spec : Prop :=
  ∀ n, (P7880064583611592794.a n : ℤ) = A255564 (n + 1)

end A255564

/-! ## A255564.P3934178321572142593

`∩[A084345(n+1), A138837(n+1)]`
-/

namespace A255564.P3934178321572142593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255564.P3934178321572142593

namespace A255564

/-- `∩[A084345(n+1), A138837(n+1)]` -/
def P3934178321572142593.Spec : Prop :=
  ∀ n, (P3934178321572142593.a n : ℤ) = A255564 (n + 1)

end A255564

/-! ## A255564.P2769601512750303899

`∩[A084345(n+1), A197636(n+1)]`
-/

namespace A255564.P2769601512750303899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255564.P2769601512750303899

namespace A255564

/-- `∩[A084345(n+1), A197636(n+1)]` -/
def P2769601512750303899.Spec : Prop :=
  ∀ n, (P2769601512750303899.a n : ℤ) = A255564 (n + 1)

end A255564

/-! ## A255564.P6391543570699624239

`record[A014963(A084345(n+3))]`
-/

namespace A255564.P6391543570699624239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A084345 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255564.P6391543570699624239

namespace A255564

/-- `record[A014963(A084345(n+3))]` -/
def P6391543570699624239.Spec : Prop :=
  ∀ n, P6391543570699624239.a n = A255564 (n + 1)

end A255564

/-! ## A255564.P17007657045502251785

`filter[A084345(n+3), A080339(#)]`
-/

namespace A255564.P17007657045502251785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A255564.P17007657045502251785

namespace A255564

/-- `filter[A084345(n+3), A080339(#)]` -/
def P17007657045502251785.Spec : Prop :=
  ∀ n, P17007657045502251785.a n = A255564 (n + 1)

end A255564

/-! ## A255564.P6279207716140481159

`eq[2, A226378(2*n)+A137331(n)]`
-/

namespace A255564.P6279207716140481159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * n) + A137331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255564.P6279207716140481159

namespace A255564

/-- `eq[2, A226378(2*n)+A137331(n)]` -/
def P6279207716140481159.Spec : Prop :=
  ∀ n, (P6279207716140481159.a n : ℤ) = A255564 (n + 1)

end A255564

/-!
# A255565: a(0) = 0; for n >= 1: if n = A255411(k) for some k, then a(n) = 2*a(k), otherwise, n = A256450(h) for some h, and a(n) = 1 + 2*a(h).

The programs for A255565, there is no canonical definition to state claims against.
-/

/-! ## A255565.P9369888880386307844

`A273665(A273668(n))`
-/

namespace A255565.P9369888880386307844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 (A273668 n).toNat

end

end A255565.P9369888880386307844

/-! ## A255565.P12824786894596866400

`A273665(A275838(A225901(n)))`
-/

namespace A255565.P12824786894596866400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 (A275838 (A225901 n).toNat).toNat

end

end A255565.P12824786894596866400

/-! ## A255565.P1571491057198182676

`A273665(A225901(A275836(n)))`
-/

namespace A255565.P1571491057198182676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 (A225901 (A275836 n).toNat).toNat

end

end A255565.P1571491057198182676

/-! ## A255565.P15878725398319275477

`A273665(A275838(A273667(A275838(n))))`
-/

namespace A255565.P15878725398319275477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 (A275838 (A273667 (A275838 n).toNat).toNat).toNat

end

end A255565.P15878725398319275477

/-! ## A255565.P18167808914964872231

`A035327(A107326(n+1)^A165661(n))`
-/

namespace A255565.P18167808914964872231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (SequenceMachineLib.roundAway ((A107326 (n + 1) : ℚ) ^ (A165661 n : ℤ))).toNat

end

end A255565.P18167808914964872231

/-!
# A255566: a(0) = 0; after which, a(2n) = A255411(a(n)), a(2n+1) = A256450(a(n)).

The programs for A255566, there is no canonical definition to state claims against.
-/

/-! ## A255566.P2127542283405162036

`A273667(A273666(n))`
-/

namespace A255566.P2127542283405162036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A273666 n).toNat

end

end A255566.P2127542283405162036

/-! ## A255566.P14614241573761768473

`A051903(A109154(n))*A255399(2*n+1)`
-/

namespace A255566.P14614241573761768473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A109154 n).toNat * A255399 (2 * n + 1)

end

end A255566.P14614241573761768473

/-!
# A255567: a(1) = 1, a(2) = 2, after which, a(2n+1) = 1 + a(2n), a(2n) = A255411(a(n)).

The programs for A255567, there is no canonical definition to state claims against.
-/

/-! ## A255567.P17438038529656352739

`record[A276012(n)+C(2, n+2)]`
-/

namespace A255567.P17438038529656352739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 n + (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255567.P17438038529656352739

/-! ## A255567.P14904261501462617061

`A000007(n)+record[A276012(n)]`
-/

namespace A255567.P14904261501462617061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255567.P14904261501462617061

/-! ## A255567.P3813845181767810303

`or(record[A276012(n)], A059841(n))`
-/

namespace A255567.P3813845181767810303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A059841 n)

end

end A255567.P3813845181767810303

/-! ## A255567.P1407997367949252102

`A071675(∑[n])+record[A276012(n)]`
-/

namespace A255567.P1407997367949252102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (∑ j ∈ Finset.range (n + 1), f1 j) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A255567.P1407997367949252102

/-! ## A255567.P17650863923930921905

`or(A000035(n+1), record[A276012(n)])`
-/

namespace A255567.P17650863923930921905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A255567.P17650863923930921905

/-! ## A255567.P7944786623466885183

`or(1-A000035(n), record[A276012(n)])`
-/

namespace A255567.P7944786623466885183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A000035 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A255567.P7944786623466885183

/-! ## A255567.P6465427486779256260

`A209229(n²+2)+record[A276012(n)]`
-/

namespace A255567.P6465427486779256260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n ^ 2 + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255567.P6465427486779256260

/-! ## A255567.P12720450177562227

`record[A292438(A006530(n+1))+A276012(n)]`
-/

namespace A255567.P12720450177562227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A006530 (n + 1)).toNat + A276012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255567.P12720450177562227

/-! ## A255567.P1359577107680029452

`record[A261098(record[A275957(n)])]`
-/

namespace A255567.P1359577107680029452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261098 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255567.P1359577107680029452

/-!
# A255568: Numbers in whose binary representation there are six 1-bits more than there are nonleading 0-bits.

The programs for A255568, there is no canonical definition to state claims against.
-/

/-! ## A255568.P3557072340305585829

`record[A030301(A031468(n+1))*A031468(n+1)]`
-/

namespace A255568.P3557072340305585829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A031468 (n + 1)).toNat * A031468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255568.P3557072340305585829

/-! ## A255568.P286394494455013937

`eq[6, A145037(n)]`
-/

namespace A255568.P286394494455013937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255568.P286394494455013937

/-! ## A255568.P16620549413497583105

`∩[A031468(n+1), A053754(n+1)]`
-/

namespace A255568.P16620549413497583105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255568.P16620549413497583105

/-! ## A255568.P17565631747676098611

`eq[6, -A037861(n)]`
-/

namespace A255568.P17565631747676098611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255568.P17565631747676098611

/-! ## A255568.P4763548698800410754

`eq[6, 1-A037861(2*n)]`
-/

namespace A255568.P4763548698800410754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037861 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255568.P4763548698800410754

/-! ## A255568.P16718916415869773454

`A298847(A031447(n+1))`
-/

namespace A255568.P16718916415869773454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A031447 (n + 1)).toNat

end

end A255568.P16718916415869773454

/-!
# A255569: Primes whose binary representation encodes an irreducible polynomial over GF(2) and has a nonprime number of 1's.

The programs for A255569, there is no canonical definition to state claims against.
-/

/-! ## A255569.P14846966972086930246

`∩[A091206(n+1), A255564(n+1)]`
-/

namespace A255569.P14846966972086930246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255569.P14846966972086930246

/-! ## A255569.P4248772258983501742

`∩[A014580(n+1), A255564(n+1)]`
-/

namespace A255569.P4248772258983501742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255569.P4248772258983501742

/-! ## A255569.P2371577489704503606

`∩[A235032(n+1), A255564(n+1)]`
-/

namespace A255569.P2371577489704503606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255569.P2371577489704503606

/-! ## A255569.P9785343646427681335

`∩[A305420(a(n-1)), A255564(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A255569.P9785343646427681335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A305420 (f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255569.P9785343646427681335

/-! ## A255569.P16775654271630360265

`p?[A235041(A255564(n+1))]`
-/

namespace A255569.P16775654271630360265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235041 (A255564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255569.P16775654271630360265

/-!
# A255571: Numbers whose binary representation traces a nonselfcrossing circuit in honeycomb lattice when its bits (from the least to the second most significant bit) are interpreted as directions to proceed at each vertex. (The most significant 1-bit is ignored).

The programs for A255571, there is no canonical definition to state claims against.
-/

/-! ## A255571.P8825901976770175435

`A130446(A255570(n))`
-/

namespace A255571.P8825901976770175435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A255570 n).toNat

end

end A255571.P8825901976770175435

/-!
# A255572: a(n) = Number of terms larger than one in range 0 .. n of A205783.

The programs for A255572, there is no canonical definition to state claims against.
-/

/-! ## A255572.P10760750106612320906

`∑[char[A205783(n+2)]]`
-/

namespace A255572.P10760750106612320906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255572.P10760750106612320906

/-! ## A255572.P9978053485055375426

`A255573(C(2, n)+n)-1`
-/

namespace A255572.P9978053485055375426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 (Nat.choose 2 n + n) - 1

end

end A255572.P9978053485055375426

/-! ## A255572.P7923227634762971440

`A255573(or(n, C(3, n)))-1`
-/

namespace A255572.P7923227634762971440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 (Nat.lor n (Nat.choose 3 n)) - 1

end

end A255572.P7923227634762971440

/-! ## A255572.P10585699507303693913

`n-∑[char[A305429(n+1)]]`
-/

namespace A255572.P10585699507303693913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255572.P10585699507303693913

/-! ## A255572.P3040859218204615621

`A255573(n)+A057428(n)`
-/

namespace A255572.P3040859218204615621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 n + A057428 n

end

end A255572.P3040859218204615621

/-! ## A255572.P17441971077216185030

`A255573(n)-A057427(n)`
-/

namespace A255572.P17441971077216185030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 n - A057427 n

end

end A255572.P17441971077216185030

/-! ## A255572.P4041979046021574044

`A255573(A000007(n)+n)-1`
-/

namespace A255572.P4041979046021574044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 (A000007 n + (n : ℤ)).toNat - 1

end

end A255572.P4041979046021574044

/-! ## A255572.P17383334291595561620

`A255573(n)-(1-A000007(n))`
-/

namespace A255572.P17383334291595561620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 n - (1 - A000007 n)

end

end A255572.P17383334291595561620

/-! ## A255572.P18424017564217977728

`A004273(n)-(A255574(n)+n)`
-/

namespace A255572.P18424017564217977728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - (A255574 n + (n : ℤ))

end

end A255572.P18424017564217977728

/-! ## A255572.P5382089274400412340

`∑[A006522(C(A305429(n+1), n))]`
-/

namespace A255572.P5382089274400412340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 (Nat.choose (A305429 (n + 1)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255572.P5382089274400412340

/-! ## A255572.P17135810366635174805

`A255573(n)-A005171(2*(n+1))`
-/

namespace A255572.P17135810366635174805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255573 n - A005171 (2 * (n + 1))

end

end A255572.P17135810366635174805

/-!
# A255573: a(n) = Number of terms of A205783 (including 1) in range 0 .. n.

The programs for A255573, there is no canonical definition to state claims against.
-/

/-! ## A255573.P14396524360064313146

`n-A255574(n)`
-/

namespace A255573.P14396524360064313146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255574 n

end

end A255573.P14396524360064313146

/-! ## A255573.P2730293371041667128

`n-∑[A257000(n)]`
-/

namespace A255573.P2730293371041667128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255573.P2730293371041667128

/-! ## A255573.P13068590761286771868

`∑[char[A205783(n+1)]]`
-/

namespace A255573.P13068590761286771868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255573.P13068590761286771868

/-! ## A255573.P13985988938157614001

`(A255572(n)+1)%(n+1)`
-/

namespace A255573.P13985988938157614001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255572 n + 1) (n + 1 : ℤ)

end

end A255573.P13985988938157614001

/-! ## A255573.P862808669252823275

`n-∑[char[A206074(n+1)]]`
-/

namespace A255573.P862808669252823275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255573.P862808669252823275

/-! ## A255573.P13248290602233848136

`n-∑[char[A305430(n+1)]]`
-/

namespace A255573.P13248290602233848136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255573.P13248290602233848136

/-! ## A255573.P17850791137712571176

`∑[char[lt[A257000(n+1), 1]+1]]`
-/

namespace A255573.P17850791137712571176
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255573.P17850791137712571176

/-! ## A255573.P6675617849580026220

`A255572(n)+A057427(n)`
-/

namespace A255573.P6675617849580026220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255572 n + A057427 n

end

end A255573.P6675617849580026220

/-! ## A255573.P6828596781224225835

`A255572(n)-A057428(n)`
-/

namespace A255573.P6828596781224225835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255572 n - A057428 n

end

end A255573.P6828596781224225835

/-! ## A255573.P18163589757014888071

`A255572(n)+A066247(2*(n+1))`
-/

namespace A255573.P18163589757014888071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255572 n + A066247 (2 * (n + 1))

end

end A255573.P18163589757014888071

/-! ## A255573.P6917069227013220875

`A305821(A206075(n+1))+A255572(n)`
-/

namespace A255573.P6917069227013220875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (A206075 (n + 1)).toNat + A255572 n

end

end A255573.P6917069227013220875

/-! ## A255573.P12462585866232267604

`∑[(A257000(n)+A001221(A074816(n+1)))%2]`
-/

namespace A255573.P12462585866232267604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257000 n + A001221 (A074816 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255573.P12462585866232267604

/-! ## A255573.P1133315537480797317

`A257000(n+1)+A255572(n+1)`
-/

namespace A255573.P1133315537480797317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (n + 1) + A255572 (n + 1)

end

end A255573.P1133315537480797317

/-!
# A255574: a(n) = Number of terms of A206074 in range 0 .. n.

The programs for A255574, there is no canonical definition to state claims against.
-/

/-! ## A255574.P4925498699319283720

`A257000(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A255574.P4925498699319283720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A257000 n + a (n - 1)

end

end A255574.P4925498699319283720

/-! ## A255574.P8777286908715171134

`n-A255573(n)`
-/

namespace A255574.P8777286908715171134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255573 n

end

end A255574.P8777286908715171134

/-! ## A255574.P604342638395874922

`∑[A257000(n)]`
-/

namespace A255574.P604342638395874922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255574.P604342638395874922

/-! ## A255574.P4366577422023931223

`∑[char[A206074(n+1)]]`
-/

namespace A255574.P4366577422023931223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255574.P4366577422023931223

/-! ## A255574.P11008303111793996920

`∑[char[A305430(n+1)]]`
-/

namespace A255574.P11008303111793996920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255574.P11008303111793996920

/-! ## A255574.P17532056842851535696

`∑[char[A305429(n+3)]]`
-/

namespace A255574.P17532056842851535696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305429 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255574.P17532056842851535696

/-! ## A255574.P11623610537828076616

`n-∑[char[A205783(n+1)]]`
-/

namespace A255574.P11623610537828076616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255574.P11623610537828076616

/-! ## A255574.P15748429251515168093

`n-(A255572(n)+A057427(n))`
-/

namespace A255574.P15748429251515168093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A255572 n + A057427 n)

end

end A255574.P15748429251515168093

/-! ## A255574.P17870810858764807980

`A057428(n)+n-A255572(n)`
-/

namespace A255574.P17870810858764807980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ((n : ℤ) - A255572 n)

end

end A255574.P17870810858764807980

/-! ## A255574.P14156613232998291574

`A057428(n)*A255573(n)+n`
-/

namespace A255574.P14156613232998291574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A255573 n + (n : ℤ)

end

end A255574.P14156613232998291574

/-! ## A255574.P13565442836364339481

`n-(A257000(n+1)+A255572(n+1))`
-/

namespace A255574.P13565442836364339481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A257000 (n + 1) + A255572 (n + 1))

end

end A255574.P13565442836364339481

/-! ## A255574.P10244065141178942912

`A255572(A205783(n+1)-1)-A255572(n)`
-/

namespace A255574.P10244065141178942912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255572 (A205783 (n + 1) - 1).toNat - A255572 n

end

end A255574.P10244065141178942912

/-!
# A255575: a(n) = floor(((sqrt(sqrt(3))^3)/sqrt(Pi))^n).

The programs for A255575, there is no canonical definition to state claims against.
-/

/-! ## A255575.P1452032014492116670

`A003057(A202342(floor(sinh(n/2)/2)+1)+2)-2`
-/

namespace A255575.P1452032014492116670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A202342 (⌊Real.sinh ((n : ℚ) / 2 : ℝ) / 2⌋ + 1).toNat + 2).toNat - 2

end

end A255575.P1452032014492116670

/-! ## A255575.P16836127347670112099

`A259361(A306486(n+2)+floor(sqrt((4/π)^(n+1))))`
-/

namespace A255575.P16836127347670112099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A306486 (n + 2) + ⌊Real.sqrt ((4 / Real.pi) ^ (n + 1))⌋).toNat

end

end A255575.P16836127347670112099

/-! ## A255575.P9125314632494896829

`A000196(A120118(n)-A000065(n))`
-/

namespace A255575.P9125314632494896829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A120118 n - A000065 n).toNat

end

end A255575.P9125314632494896829

/-! ## A255575.P15074944970736737664

`A000196(A306486(n+2)-A061287(n))`
-/

namespace A255575.P15074944970736737664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A306486 (n + 2) - A061287 n).toNat

end

end A255575.P15074944970736737664

/-! ## A255575.P4825439121273827256

`A085141(A367691(n+1))`
-/

namespace A255575.P4825439121273827256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A367691 (n + 1)).toNat

end

end A255575.P4825439121273827256

/-!
# A255577: Numbers n not coprime to 10 such that there exists an integer k > 1 where n^k contains n as its last digits in base 10.

The programs for A255577, there is no canonical definition to state claims against.
-/

/-! ## A255577.P12083263889212749570

`lt[A231204(n), A007887(A059365(2*n+1))]`
-/

namespace A255577.P12083263889212749570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 (A059365 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255577.P12083263889212749570

/-!
# A255581: Numbers prime(n) such that prime(n)^2 + prime(n+1)^2 - prime(n+2)^2 is prime.

The programs for A255581, there is no canonical definition to state claims against.
-/

/-! ## A255581.P14196792594622220463

`A008578(lt[A096532(3*(n+1)), A029619(n)])`
-/

namespace A255581.P14196792594622220463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255581.P14196792594622220463

/-! ## A255581.P1240877249766285116

`p?[A196036(n+1)+A196033(3*n+5)]`
-/

namespace A255581.P1240877249766285116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196036 (n + 1) + A196033 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255581.P1240877249766285116

/-! ## A255581.P13686689000940356685

`A135779(lt[A277046(n+1), A092437(2*n+1)])`
-/

namespace A255581.P13686689000940356685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092437 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135779 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255581.P13686689000940356685

/-! ## A255581.P17499558819295570814

`A135779(lt[A277061(n+1), A092437(2*n+1)])`
-/

namespace A255581.P17499558819295570814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092437 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135779 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255581.P17499558819295570814

/-! ## A255581.P4674463956839142894

`A000040(lt[A006146(n+1), A140735(3*n+2)])`
-/

namespace A255581.P4674463956839142894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140735 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255581.P4674463956839142894

/-!
# A255582: a(n)=n when n <= 3, otherwise a(n) is the smallest positive number not yet in the sequence such that gcd(a(n), a(n-1)) <= gcd(a(n), a(n-2)) > 1.

The programs for A255582, there is no canonical definition to state claims against.
-/

/-! ## A255582.P2697556556691980536

`A254077(n+1)-A256974(n)`
-/

namespace A255582.P2697556556691980536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1) - A256974 n

end

end A255582.P2697556556691980536

/-! ## A255582.P2683730851105859259

`A254077(n+1)+A134824(n)*A256974(n)`
-/

namespace A255582.P2683730851105859259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1) + A134824 n * A256974 n

end

end A255582.P2683730851105859259

/-! ## A255582.P399651948361008663

`A254077(n+1)+A256974(n)*A260196(n)`
-/

namespace A255582.P399651948361008663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1) + A256974 n * A260196 n

end

end A255582.P399651948361008663

/-! ## A255582.P1191382812288104618

`A254077(n+1)-∑{p}[A124774(A186727(n)), #]`
-/

namespace A255582.P1191382812288104618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A186727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A255582.P1191382812288104618

/-! ## A255582.P10591693609213475591

`A254077(n+1)-A185255(n+2)%12`
-/

namespace A255582.P10591693609213475591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254077 (n + 1) - Int.tmod (A185255 (n + 2)) 12

end

end A255582.P10591693609213475591

/-!
# A255584: Semiprimes of the form (4*n + 1)*(6*n + 1) = 24*n^2 + 10*n + 1.

The programs for A255584, the canonical program `A255584.P14636303961363921140` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255584 has offset 1).

The definition of A255584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255584.P14636303961363921140

`A033570(A130800(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A255584

/-- `A033570(A130800(n+1))` -/
def P14636303961363921140.Spec : Prop :=
  ∀ n, P14636303961363921140.a n = A255584 (n + 1)

theorem P14636303961363921140.correct : P14636303961363921140.Spec := by
  intro n
  simp only [A255584, Nat.add_sub_cancel]

end A255584

/-! ## A255584.P22731024796660201

`A033570(2*A255607(n+1))`
-/

namespace A255584.P22731024796660201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 (2 * A255607 (n + 1)).toNat

end

end A255584.P22731024796660201

namespace A255584

/-- `A033570(2*A255607(n+1))` -/
def P22731024796660201.Spec : Prop :=
  ∀ n, P22731024796660201.a n = A255584 (n + 1)

end A255584

/-! ## A255584.P8220932950190112749

`A000326(A158708(n+2))`
-/

namespace A255584.P8220932950190112749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A158708 (n + 2)).toNat

end

end A255584.P8220932950190112749

namespace A255584

/-- `A000326(A158708(n+2))` -/
def P8220932950190112749.Spec : Prop :=
  ∀ n, P8220932950190112749.a n = A255584 (n + 1)

end A255584

/-! ## A255584.P15934002451344530658

`A000326(p?[A114439(n+1)])`
-/

namespace A255584.P15934002451344530658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A255584.P15934002451344530658

namespace A255584

/-- `A000326(p?[A114439(n+1)])` -/
def P15934002451344530658.Spec : Prop :=
  ∀ n, P15934002451344530658.a n = A255584 (n + 1)

end A255584

/-! ## A255584.P3186654458654558210

`A036499(p?[A114439(n+1)])`
-/

namespace A255584.P3186654458654558210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036499 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A255584.P3186654458654558210

namespace A255584

/-- `A036499(p?[A114439(n+1)])` -/
def P3186654458654558210.Spec : Prop :=
  ∀ n, P3186654458654558210.a n = A255584 (n + 1)

end A255584

/-!
# A255585: Composite numbers k such that Sum_{i=1..t-1} d(i+1)/d(i) is prime, where d(1), ..., d(t) are the divisors of k in ascending order.

The programs for A255585, there is no canonical definition to state claims against.
-/

/-! ## A255585.P5575373223068956632

`A335249(A261682(n)+1)`
-/

namespace A255585.P5575373223068956632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335249 (A261682 n + 1).toNat

end

end A255585.P5575373223068956632

/-!
# A255586: Composite k such that Sum_{i=1..t-1} d(i+1)/d(i) is an integer, where d(1), ..., d(t) are the divisors of k in ascending order.

The programs for A255586, there is no canonical definition to state claims against.
-/

/-! ## A255586.P18028114328457406725

`lt[A007913(n+1), A107016(A090288(n+2)+1)]+1`
-/

namespace A255586.P18028114328457406725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (A090288 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A255586.P18028114328457406725

/-! ## A255586.P753540738349749437

`A069189(gcd(A069219(2*(n+1)), A069224(n+1)))`
-/

namespace A255586.P753540738349749437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (Int.gcd (A069219 (2 * (n + 1))) (A069224 (n + 1)))

end

end A255586.P753540738349749437

/-! ## A255586.P11516345281803510212

`A070003(n+1)+A048105(A342155(n))`
-/

namespace A255586.P11516345281803510212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1) + A048105 (A342155 n).toNat

end

end A255586.P11516345281803510212

/-! ## A255586.P10083323885326098063

`A368094(A011117(n))+A325661(n+2)`
-/

namespace A255586.P10083323885326098063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 (A011117 n).toNat + A325661 (n + 2)

end

end A255586.P10083323885326098063

/-!
# A255588: Convert n to base 3, move the least significant digit to the most significant one and convert back to base 10.

The programs for A255588, there is no canonical definition to state claims against.
-/

/-! ## A255588.P1944165858270047349

`A055947(floor(n/3))+A030102(n)`
-/

namespace A255588.P1944165858270047349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 ⌊(n : ℚ) / 3⌋.toNat + A030102 n

end

end A255588.P1944165858270047349

/-! ## A255588.P10486644818160730463

`A055947(floor(n/3))+A055946(n)-n`
-/

namespace A255588.P10486644818160730463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 ⌊(n : ℚ) / 3⌋.toNat + (A055946 n - (n : ℤ))

end

end A255588.P10486644818160730463

/-! ## A255588.P16801426866297147580

`A055947(A002264(n))+n-A055947(n)`
-/

namespace A255588.P16801426866297147580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A002264 n).toNat + ((n : ℤ) - A055947 n)

end

end A255588.P16801426866297147580

/-! ## A255588.P14002125309097902566

`A055947(A002264(n))+A004488(A137305(n))`
-/

namespace A255588.P14002125309097902566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A002264 n).toNat + A004488 (A137305 n).toNat

end

end A255588.P14002125309097902566

/-! ## A255588.P4526054637442961285

`A055947(A002264(n))+A028898(A305877(n))`
-/

namespace A255588.P4526054637442961285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A002264 n).toNat + A028898 (A305877 n).toNat

end

end A255588.P4526054637442961285

/-!
# A255589: Convert n to base 4, move the least significant digit to the most significant one and convert back to base 10.

The programs for A255589, there is no canonical definition to state claims against.
-/

/-! ## A255589.P770188005978779646

`A055949(floor(n/4))+A030103(n)`
-/

namespace A255589.P770188005978779646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 ⌊(n : ℚ) / 4⌋.toNat + A030103 n

end

end A255589.P770188005978779646

/-! ## A255589.P1183902902703307447

`A055949(floor(n/4))+n-A055949(n)`
-/

namespace A255589.P1183902902703307447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 ⌊(n : ℚ) / 4⌋.toNat + ((n : ℤ) - A055949 n)

end

end A255589.P1183902902703307447

/-! ## A255589.P1059352813198283934

`A055949(A002265(n))-(n-A055948(n))`
-/

namespace A255589.P1059352813198283934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 (A002265 n).toNat - ((n : ℤ) - A055948 n)

end

end A255589.P1059352813198283934

/-! ## A255589.P7981785475137762475

`A343321(∑[A343330(n+1)])+A030103(n)`
-/

namespace A255589.P7981785475137762475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A030103 n

end

end A255589.P7981785475137762475

/-!
# A255590: Convert n to base 5, move the least significant digit to the most significant one and convert back to base 10.

The programs for A255590, there is no canonical definition to state claims against.
-/

/-! ## A255590.P4166221288063465718

`A055951(A002266(n))+A030104(n)`
-/

namespace A255590.P4166221288063465718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 (A002266 n).toNat + A030104 n

end

end A255590.P4166221288063465718

/-! ## A255590.P1795680355741712432

`A055951(A002266(n))+n-A055951(n)`
-/

namespace A255590.P1795680355741712432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 (A002266 n).toNat + ((n : ℤ) - A055951 n)

end

end A255590.P1795680355741712432

/-! ## A255590.P13109439430613345759

`((24*n%5+n)/5)%A004482(∏[gcd(2, n)]-1)`
-/

namespace A255590.P13109439430613345759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((24 * (n % 5) + n : ℕ) : ℚ) / 5)) (A004482 (∏ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A255590.P13109439430613345759

/-! ## A255590.P10407279142974846037

`A030104(n)*A337337(A321355(n))`
-/

namespace A255590.P10407279142974846037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n * A337337 (A321355 n).toNat

end

end A255590.P10407279142974846037

/-! ## A255590.P4038576862502803649

`or(A030104(n), A303534(A349059(3*n+5)))`
-/

namespace A255590.P4038576862502803649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030104 n) (A303534 (A349059 (3 * n + 5)).toNat)

end

end A255590.P4038576862502803649

/-!
# A255593: Convert n to base 8, move least significant digit to most significant digit and convert back to base 10.

The programs for A255593, there is no canonical definition to state claims against.
-/

/-! ## A255593.P12227232181126557725

`A055957(A132292(n+1))+A030107(n)`
-/

namespace A255593.P12227232181126557725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 (A132292 (n + 1)).toNat + A030107 n

end

end A255593.P12227232181126557725

/-! ## A255593.P16160405557227322067

`A055957(A132292(n+1))+n-A055957(n)`
-/

namespace A255593.P16160405557227322067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 (A132292 (n + 1)).toNat + ((n : ℤ) - A055957 n)

end

end A255593.P16160405557227322067

/-! ## A255593.P332304348653378600

`A055957(A132292(n+1))+A196199(n²)+A055956(n)`
-/

namespace A255593.P332304348653378600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 (A132292 (n + 1)).toNat + (A196199 (n ^ 2) + A055956 n)

end

end A255593.P332304348653378600

/-!
# A255594: Convert n to base 9, move least significant digit to most significant digit and convert back to base 10.

The programs for A255594, there is no canonical definition to state claims against.
-/

/-! ## A255594.P9741901557960485421

`A055959(A000196(n))+A265523(n)+A265556(n)-n`
-/

namespace A255594.P9741901557960485421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 (A000196 n).toNat + (A265523 n + (A265556 n - (n : ℤ)))

end

end A255594.P9741901557960485421

/-!
# A255596: Distinct-digit primes that are the concatenation of m and prime(m) for some number m.

The programs for A255596, there is no canonical definition to state claims against.
-/

/-! ## A255596.P17408907491400592197

`∩[A084667(n+1), A255729(n+1)]`
-/

namespace A255596.P17408907491400592197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255596.P17408907491400592197

/-! ## A255596.P14438080699361664243

`∩[A084667(n+1), A045532(A085451(n+1))]`
-/

namespace A255596.P14438080699361664243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (A085451 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255596.P14438080699361664243

/-! ## A255596.P3197053233222218284

`p?[A255729(n+1)]`
-/

namespace A255596.P3197053233222218284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255596.P3197053233222218284

/-! ## A255596.P17171354417723204337

`record[∑{p}[A255729(n+2), #]]`
-/

namespace A255596.P17171354417723204337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255729 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255596.P17171354417723204337

/-! ## A255596.P16831565184028825525

`record[p?[A255729(A052938(n))]]`
-/

namespace A255596.P16831565184028825525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255729 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255596.P16831565184028825525

/-!
# A255597: Upper bound on the number of different Euler diagrams for n classes.

The programs for A255597, there is no canonical definition to state claims against.
-/

/-! ## A255597.P4194626339859737135

`A045344(3*a(n-1)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A255597.P4194626339859737135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A045344 (3 * a (n - 1) * a (n - 2)).toNat

end

end A255597.P4194626339859737135

/-!
# A255598: a(n) is the minimal number q>1 such that n(q+1)-1 is prime, or -1 if no such q exists.

The programs for A255598, there is no canonical definition to state claims against.
-/

/-! ## A255598.P6491069865653108871

`A060324(n+1)-A025469(A000041(n))`
-/

namespace A255598.P6491069865653108871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (n + 1) - A025469 (A000041 n).toNat

end

end A255598.P6491069865653108871

/-! ## A255598.P4299471956736554153

`A060324(n+1)-A055641(A297362(n+1))`
-/

namespace A255598.P4299471956736554153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (n + 1) - A055641 (A297362 (n + 1)).toNat

end

end A255598.P4299471956736554153

/-! ## A255598.P8680219431711755507

`floor(A062251(n+1)/(n+1))-A055641(A297362(n+1))`
-/

namespace A255598.P8680219431711755507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062251 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - A055641 (A297362 (n + 1)).toNat

end

end A255598.P8680219431711755507

/-! ## A255598.P17410006328178174653

`(A062251(n+1)-n)/A000027(n+1)-A055641(A297362(n+1))`
-/

namespace A255598.P17410006328178174653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062251 (n + 1) - (n : ℤ) : ℚ) / (A000027 (n + 1) : ℚ) - (A055641 (A297362 (n + 1)).toNat : ℚ)

end

end A255598.P17410006328178174653

/-! ## A255598.P6917169944501373986

`(A062251(n+1)-n)/(n+1)%A002148(n)-A055641(A297362(n+1))`
-/

namespace A255598.P6917169944501373986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062251 (n + 1) - (n : ℤ) : ℚ) / (Int.tmod (n + 1 : ℤ) (A002148 n) : ℚ) - (A055641 (A297362 (n + 1)).toNat : ℚ)

end

end A255598.P6917169944501373986

