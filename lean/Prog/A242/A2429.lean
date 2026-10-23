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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A242900: Number of compositions of n into exactly two different parts with distinct multiplicities.

The programs for A242900, there is no canonical definition to state claims against.
-/

/-! ## A242900.P7511546645652453175

`record[gcd(A182485(n+7), A242896(n+9))]`
-/

namespace A242900.P7511546645652453175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182485 (n + 7)) (A242896 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242900.P7511546645652453175

/-!
# A242902: a(n) = 1 if either of A014574(n) + A014574(n+2) +- 1 is prime or 0 otherwise.

The programs for A242902, there is no canonical definition to state claims against.
-/

/-! ## A242902.P3453326449297677667

`A359550(A356225(2*(n+2))+A144436(n+1))`
-/

namespace A242902.P3453326449297677667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A356225 (2 * (n + 2)) + A144436 (n + 1)).toNat

end

end A242902.P3453326449297677667

/-! ## A242902.P3904375706840828612

`A047999(or(3, A316656(n+1)))`
-/

namespace A242902.P3904375706840828612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (Int.lor 3 (A316656 (n + 1))).toNat

end

end A242902.P3904375706840828612

/-! ## A242902.P1098248772895550570

`A359550(A270831(n+2)-n)`
-/

namespace A242902.P1098248772895550570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A270831 (n + 2) - (n : ℤ)).toNat

end

end A242902.P1098248772895550570

/-! ## A242902.P6239357896878356294

`A212793(A270831(n+2)+A014105(n))`
-/

namespace A242902.P6239357896878356294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (A270831 (n + 2) + A014105 n).toNat

end

end A242902.P6239357896878356294

/-! ## A242902.P8330428604356202853

`A254651(A342780(n+1)+A269303(n+1))`
-/

namespace A242902.P8330428604356202853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (A342780 (n + 1) + A269303 (n + 1)).toNat

end

end A242902.P8330428604356202853

/-!
# A242903: G.f. A(x) satisfies: coefficient of x^n in A(x)^(2*n) equals A000172(n) = Sum_{k=0..n} C(n,k)^3, the n-th Franel number.

The programs for A242903, there is no canonical definition to state claims against.
-/

/-! ## A242903.P8806184595397951978

`A087817(abs(1-n)!)`
-/

namespace A242903.P8806184595397951978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A242903.P8806184595397951978

/-! ## A242903.P12196658179283062475

`A261585(∑[A148336(n)])`
-/

namespace A242903.P12196658179283062475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242903.P12196658179283062475

/-! ## A242903.P13876112719344003533

`A230772(A106228(n)+2)`
-/

namespace A242903.P13876112719344003533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A106228 n + 2).toNat

end

end A242903.P13876112719344003533

/-! ## A242903.P3499298990412474951

`A187188(A045610(n)+3)`
-/

namespace A242903.P3499298990412474951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A045610 n + 3).toNat

end

end A242903.P3499298990412474951

/-! ## A242903.P1274973511288362347

`round(A323700(n+4)/A055856(n))`
-/

namespace A242903.P1274973511288362347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A323700 (n + 4) : ℚ) / (A055856 n : ℚ))

end

end A242903.P1274973511288362347

/-!
# A242904: a(n+1) is the smallest prime > a(n) such that the digits of a(n) are all (with multiplicity) contained in the digits of a(n+1), with a(1)=2.

The programs for A242904, there is no canonical definition to state claims against.
-/

/-! ## A242904.P17963000816723694684

`A199713(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A242904.P17963000816723694684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A199713 (A000720 (a (n - 1)).toNat).toNat

end

end A242904.P17963000816723694684

/-! ## A242904.P9233124877202267974

`A199713(A061395(a(n-1)))` with `a(0)=2`
-/

namespace A242904.P9233124877202267974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A199713 (A061395 (a (n - 1)).toNat).toNat

end

end A242904.P9233124877202267974

/-!
# A242905: a(n+1) is the smallest prime > a(n) such that the digits of a(n) are all (with multiplicity) contained in the digits of a(n+1), with a(1)=3.

The programs for A242905, there is no canonical definition to state claims against.
-/

/-! ## A242905.P2698284789020762810

`A199713(A000720(a(n-1)))` with `a(0)=3`
-/

namespace A242905.P2698284789020762810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A199713 (A000720 (a (n - 1)).toNat).toNat

end

end A242905.P2698284789020762810

/-! ## A242905.P1338907529387790489

`A199713(A061395(a(n-1)))` with `a(0)=3`
-/

namespace A242905.P1338907529387790489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A199713 (A061395 (a (n - 1)).toNat).toNat

end

end A242905.P1338907529387790489

/-!
# A242906: a(n+1) is the smallest prime > a(n) such that the digits of a(n) are all (with multiplicity) contained in the digits of a(n+1), with a(1)=5.

The programs for A242906, there is no canonical definition to state claims against.
-/

/-! ## A242906.P5015513666056006275

`A199713(A000720(a(n-1)))` with `a(0)=5`
-/

namespace A242906.P5015513666056006275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A199713 (A000720 (a (n - 1)).toNat).toNat

end

end A242906.P5015513666056006275

/-! ## A242906.P7896912056158873081

`A199713(A061395(a(n-1)))` with `a(0)=5`
-/

namespace A242906.P7896912056158873081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A199713 (A061395 (a (n - 1)).toNat).toNat

end

end A242906.P7896912056158873081

/-!
# A242907: a(n+1) is the smallest prime > a(n) such that the digits of a(n) are all (with multiplicity) contained in the digits of a(n+1), with a(1)=7.

The programs for A242907, there is no canonical definition to state claims against.
-/

/-! ## A242907.P13577051666425887904

`A199713(A000720(a(n-1)))` with `a(0)=7`
-/

namespace A242907.P13577051666425887904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A199713 (A000720 (a (n - 1)).toNat).toNat

end

end A242907.P13577051666425887904

/-! ## A242907.P14719591207294264498

`A199713(A061395(a(n-1)))` with `a(0)=7`
-/

namespace A242907.P14719591207294264498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A199713 (A061395 (a (n - 1)).toNat).toNat

end

end A242907.P14719591207294264498

/-! ## A242907.P13382785199473050055

`filter[A386038(n+1), A178788(#)]`
-/

namespace A242907.P13382785199473050055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A242907.P13382785199473050055

/-!
# A242912: Finite sequence where each term follows n*10^n + p, where p is an n-digit prime and 1 <= n <= 9.

The programs for A242912, there is no canonical definition to state claims against.
-/

/-! ## A242912.P13786081711560722764

`A123132(A178762(n+1)^∑[char[4*n]])`
-/

namespace A242912.P13786081711560722764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (A178762 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A242912.P13786081711560722764

/-! ## A242912.P5775457652410720274

`A123132(A127047(n+1)^A008621(n))`
-/

namespace A242912.P5775457652410720274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (SequenceMachineLib.roundAway ((A127047 (n + 1) : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A242912.P5775457652410720274

/-! ## A242912.P15682390895119085555

`A123132(A127047(n+1)^A029078(n))`
-/

namespace A242912.P15682390895119085555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (SequenceMachineLib.roundAway ((A127047 (n + 1) : ℚ) ^ (A029078 n : ℤ))).toNat

end

end A242912.P15682390895119085555

/-! ## A242912.P6593448561862137342

`A123132(A171821(n+1)^A008621(n))`
-/

namespace A242912.P6593448561862137342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (SequenceMachineLib.roundAway ((A171821 (n + 1) : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A242912.P6593448561862137342

/-!
# A242913: Positions of smaller of twin primes in A001359 with index 3.

The programs for A242913, the canonical program `A242913.P1693692054052103084` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242913 has offset 1).

The definition of A242913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242913.P1693692054052103084

`eq[1, A048614(n+1)]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242913

/-- `eq[1, A048614(n+1)]+2` -/
def P1693692054052103084.Spec : Prop :=
  ∀ n, (P1693692054052103084.a n : ℤ) = A242913 (n + 1)

theorem P1693692054052103084.correct : P1693692054052103084.Spec := by
  intro n
  simp only [A242913, Nat.add_sub_cancel]

end A242913

/-! ## A242913.P9031660031073279751

`eq[3, A027833(n+1)]+2`
-/

namespace A242913.P9031660031073279751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242913.P9031660031073279751

namespace A242913

/-- `eq[3, A027833(n+1)]+2` -/
def P9031660031073279751.Spec : Prop :=
  ∀ n, (P9031660031073279751.a n : ℤ) = A242913 (n + 1)

end A242913

/-! ## A242913.P9743752617689164868

`eq[3, A242767(n+2)]+1`
-/

namespace A242913.P9743752617689164868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242913.P9743752617689164868

namespace A242913

/-- `eq[3, A242767(n+2)]+1` -/
def P9743752617689164868.Spec : Prop :=
  ∀ n, (P9743752617689164868.a n : ℤ) = A242913 (n + 1)

end A242913

/-! ## A242913.P5680813116494834138

`eq[3, A242767(A254667(n+1))]`
-/

namespace A242913.P5680813116494834138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (A254667 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242913.P5680813116494834138

namespace A242913

/-- `eq[3, A242767(A254667(n+1))]` -/
def P5680813116494834138.Spec : Prop :=
  ∀ n, (P5680813116494834138.a n : ℤ) = A242913 (n + 1)

end A242913

/-! ## A242913.P5236770303516456726

`A020725(eq[3, A242767(n+2)])`
-/

namespace A242913.P5236770303516456726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242913.P5236770303516456726

namespace A242913

/-- `A020725(eq[3, A242767(n+2)])` -/
def P5236770303516456726.Spec : Prop :=
  ∀ n, P5236770303516456726.a n = A242913 (n + 1)

end A242913

/-! ## A242913.P3260467831272334262

`A071538(A068016(n+1))+1`
-/

namespace A242913.P3260467831272334262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A068016 (n + 1)).toNat + 1

end

end A242913.P3260467831272334262

namespace A242913

/-- `A071538(A068016(n+1))+1` -/
def P3260467831272334262.Spec : Prop :=
  ∀ n, P3260467831272334262.a n = A242913 (n + 1)

end A242913

/-!
# A242916: Numbers n such that (k!+n)/(k+n) is prime for some k.

The programs for A242916, there is no canonical definition to state claims against.
-/

/-! ## A242916.P2846769099137132982

`∑[A003056(∏[a(n-1)+6])]` with `a(0)=2, a(1)=8, a(2)=1, a(3)=1, a(4)=11`
-/

namespace A242916.P2846769099137132982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 1, 1, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242916.P2846769099137132982

/-!
# A242917: Positions of smaller of twin primes in A001359 with index 4.

The programs for A242917, the canonical program `A242917.P14744434532373284957` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242917 has offset 1).

The definition of A242917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242917.P14744434532373284957

`eq[2, A048614(n+1)]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242917

/-- `eq[2, A048614(n+1)]+2` -/
def P14744434532373284957.Spec : Prop :=
  ∀ n, (P14744434532373284957.a n : ℤ) = A242917 (n + 1)

theorem P14744434532373284957.correct : P14744434532373284957.Spec := by
  intro n
  simp only [A242917, Nat.add_sub_cancel]

end A242917

/-! ## A242917.P4477781273829935782

`eq[4, A027833(n+1)]+2`
-/

namespace A242917.P4477781273829935782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242917.P4477781273829935782

namespace A242917

/-- `eq[4, A027833(n+1)]+2` -/
def P4477781273829935782.Spec : Prop :=
  ∀ n, (P4477781273829935782.a n : ℤ) = A242917 (n + 1)

end A242917

/-! ## A242917.P16452936731842291785

`eq[4, A242767(n+2)]+1`
-/

namespace A242917.P16452936731842291785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242917.P16452936731842291785

namespace A242917

/-- `eq[4, A242767(n+2)]+1` -/
def P16452936731842291785.Spec : Prop :=
  ∀ n, (P16452936731842291785.a n : ℤ) = A242917 (n + 1)

end A242917

/-! ## A242917.P9211106625712159857

`eq[4, A242767(A254667(n+1))]`
-/

namespace A242917.P9211106625712159857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (A254667 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242917.P9211106625712159857

namespace A242917

/-- `eq[4, A242767(A254667(n+1))]` -/
def P9211106625712159857.Spec : Prop :=
  ∀ n, (P9211106625712159857.a n : ℤ) = A242917 (n + 1)

end A242917

/-! ## A242917.P1570618098036950547

`A020725(eq[4, A242767(n+2)])`
-/

namespace A242917.P1570618098036950547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242917.P1570618098036950547

namespace A242917

/-- `A020725(eq[4, A242767(n+2)])` -/
def P1570618098036950547.Spec : Prop :=
  ∀ n, P1570618098036950547.a n = A242917 (n + 1)

end A242917

/-! ## A242917.P12384195185426419124

`A065475(eq[4, A242767(n+2)])`
-/

namespace A242917.P12384195185426419124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242917.P12384195185426419124

namespace A242917

/-- `A065475(eq[4, A242767(n+2)])` -/
def P12384195185426419124.Spec : Prop :=
  ∀ n, P12384195185426419124.a n = A242917 (n + 1)

end A242917

/-!
# A242918: Positions of smaller of twin primes in A001359 with index 5.

The programs for A242918, the canonical program `A242918.P2919703663841079381` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242918 has offset 1).

The definition of A242918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242918.P2919703663841079381

`eq[3, A048614(n+1)]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242918

/-- `eq[3, A048614(n+1)]+2` -/
def P2919703663841079381.Spec : Prop :=
  ∀ n, (P2919703663841079381.a n : ℤ) = A242918 (n + 1)

theorem P2919703663841079381.correct : P2919703663841079381.Spec := by
  intro n
  simp only [A242918, Nat.add_sub_cancel]

end A242918

/-! ## A242918.P15656084175833846337

`eq[5, A027833(n+1)]+2`
-/

namespace A242918.P15656084175833846337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242918.P15656084175833846337

namespace A242918

/-- `eq[5, A027833(n+1)]+2` -/
def P15656084175833846337.Spec : Prop :=
  ∀ n, (P15656084175833846337.a n : ℤ) = A242918 (n + 1)

end A242918

/-! ## A242918.P11793815553580204964

`eq[5, A242767(n+2)]+1`
-/

namespace A242918.P11793815553580204964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242918.P11793815553580204964

namespace A242918

/-- `eq[5, A242767(n+2)]+1` -/
def P11793815553580204964.Spec : Prop :=
  ∀ n, (P11793815553580204964.a n : ℤ) = A242918 (n + 1)

end A242918

/-! ## A242918.P4830498901286229156

`A020725(eq[5, A242767(n+2)])`
-/

namespace A242918.P4830498901286229156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242918.P4830498901286229156

namespace A242918

/-- `A020725(eq[5, A242767(n+2)])` -/
def P4830498901286229156.Spec : Prop :=
  ∀ n, P4830498901286229156.a n = A242918 (n + 1)

end A242918

/-! ## A242918.P11647338039840314144

`A153152(eq[5, A242767(n+2)])`
-/

namespace A242918.P11647338039840314144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242918.P11647338039840314144

namespace A242918

/-- `A153152(eq[5, A242767(n+2)])` -/
def P11647338039840314144.Spec : Prop :=
  ∀ n, P11647338039840314144.a n = A242918 (n + 1)

end A242918

/-! ## A242918.P2349825123642037718

`eq[5, A242767(A254667(n+1))]`
-/

namespace A242918.P2349825123642037718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (A254667 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242918.P2349825123642037718

namespace A242918

/-- `eq[5, A242767(A254667(n+1))]` -/
def P2349825123642037718.Spec : Prop :=
  ∀ n, (P2349825123642037718.a n : ℤ) = A242918 (n + 1)

end A242918

/-!
# A242919: Positions of smaller of twin primes in A001359 with index 6.

The programs for A242919, the canonical program `A242919.P10807504010628949303` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242919 has offset 1).

The definition of A242919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242919.P10807504010628949303

`eq[4, A048614(n+1)]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242919

/-- `eq[4, A048614(n+1)]+2` -/
def P10807504010628949303.Spec : Prop :=
  ∀ n, (P10807504010628949303.a n : ℤ) = A242919 (n + 1)

theorem P10807504010628949303.correct : P10807504010628949303.Spec := by
  intro n
  simp only [A242919, Nat.add_sub_cancel]

end A242919

/-! ## A242919.P10343710223726634261

`eq[6, A027833(n+1)]+2`
-/

namespace A242919.P10343710223726634261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242919.P10343710223726634261

namespace A242919

/-- `eq[6, A027833(n+1)]+2` -/
def P10343710223726634261.Spec : Prop :=
  ∀ n, (P10343710223726634261.a n : ℤ) = A242919 (n + 1)

end A242919

/-! ## A242919.P9214467265172502371

`eq[6, A242767(n+2)]+1`
-/

namespace A242919.P9214467265172502371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242919.P9214467265172502371

namespace A242919

/-- `eq[6, A242767(n+2)]+1` -/
def P9214467265172502371.Spec : Prop :=
  ∀ n, (P9214467265172502371.a n : ℤ) = A242919 (n + 1)

end A242919

/-! ## A242919.P11378985350286381803

`eq[6, A242767(A254667(n+1))]`
-/

namespace A242919.P11378985350286381803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (A254667 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242919.P11378985350286381803

namespace A242919

/-- `eq[6, A242767(A254667(n+1))]` -/
def P11378985350286381803.Spec : Prop :=
  ∀ n, (P11378985350286381803.a n : ℤ) = A242919 (n + 1)

end A242919

/-! ## A242919.P13532668038518480518

`A020725(eq[6, A242767(n+2)])`
-/

namespace A242919.P13532668038518480518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242919.P13532668038518480518

namespace A242919

/-- `A020725(eq[6, A242767(n+2)])` -/
def P13532668038518480518.Spec : Prop :=
  ∀ n, P13532668038518480518.a n = A242919 (n + 1)

end A242919

/-! ## A242919.P2788608420518361872

`eq[6, A242768(A029707(n+1)+2)]+2`
-/

namespace A242919.P2788608420518361872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (A029707 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A242919.P2788608420518361872

namespace A242919

/-- `eq[6, A242768(A029707(n+1)+2)]+2` -/
def P2788608420518361872.Spec : Prop :=
  ∀ n, (P2788608420518361872.a n : ℤ) = A242919 (n + 1)

end A242919

/-!
# A242920: Numbers N with prime factors p_1, ... p_n, such that 1/p_1 + Sum_{i=2..n} p_(i-1)/p_i + p_n/N - (n+2)/N = 1.

The programs for A242920, there is no canonical definition to state claims against.
-/

/-! ## A242920.P4765676167810220

`eq[A004525(n), A051664(n+1)]+1`
-/

namespace A242920.P4765676167810220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242920.P4765676167810220

/-! ## A242920.P1880889505000831097

`eq[A051664(n+1), A129756(n)]+1`
-/

namespace A242920.P1880889505000831097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A242920.P1880889505000831097

/-! ## A242920.P5198682818476036178

`∪[A037074(n+1), A100484(n+2)]`
-/

namespace A242920.P5198682818476036178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242920.P5198682818476036178

/-! ## A242920.P17602085734004919738

`∪[A037074(n+1), A001747(n+3)]`
-/

namespace A242920.P17602085734004919738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242920.P17602085734004919738

/-! ## A242920.P9311817199056385357

`∪[2*A000040(n+2), A037074(n+1)]`
-/

namespace A242920.P9311817199056385357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242920.P9311817199056385357

/-! ## A242920.P11163863433034682227

`eq[A003415(n), A063655(A116966(n))]`
-/

namespace A242920.P11163863433034682227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A116966 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242920.P11163863433034682227

/-! ## A242920.P13463915745874088563

`eq[A010702(A076984(n+1)), A104725(n)]`
-/

namespace A242920.P13463915745874088563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A076984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242920.P13463915745874088563

/-! ## A242920.P14977877666276511249

`A153152(eq[A004525(n), A051664(n+1)])`
-/

namespace A242920.P14977877666276511249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242920.P14977877666276511249

/-! ## A242920.P854438922195776134

`eq[A007978(A009191(n+1)), A286852(n)]`
-/

namespace A242920.P854438922195776134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A009191 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242920.P854438922195776134

/-! ## A242920.P5054534319893671600

`A153152(eq[A051664(n+1), A129756(n)])`
-/

namespace A242920.P5054534319893671600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A242920.P5054534319893671600

/-!
# A242921: Lexicographically least increasing sequence avoiding double 3-term arithmetic progressions.

The programs for A242921, there is no canonical definition to state claims against.
-/

/-! ## A242921.P14071713325744968905

`∑[A242923(n+1)]-A242923(n+1)`
-/

namespace A242921.P14071713325744968905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A242923 (n + 1)

end

end A242921.P14071713325744968905

/-! ## A242921.P612875168585639048

`A101884(n+1)-1`
-/

namespace A242921.P612875168585639048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 1) - 1

end

end A242921.P612875168585639048

/-! ## A242921.P3582456134593133211

`A323202(2*n+1)+A101884(n+1)`
-/

namespace A242921.P3582456134593133211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1) + A101884 (n + 1)

end

end A242921.P3582456134593133211

/-! ## A242921.P12561498200050787170

`A158387(A038722(n+1)+n)+A101884(n+1)`
-/

namespace A242921.P12561498200050787170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (A038722 (n + 1) + (n : ℤ)).toNat + A101884 (n + 1)

end

end A242921.P12561498200050787170

/-! ## A242921.P10983724142077941336

`A023443(A101884(n+1))`
-/

namespace A242921.P10983724142077941336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A101884 (n + 1)).toNat

end

end A242921.P10983724142077941336

/-! ## A242921.P12652101766298339419

`A289207(A101884(n+1)+1)`
-/

namespace A242921.P12652101766298339419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A101884 (n + 1) + 1).toNat

end

end A242921.P12652101766298339419

/-! ## A242921.P3982861833384921125

`abs(A001057(2*A101884(n+1))+1)`
-/

namespace A242921.P3982861833384921125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (2 * A101884 (n + 1)).toNat + 1|

end

end A242921.P3982861833384921125

/-! ## A242921.P6608751333996127384

`A158387(A038722(n+1)²)+A101884(n+1)`
-/

namespace A242921.P6608751333996127384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (A038722 (n + 1) ^ 2).toNat + A101884 (n + 1)

end

end A242921.P6608751333996127384

/-! ## A242921.P11871212376506810294

`record[(A101884(A159335(n+1))+n)%(n+1)]`
-/

namespace A242921.P11871212376506810294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101884 (A159335 (n + 1)).toNat + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242921.P11871212376506810294

/-! ## A242921.P17059141814275648123

`A158387(A101884(n+1)²)+A101884(n+1)`
-/

namespace A242921.P17059141814275648123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (A101884 (n + 1) ^ 2).toNat + A101884 (n + 1)

end

end A242921.P17059141814275648123

/-!
# A242923: Lexicographically least sequence over the positive integers with the property that there are no two consecutive blocks of the same length and same sum.

The programs for A242923, there is no canonical definition to state claims against.
-/

/-! ## A242923.P15049025579869035200

`Δ[A242921(n)]`
-/

namespace A242923.P15049025579869035200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242923.P15049025579869035200

/-! ## A242923.P15513302745432059442

`A242921(n+1)-A242921(n)`
-/

namespace A242923.P15513302745432059442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242921 (n + 1) - A242921 n

end

end A242923.P15513302745432059442

/-! ## A242923.P16206273017826567212

`Δ[A101884(n+1)]`
-/

namespace A242923.P16206273017826567212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242923.P16206273017826567212

/-! ## A242923.P11472773118697249968

`A101884(n+2)-A101884(n+1)`
-/

namespace A242923.P11472773118697249968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 2) - A101884 (n + 1)

end

end A242923.P11472773118697249968

/-! ## A242923.P1411460160418390249

`A101884(n+2)+A001057(2*A101884(n+1))`
-/

namespace A242923.P1411460160418390249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 2) + A001057 (2 * A101884 (n + 1)).toNat

end

end A242923.P1411460160418390249

/-!
# A242925: Numbers k such that lambda(k) divides Sum_{j=1..k} lambda(j).

The programs for A242925, there is no canonical definition to state claims against.
-/

/-! ## A242925.P3672496365549691112

`lt[3, A283883(A064714(n)²)]`
-/

namespace A242925.P3672496365549691112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283883 (A064714 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242925.P3672496365549691112

/-! ## A242925.P16482577609650536104

`lt[A285852(n), A020639(A337462(n))]`
-/

namespace A242925.P16482577609650536104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A337462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242925.P16482577609650536104

/-! ## A242925.P613990131843702207

`A203076(n)+A165018(A282275(n+1))`
-/

namespace A242925.P613990131843702207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 n + A165018 (A282275 (n + 1)).toNat

end

end A242925.P613990131843702207

/-! ## A242925.P5195771778154113034

`A296086(A296086(n+1))+A203076(n)`
-/

namespace A242925.P5195771778154113034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296086 (A296086 (n + 1)).toNat + A203076 n

end

end A242925.P5195771778154113034

/-! ## A242925.P4808477502819594257

`lt[A272618(n+1), A171889(A299278(n))]`
-/

namespace A242925.P4808477502819594257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171889 (A299278 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242925.P4808477502819594257

/-!
# A242926: a(n) = denominator of B(0,n), where B(n,n) = 0, B(n-1,n) = 1/n and otherwise B(m,n) = B(m-1,n+1) - B(m-1,n).

The programs for A242926, there is no canonical definition to state claims against.
-/

/-! ## A242926.P411913778860563464

`(n+1)/A242947(n+1)`
-/

namespace A242926.P411913778860563464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A242947 (n + 1) : ℚ)

end

end A242926.P411913778860563464

/-! ## A242926.P15443184305275436672

`(n+1)/gcd(n+1, A001610(n))`
-/

namespace A242926.P15443184305275436672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A001610 n) : ℚ)

end

end A242926.P15443184305275436672

/-! ## A242926.P17578702041776937641

`(n+1)/gcd(1-A000204(n+1), xor(n, -1))`
-/

namespace A242926.P17578702041776937641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (1 - A000204 (n + 1)) (Int.xor (n : ℤ) (-1)) : ℚ)

end

end A242926.P17578702041776937641

/-! ## A242926.P8241285242948167817

`2*(n+1)/gcd(2*(n+1), A168674(n))`
-/

namespace A242926.P8241285242948167817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Int.gcd (2 * (n + 1) : ℤ) (A168674 n) : ℚ)

end

end A242926.P8241285242948167817

/-! ## A242926.P14169422417506358540

`ceil((2*n+1)/gcd(A103517(n), A168674(n)))`
-/

namespace A242926.P14169422417506358540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (Int.gcd (A103517 n) (A168674 n) : ℚ)⌉

end

end A242926.P14169422417506358540

/-! ## A242926.P3559396056211305349

`A000027(n+1)/gcd(A000027(n+1), A122491(n))`
-/

namespace A242926.P3559396056211305349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A122491 n) : ℚ)

end

end A242926.P3559396056211305349

/-! ## A242926.P12519213582609777873

`A234575(A242947(n+1)+A000217(n))`
-/

namespace A242926.P12519213582609777873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A242947 (n + 1) + A000217 n).toNat

end

end A242926.P12519213582609777873

/-! ## A242926.P3861472295054454148

`A051537(A242947(n+1)+A000217(n))`
-/

namespace A242926.P3861472295054454148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A242947 (n + 1) + A000217 n).toNat

end

end A242926.P3861472295054454148

/-! ## A242926.P6112891593181571346

`A126988(A242947(n+1)+A000217(n))`
-/

namespace A242926.P6112891593181571346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A242947 (n + 1) + A000217 n).toNat

end

end A242926.P6112891593181571346

/-!
# A242927: a(n) = smallest k such that k^m + (k+1)^m + ... + (k+m-1)^m is prime, where m = A014117(n).

The programs for A242927, there is no canonical definition to state claims against.
-/

/-! ## A242927.P10458707570782217317

`and(A261434(n+1), A264438(n+1))`
-/

namespace A242927.P10458707570782217317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261434 (n + 1)) (A264438 (n + 1))

end

end A242927.P10458707570782217317

/-!
# A242928: Least number k such that (k^k+n^n)/(k+n) is prime or 0 if no such k exists.

The programs for A242928, there is no canonical definition to state claims against.
-/

/-! ## A242928.P10257596266817704551

`floor(6/A246353(A246353(n)))`
-/

namespace A242928.P10257596266817704551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / (A246353 (A246353 n).toNat : ℚ)⌋

end

end A242928.P10257596266817704551

/-! ## A242928.P4403034971068945506

`val(∑[A103873(n+1)], A022839(n+1))`
-/

namespace A242928.P4403034971068945506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A022839 (n + 1)).toNat

end

end A242928.P4403034971068945506

/-! ## A242928.P12422195369997622564

`A334675(3*n+1)%A000045(a(and(n, n-1))+1)` with `a(0)=3`
-/

namespace A242928.P12422195369997622564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (A334675 (3 * n + 1)) (A000045 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat)

end

end A242928.P12422195369997622564

/-! ## A242928.P11341532908334039650

`A003188(C(A000040(n+1), A179871(n+1)))`
-/

namespace A242928.P11341532908334039650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.choose (A000040 (n + 1)).toNat (A179871 (n + 1)).toNat)

end

end A242928.P11341532908334039650

/-! ## A242928.P2415134081965137032

`A057501(C(A000040(n+1), A179871(n+1)))`
-/

namespace A242928.P2415134081965137032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (Nat.choose (A000040 (n + 1)).toNat (A179871 (n + 1)).toNat)

end

end A242928.P2415134081965137032

/-!
# A242929: Primes p such that 2^p - p^2 is prime.

The programs for A242929, there is no canonical definition to state claims against.
-/

/-! ## A242929.P3179351504910068750

`p?[A072180(n+1)]`
-/

namespace A242929.P3179351504910068750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242929.P3179351504910068750

/-! ## A242929.P1705990827501654808

`A001748(A117587(n+1))/3`
-/

namespace A242929.P1705990827501654808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A117587 (n + 1)).toNat : ℚ) / 3

end

end A242929.P1705990827501654808

/-! ## A242929.P16467137063604330606

`A000040(A117587(n+1))`
-/

namespace A242929.P16467137063604330606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A117587 (n + 1)).toNat

end

end A242929.P16467137063604330606

/-! ## A242929.P4289867408322408556

`A008578(A117587(n+1)+1)`
-/

namespace A242929.P4289867408322408556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A117587 (n + 1) + 1).toNat

end

end A242929.P4289867408322408556

/-! ## A242929.P6920240563943784162

`A065091(A117587(n+1)-1)`
-/

namespace A242929.P6920240563943784162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A117587 (n + 1) - 1).toNat

end

end A242929.P6920240563943784162

/-!
# A242930: Primes of the form (k^2+7)/11.

The programs for A242930, the canonical program `A242930.P12542841034490309898` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242930 has offset 1).

The definition of A242930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242930.P12542841034490309898

`p?[4*A219257(n+1)+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242930

/-- `p?[4*A219257(n+1)+1]` -/
def P12542841034490309898.Spec : Prop :=
  ∀ n, P12542841034490309898.a n = A242930 (n + 1)

theorem P12542841034490309898.correct : P12542841034490309898.Spec := by
  intro n
  simp only [A242930, Nat.add_sub_cancel]

end A242930

/-! ## A242930.P3820436038210246054

`p?[(2*n+1)²-A195162(n)]`
-/

namespace A242930.P3820436038210246054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - A195162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P3820436038210246054

namespace A242930

/-- `p?[(2*n+1)²-A195162(n)]` -/
def P3820436038210246054.Spec : Prop :=
  ∀ n, P3820436038210246054.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P5391572981194824056

`p?[A298026(n)+a(n-1)+n]` with `a(0)=1`
-/

namespace A242930.P5391572981194824056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A298026 n + (f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P5391572981194824056

namespace A242930

/-- `p?[A298026(n)+a(n-1)+n]` -/
def P5391572981194824056.Spec : Prop :=
  ∀ n, P5391572981194824056.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P8267505841401367604

`p?[A135276(3*n+4)+floor(n²/2)]`
-/

namespace A242930.P8267505841401367604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (3 * n + 4) + ⌊(n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P8267505841401367604

namespace A242930

/-- `p?[A135276(3*n+4)+floor(n²/2)]` -/
def P8267505841401367604.Spec : Prop :=
  ∀ n, P8267505841401367604.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P13955463095287659049

`p?[A298027(n)+floor((2*n+1)²/8)]`
-/

namespace A242930.P13955463095287659049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 n + ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P13955463095287659049

namespace A242930

/-- `p?[A298027(n)+floor((2*n+1)²/8)]` -/
def P13955463095287659049.Spec : Prop :=
  ∀ n, P13955463095287659049.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P18075275323569263726

`p?[A003215(n)+1-ceil(xor(1, n)/2)²]`
-/

namespace A242930.P18075275323569263726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + (1 - ⌈(Nat.xor 1 n : ℚ) / 2⌉ ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P18075275323569263726

namespace A242930

/-- `p?[A003215(n)+1-ceil(xor(1, n)/2)²]` -/
def P18075275323569263726.Spec : Prop :=
  ∀ n, P18075275323569263726.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P12379346472200564684

`p?[A257083(n)+A014494(n)]`
-/

namespace A242930.P12379346472200564684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + A014494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P12379346472200564684

namespace A242930

/-- `p?[A257083(n)+A014494(n)]` -/
def P12379346472200564684.Spec : Prop :=
  ∀ n, P12379346472200564684.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P15310282396795843743

`p?[A317300(n)+A003215(n)]`
-/

namespace A242930.P15310282396795843743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P15310282396795843743

namespace A242930

/-- `p?[A317300(n)+A003215(n)]` -/
def P15310282396795843743.Spec : Prop :=
  ∀ n, P15310282396795843743.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P12263602261123109528

`p?[A056105(n)-A213038(n)]`
-/

namespace A242930.P12263602261123109528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n - A213038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P12263602261123109528

namespace A242930

/-- `p?[A056105(n)-A213038(n)]` -/
def P12263602261123109528.Spec : Prop :=
  ∀ n, P12263602261123109528.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P11900074496969958040

`p?[A000124(n)+A298027(n)-1]`
-/

namespace A242930.P11900074496969958040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A298027 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P11900074496969958040

namespace A242930

/-- `p?[A000124(n)+A298027(n)-1]` -/
def P11900074496969958040.Spec : Prop :=
  ∀ n, P11900074496969958040.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P6070325317006883488

`p?[A000124(n)+6*A001318(n)]`
-/

namespace A242930.P6070325317006883488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 6 * A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P6070325317006883488

namespace A242930

/-- `p?[A000124(n)+6*A001318(n)]` -/
def P6070325317006883488.Spec : Prop :=
  ∀ n, P6070325317006883488.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P9779432207600326542

`p?[A053755(n)-A047223(n+1)²]`
-/

namespace A242930.P9779432207600326542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n - A047223 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P9779432207600326542

namespace A242930

/-- `p?[A053755(n)-A047223(n+1)²]` -/
def P9779432207600326542.Spec : Prop :=
  ∀ n, P9779432207600326542.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P303271425095472602

`p?[A219190(n+1)+A005448(n+1)]`
-/

namespace A242930.P303271425095472602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (n + 1) + A005448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P303271425095472602

namespace A242930

/-- `p?[A219190(n+1)+A005448(n+1)]` -/
def P303271425095472602.Spec : Prop :=
  ∀ n, P303271425095472602.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P3364591517249150774

`p?[A062786(n+1)-A057780(n+1)]`
-/

namespace A242930.P3364591517249150774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) - A057780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P3364591517249150774

namespace A242930

/-- `p?[A062786(n+1)-A057780(n+1)]` -/
def P3364591517249150774.Spec : Prop :=
  ∀ n, P3364591517249150774.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P2634476155348461356

`p?[A110654(n)*A281445(n+1)+1]`
-/

namespace A242930.P2634476155348461356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n * A281445 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P2634476155348461356

namespace A242930

/-- `p?[A110654(n)*A281445(n+1)+1]` -/
def P2634476155348461356.Spec : Prop :=
  ∀ n, P2634476155348461356.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P7417864903459439462

`p?[A000124(n)+2*A117748(n+1)]`
-/

namespace A242930.P7417864903459439462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 2 * A117748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P7417864903459439462

namespace A242930

/-- `p?[A000124(n)+2*A117748(n+1)]` -/
def P7417864903459439462.Spec : Prop :=
  ∀ n, P7417864903459439462.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P9090622283422165792

`p?[A036409(2*(n+2))%A036435(n+1)]`
-/

namespace A242930.P9090622283422165792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036409 (2 * (n + 2))) (A036435 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P9090622283422165792

namespace A242930

/-- `p?[A036409(2*(n+2))%A036435(n+1)]` -/
def P9090622283422165792.Spec : Prop :=
  ∀ n, P9090622283422165792.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P5990141191215542784

`p?[A257083(n)+A000217(A014601(n))]`
-/

namespace A242930.P5990141191215542784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + A000217 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P5990141191215542784

namespace A242930

/-- `p?[A257083(n)+A000217(A014601(n))]` -/
def P5990141191215542784.Spec : Prop :=
  ∀ n, P5990141191215542784.a n = A242930 (n + 1)

end A242930

/-! ## A242930.P4594329610339574355

`p?[A002378(A047273(n+1))+A000124(n)]`
-/

namespace A242930.P4594329610339574355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A047273 (n + 1)).toNat + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P4594329610339574355

namespace A242930

/-- `p?[A002378(A047273(n+1))+A000124(n)]` -/
def P4594329610339574355.Spec : Prop :=
  ∀ n, P4594329610339574355.a n = A242930 (n + 1)

end A242930

/-!
# A242932: Numbers n such that k*n/(k+n) is prime for some k.

The programs for A242932, there is no canonical definition to state claims against.
-/

/-! ## A242932.P2082384852634562161

`lt[0, A242834(n+1)]+1`
-/

namespace A242932.P2082384852634562161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242834 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A242932.P2082384852634562161

/-! ## A242932.P12838552768296833846

`lt[0, A242931(n+1)]+1`
-/

namespace A242932.P12838552768296833846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A242932.P12838552768296833846

/-! ## A242932.P8242413029959787014

`record[A000010(A257143(n))+2]`
-/

namespace A242932.P8242413029959787014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A257143 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242932.P8242413029959787014

/-! ## A242932.P2368711042648828560

`lt[0, A242834(A233583(n+1))]`
-/

namespace A242932.P2368711042648828560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242834 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242932.P2368711042648828560

/-! ## A242932.P6091015375291600117

`lt[0, A242931(A000038(n)+n)]`
-/

namespace A242932.P6091015375291600117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A242932.P6091015375291600117

/-! ## A242932.P13345284797305923409

`∪[A351863(n+1), A022386(n)]`
-/

namespace A242932.P13345284797305923409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242932.P13345284797305923409

/-! ## A242932.P3821843726647749139

`∪[A351863(n+1), A104677(n)]`
-/

namespace A242932.P3821843726647749139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104677 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242932.P3821843726647749139

/-! ## A242932.P8441962211672608921

`∪[A351863(n+1), A105940(n)]`
-/

namespace A242932.P8441962211672608921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105940 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242932.P8441962211672608921

/-! ## A242932.P4628882315017602477

`∪[A351863(n+1), A115129(n)]`
-/

namespace A242932.P4628882315017602477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242932.P4628882315017602477

/-! ## A242932.P11495077239043158875

`∪[A351863(n+1), A337148(n)]`
-/

namespace A242932.P11495077239043158875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337148 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242932.P11495077239043158875

/-!
# A242933: Even numbers m such that m*k/(k+m) is never prime for all k.

The programs for A242933, there is no canonical definition to state claims against.
-/

/-! ## A242933.P13290948777304417657

`lt[A242931(n+1), A000035(n)]+1`
-/

namespace A242933.P13290948777304417657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A242933.P13290948777304417657

/-! ## A242933.P15569607601794706682

`∩[A139270(n+1), A241884(n+1)]`
-/

namespace A242933.P15569607601794706682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242933.P15569607601794706682

/-! ## A242933.P6961768915528172400

`∩[A176100(n+1), A241884(n+1)]`
-/

namespace A242933.P6961768915528172400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242933.P6961768915528172400

/-! ## A242933.P540950170964693170

`∩[2*A138666(n+1), A241884(n+1)]`
-/

namespace A242933.P540950170964693170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242933.P540950170964693170

/-! ## A242933.P791356797799704676

`∩[2*A141468(n+1), A241884(n+1)]`
-/

namespace A242933.P791356797799704676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242933.P791356797799704676

/-! ## A242933.P12305987425220359720

`∩[A005843(A138666(n+1)), A241884(n+1)]`
-/

namespace A242933.P12305987425220359720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A138666 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242933.P12305987425220359720

/-! ## A242933.P2885469891581969654

`∩[A005843(A141468(n+1)), A241884(n+1)]`
-/

namespace A242933.P2885469891581969654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A141468 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242933.P2885469891581969654

/-! ## A242933.P1489645134323444275

`∩[A005843(A241884(n+1)-1), A241884(n+1)]`
-/

namespace A242933.P1489645134323444275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A241884 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242933.P1489645134323444275

/-!
# A242934: Numbers which are not in A011373 = Hamming weights of Fibonacci numbers.

The programs for A242934, there is no canonical definition to state claims against.
-/

/-! ## A242934.P13331464697535183099

`eq[0, A222295(n)]`
-/

namespace A242934.P13331464697535183099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242934.P13331464697535183099

/-! ## A242934.P16294723090641012266

`lt[A222295(n), acot(A002523(n))]`
-/

namespace A242934.P16294723090641012266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222295 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A002523 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A242934.P16294723090641012266

/-! ## A242934.P17807944320854291320

`lt[A222295(n), acot(A007279(n))]`
-/

namespace A242934.P17807944320854291320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222295 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007279 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A242934.P17807944320854291320

/-! ## A242934.P16100173913530382865

`lt[A222295(n), acot(A008619(n))]`
-/

namespace A242934.P16100173913530382865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222295 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008619 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A242934.P16100173913530382865

/-! ## A242934.P18174200702304882089

`lt[A222295(n), acot(A017449(n))]`
-/

namespace A242934.P18174200702304882089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222295 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A017449 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A242934.P18174200702304882089

/-!
# A242936: Numbers k such that k*prime(k) + (k+1)*(prime(k+1)) is semiprime.

The programs for A242936, there is no canonical definition to state claims against.
-/

/-! ## A242936.P11128752822169345564

`eq[2, A001222(A152117(n+1))]+1`
-/

namespace A242936.P11128752822169345564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A152117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242936.P11128752822169345564

/-!
# A242940: a(n) is the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a term of the sequence if and only if a(n) is a Fibonacci number".

The programs for A242940, there is no canonical definition to state claims against.
-/

/-! ## A242940.P7344192516219931160

`∑[∑{e}[A143068(A040669(n)+n²), #]+1]`
-/

namespace A242940.P7344192516219931160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143068 (A040669 n + (n ^ 2 : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242940.P7344192516219931160

/-! ## A242940.P7734364313018926093

`∑[A007953(A052552(A187889(n)))]`
-/

namespace A242940.P7734364313018926093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A052552 (A187889 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242940.P7734364313018926093

/-!
# A242944: Primes prime(k) such that 2^k + prime(k) is also prime.

The programs for A242944, there is no canonical definition to state claims against.
-/

/-! ## A242944.P3455876933161604340

`A000040(A077375(n+1))`
-/

namespace A242944.P3455876933161604340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A077375 (n + 1)).toNat

end

end A242944.P3455876933161604340

/-! ## A242944.P10414907564541928400

`A008578(A077375(n+1)+1)`
-/

namespace A242944.P10414907564541928400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A077375 (n + 1) + 1).toNat

end

end A242944.P10414907564541928400

/-! ## A242944.P11219286880224953960

`A182986(A077375(n+1)+1)`
-/

namespace A242944.P11219286880224953960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A077375 (n + 1) + 1).toNat

end

end A242944.P11219286880224953960

/-! ## A242944.P10624880969359876236

`A065091(A077375(n+1)-1)`
-/

namespace A242944.P10624880969359876236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A077375 (n + 1) - 1).toNat

end

end A242944.P10624880969359876236

/-! ## A242944.P14924927668562028298

`A073846(2*A077375(n+1))`
-/

namespace A242944.P14924927668562028298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A077375 (n + 1)).toNat

end

end A242944.P14924927668562028298

/-!
# A242947: a(n) = n / A242926(n-1).

The programs for A242947, there is no canonical definition to state claims against.
-/

/-! ## A242947.P7312857857481031752

`(n+1)/A242926(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242947.P7312857857481031752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A242926 n : ℚ)

end

end A242947.P7312857857481031752

/-! ## A242947.P4685380671115301788

`ceil(A008611(3*n)/A242926(n))`
-/

namespace A242947.P4685380671115301788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008611 (3 * n) : ℚ) / (A242926 n : ℚ)⌉

end

end A242947.P4685380671115301788

/-! ## A242947.P11244711057329134603

`gcd(n+1, 1-round(ϕ^(n+1)))`
-/

namespace A242947.P11244711057329134603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 - SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1)))

end

end A242947.P11244711057329134603

/-! ## A242947.P4861614078040347584

`∏{p}[n+1, gcd(#, A001610(n))]`
-/

namespace A242947.P4861614078040347584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (A001610 n)

end

end A242947.P4861614078040347584

/-! ## A242947.P6268336918623885789

`A000027(gcd(n+1, A001610(n)))`
-/

namespace A242947.P6268336918623885789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (n + 1 : ℤ) (A001610 n))

end

end A242947.P6268336918623885789

/-!
# A242948: Numbers k such that A = k+DigitProd(k) is divisible by the largest power of 10 <= A.

The programs for A242948, there is no canonical definition to state claims against.
-/

/-! ## A242948.P14273461731012389752

`eq[A035930(A230099(n)), A055641(n)]`
-/

namespace A242948.P14273461731012389752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242948.P14273461731012389752

/-! ## A242948.P10830585224614891907

`eq[A035930(A230099(n)), A067898(n)]`
-/

namespace A242948.P10830585224614891907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242948.P10830585224614891907

/-! ## A242948.P1006943880296265490

`eq[A035930(A230099(n)), A217096(n)]`
-/

namespace A242948.P1006943880296265490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242948.P1006943880296265490

/-! ## A242948.P8077554532301038123

`lt[A217657(A230099(n)), A168046(n)]`
-/

namespace A242948.P8077554532301038123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242948.P8077554532301038123

/-! ## A242948.P5888542965621306601

`lt[A034807(A153452(n+1)), A345112(n+4)]`
-/

namespace A242948.P5888542965621306601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A153452 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345112 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242948.P5888542965621306601

/-!
# A242951: Number of ternary squarefree words x of length n for which some self-shuffle of x is also squarefree.

The programs for A242951, there is no canonical definition to state claims against.
-/

/-! ## A242951.P1903252318896680420

`A071295(A085396(n+2))`
-/

namespace A242951.P1903252318896680420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 (A085396 (n + 2)).toNat

end

end A242951.P1903252318896680420

/-!
# A242952: Number of connected graphs on n vertices whose spectrum has n distinct eigenvalues.

The programs for A242952, there is no canonical definition to state claims against.
-/

/-! ## A242952.P2815041275554038088

`A001349(n+1)-A242953(n+1)`
-/

namespace A242952.P2815041275554038088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A242953 (n + 1)

end

end A242952.P2815041275554038088

/-! ## A242952.P12769796274174213307

`A201922(A000124(n))-A242953(n+1)`
-/

namespace A242952.P12769796274174213307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A242953 (n + 1)

end

end A242952.P12769796274174213307

/-! ## A242952.P11356454356519224944

`A003049(n+1)+A158007(n+1)-A242953(n+1)`
-/

namespace A242952.P11356454356519224944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A242953 (n + 1))

end

end A242952.P11356454356519224944

/-! ## A242952.P3513345804211480330

`A048192(n+1)+A241843(n+1)-A242953(n+1)`
-/

namespace A242952.P3513345804211480330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A242953 (n + 1))

end

end A242952.P3513345804211480330

/-! ## A242952.P363858626287449680

`A064731(n+1)+A241842(n+1)-A242953(n+1)`
-/

namespace A242952.P363858626287449680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064731 (n + 1) + (A241842 (n + 1) - A242953 (n + 1))

end

end A242952.P363858626287449680

/-!
# A242953: Number of connected graphs on n vertices whose spectrum has fewer than n distinct eigenvalues.

The programs for A242953, there is no canonical definition to state claims against.
-/

/-! ## A242953.P14239221989582101358

`A001349(n+1)-A242952(n+1)`
-/

namespace A242953.P14239221989582101358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A242952 (n + 1)

end

end A242953.P14239221989582101358

/-! ## A242953.P7305933535059527571

`A201922(A000124(n))-A242952(n+1)`
-/

namespace A242953.P7305933535059527571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A242952 (n + 1)

end

end A242953.P7305933535059527571

/-! ## A242953.P3613831755143007627

`A003049(n+1)+A158007(n+1)-A242952(n+1)`
-/

namespace A242953.P3613831755143007627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A242952 (n + 1))

end

end A242953.P3613831755143007627

/-! ## A242953.P14911535985247837075

`A048192(n+1)+A241843(n+1)-A242952(n+1)`
-/

namespace A242953.P14911535985247837075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A242952 (n + 1))

end

end A242953.P14911535985247837075

/-! ## A242953.P17095781820617924114

`A064731(n+1)+A241842(n+1)-A242952(n+1)`
-/

namespace A242953.P17095781820617924114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064731 (n + 1) + (A241842 (n + 1) - A242952 (n + 1))

end

end A242953.P17095781820617924114

/-!
# A242954: a(n) = Product_{i=1..n} A234957(i).

The programs for A242954, the canonical program `A242954.P14541074742461546009` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242954 has offset 0).

The definition of A242954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242954.P14541074742461546009

`4^A054893(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242954

/-- `4^A054893(n)` -/
def P14541074742461546009.Spec : Prop :=
  ∀ n, P14541074742461546009.a n = (A242954 n : ℚ)

end A242954

/-! ## A242954.P7576217390165978443

`4^val(n, 4)*a(n-1)` with `a(0)=1`
-/

namespace A242954.P7576217390165978443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ SequenceMachineLib.valuation n 4 * a (n - 1)

end

end A242954.P7576217390165978443

namespace A242954

/-- `4^val(n, 4)*a(n-1)` -/
def P7576217390165978443.Spec : Prop :=
  ∀ n, (P7576217390165978443.a n : ℤ) = A242954 n

end A242954

/-! ## A242954.P4579328658654772700

`a(n-1)*A234957(n)` with `a(0)=1`
-/

namespace A242954.P4579328658654772700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A234957 n

end

end A242954.P4579328658654772700

namespace A242954

/-- `a(n-1)*A234957(n)` -/
def P4579328658654772700.Spec : Prop :=
  ∀ n, P4579328658654772700.a n = A242954 n

end A242954

/-! ## A242954.P11980458952219244057

`A000302(A054893(n))`
-/

namespace A242954.P11980458952219244057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A054893 n).toNat

end

end A242954.P11980458952219244057

namespace A242954

/-- `A000302(A054893(n))` -/
def P11980458952219244057.Spec : Prop :=
  ∀ n, P11980458952219244057.a n = A242954 n

end A242954

/-! ## A242954.P13713338664136582177

`A000079(2*A054893(n))`
-/

namespace A242954.P13713338664136582177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A054893 n).toNat

end

end A242954.P13713338664136582177

namespace A242954

/-- `A000079(2*A054893(n))` -/
def P13713338664136582177.Spec : Prop :=
  ∀ n, P13713338664136582177.a n = A242954 n

end A242954

/-! ## A242954.P11568716305071137829

`A000079(A050292(n)-A000120(n))`
-/

namespace A242954.P11568716305071137829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A050292 n - A000120 n).toNat

end

end A242954.P11568716305071137829

namespace A242954

/-- `A000079(A050292(n)-A000120(n))` -/
def P11568716305071137829.Spec : Prop :=
  ∀ n, P11568716305071137829.a n = A242954 n

end A242954

/-! ## A242954.P9591653234168088498

`A000079(A050292(n))/A001316(n)`
-/

namespace A242954.P9591653234168088498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A050292 n).toNat : ℚ) / (A001316 n : ℚ)

end

end A242954.P9591653234168088498

namespace A242954

/-- `A000079(A050292(n))/A001316(n)` -/
def P9591653234168088498.Spec : Prop :=
  ∀ n, P9591653234168088498.a n = (A242954 n : ℚ)

end A242954

/-! ## A242954.P15258082973112497655

`4^∑[val(2^n+n, 4)]`
-/

namespace A242954.P15258082973112497655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ n + n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242954.P15258082973112497655

namespace A242954

/-- `4^∑[val(2^n+n, 4)]` -/
def P15258082973112497655.Spec : Prop :=
  ∀ n, (P15258082973112497655.a n : ℤ) = A242954 n

end A242954

/-! ## A242954.P8424699237848292035

`∏[4^val(2^n+n, 4)]`
-/

namespace A242954.P8424699237848292035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (2 ^ n + n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A242954.P8424699237848292035

namespace A242954

/-- `∏[4^val(2^n+n, 4)]` -/
def P8424699237848292035.Spec : Prop :=
  ∀ n, (P8424699237848292035.a n : ℤ) = A242954 n

end A242954

/-!
# A242958: Numbers n such that 3^phi(n) == 1 (mod n^2), where phi(n) is Euler's totient function.

The programs for A242958, there is no canonical definition to state claims against.
-/

/-! ## A242958.P18391144352715141645

`eq[3, A250206(n+1)]+1`
-/

namespace A242958.P18391144352715141645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242958.P18391144352715141645

/-! ## A242958.P17261497578077503350

`lt[A250206(n+3), 4]+3`
-/

namespace A242958.P17261497578077503350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A242958.P17261497578077503350

/-! ## A242958.P13106058891108837937

`eq[3, A250206(A028310(n))]`
-/

namespace A242958.P13106058891108837937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242958.P13106058891108837937

/-! ## A242958.P1822808254159310684

`11*A018391(A230374(n+1))`
-/

namespace A242958.P1822808254159310684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A018391 (A230374 (n + 1)).toNat

end

end A242958.P1822808254159310684

/-!
# A242961: The smallest prime p > prime(n) such that p mod prime(n) == - 1.

The programs for A242961, there is no canonical definition to state claims against.
-/

/-! ## A242961.P13483028060772397553

`A088732(A006093(n+1))`
-/

namespace A242961.P13483028060772397553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A006093 (n + 1)).toNat

end

end A242961.P13483028060772397553

/-! ## A242961.P2444183676021362951

`A038700(A100484(n+1))`
-/

namespace A242961.P2444183676021362951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A100484 (n + 1)).toNat

end

end A242961.P2444183676021362951

/-! ## A242961.P9064165267574746063

`A038700(A001747(n+2))`
-/

namespace A242961.P9064165267574746063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A001747 (n + 2)).toNat

end

end A242961.P9064165267574746063

/-! ## A242961.P2532347976972498588

`A038700(A077017(n+2))`
-/

namespace A242961.P2532347976972498588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A077017 (n + 2)).toNat

end

end A242961.P2532347976972498588

/-! ## A242961.P14316818929404322916

`A088732(Δ[A007504(n)]-1)`
-/

namespace A242961.P14316818929404322916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (f1 (n + 1) - f1 n - 1).toNat

end

end A242961.P14316818929404322916

/-! ## A242961.P874018240957561776

`A088732(record[A000010(n+1)])`
-/

namespace A242961.P874018240957561776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242961.P874018240957561776

/-! ## A242961.P15537523010877724718

`A088732(record[A051698(n)-1])`
-/

namespace A242961.P15537523010877724718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242961.P15537523010877724718

/-! ## A242961.P9564791901029669799

`A088732(p?[A014681(n)]-1)`
-/

namespace A242961.P9564791901029669799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A242961.P9564791901029669799

/-! ## A242961.P5689932853821638612

`A088732(p?[A056847(n)]-1)`
-/

namespace A242961.P5689932853821638612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A242961.P5689932853821638612

/-! ## A242961.P9553692779285622725

`A088732(A000040(n+1)-1)`
-/

namespace A242961.P9553692779285622725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A000040 (n + 1) - 1).toNat

end

end A242961.P9553692779285622725

/-! ## A242961.P5758731521269396208

`A088732(A008864(n+1)-2)`
-/

namespace A242961.P5758731521269396208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (A008864 (n + 1) - 2).toNat

end

end A242961.P5758731521269396208

/-! ## A242961.P10022856400821649905

`A038700(2*A000040(n+1))`
-/

namespace A242961.P10022856400821649905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (2 * A000040 (n + 1)).toNat

end

end A242961.P10022856400821649905

/-! ## A242961.P8450835602160990864

`A088732(eq[1, A010051(n+1)])`
-/

namespace A242961.P8450835602160990864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242961.P8450835602160990864

/-! ## A242961.P7825622600494026735

`A088732(eq[2, A139770(n+1)])`
-/

namespace A242961.P7825622600494026735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242961.P7825622600494026735

/-! ## A242961.P2184638365247463528

`A088732(eq[2, A303809(n+1)])`
-/

namespace A242961.P2184638365247463528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242961.P2184638365247463528

/-! ## A242961.P12324948411079426629

`p?[A001222(n+1)*A088732(n)]`
-/

namespace A242961.P12324948411079426629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A088732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242961.P12324948411079426629

/-! ## A242961.P9927299131657305157

`p?[A010051(n+1)*A088732(n)]`
-/

namespace A242961.P9927299131657305157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A088732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242961.P9927299131657305157

/-! ## A242961.P6313146591583420061

`p?[gcd(A039651(n+1), A088732(n))]`
-/

namespace A242961.P6313146591583420061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039651 (n + 1)) (A088732 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A242961.P6313146591583420061

/-! ## A242961.P3981188817546556023

`A038700(A000040(n+1)+A000040(n+1))`
-/

namespace A242961.P3981188817546556023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A242961.P3981188817546556023

/-! ## A242961.P942832101400255464

`p?[A008683(A303809(n+1)+8)*A088732(n)]`
-/

namespace A242961.P942832101400255464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A303809 (n + 1) + 8).toNat * A088732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242961.P942832101400255464

/-!
# A242962: a(1) = a(2) = 0; for n >= 3: a(n) = (n*(n+1)/2) mod antisigma(n) = A000217(n) mod A024816(n).

The programs for A242962, the canonical program `A242962.P14535489765730197107` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242962 has offset 1).

The definition of A242962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242962.P14535489765730197107

`∑{d}[n+1, #]%(A080572(n)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A242962

/-- `∑{d}[n+1, #]%(A080572(n)+1)` -/
def P14535489765730197107.Spec : Prop :=
  ∀ n, P14535489765730197107.a n = A242962 (n + 1)

theorem P14535489765730197107.correct : P14535489765730197107.Spec := by
  intro n
  simp only [A242962, Nat.add_sub_cancel]

end A242962

/-! ## A242962.P18148087414758766501

`A000203(n+1)%∑[A295310(n+1)]`
-/

namespace A242962.P18148087414758766501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242962.P18148087414758766501

namespace A242962

/-- `A000203(n+1)%∑[A295310(n+1)]` -/
def P18148087414758766501.Spec : Prop :=
  ∀ n, P18148087414758766501.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P17508444655661496362

`A000203(n+1)%A032350(A028310(n))`
-/

namespace A242962.P17508444655661496362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A032350 (A028310 n).toNat)

end

end A242962.P17508444655661496362

namespace A242962

/-- `A000203(n+1)%A032350(A028310(n))` -/
def P17508444655661496362.Spec : Prop :=
  ∀ n, P17508444655661496362.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P9530001087019489893

`A000203(n+1)%A327066(n)`
-/

namespace A242962.P9530001087019489893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A327066 n)

end

end A242962.P9530001087019489893

namespace A242962

/-- `A000203(n+1)%A327066(n)` -/
def P9530001087019489893.Spec : Prop :=
  ∀ n, P9530001087019489893.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P2793538750448364335

`Δ[A160664(n)]%A131452(A014692(n+1))`
-/

namespace A242962.P2793538750448364335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A131452 (A014692 (n + 1)).toNat)

end

end A242962.P2793538750448364335

namespace A242962

/-- `Δ[A160664(n)]%A131452(A014692(n+1))` -/
def P2793538750448364335.Spec : Prop :=
  ∀ n, P2793538750448364335.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P12722103172182612446

`A231368(n+1)%(A000203(n+1)-A231368(n+1))`
-/

namespace A242962.P12722103172182612446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231368 (n + 1)) (A000203 (n + 1) - A231368 (n + 1))

end

end A242962.P12722103172182612446

namespace A242962

/-- `A231368(n+1)%(A000203(n+1)-A231368(n+1))` -/
def P12722103172182612446.Spec : Prop :=
  ∀ n, P12722103172182612446.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P12057761899718179490

`A262610(Δ[n²])%A028310(A024816(n+1))`
-/

namespace A242962.P12057761899718179490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A028310 (A024816 (n + 1)).toNat)

end

end A242962.P12057761899718179490

namespace A242962

/-- `A262610(Δ[n²])%A028310(A024816(n+1))` -/
def P12057761899718179490.Spec : Prop :=
  ∀ n, P12057761899718179490.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P1176946968135318995

`(A039653(n+1)+1)%A028310(A024816(n+1))`
-/

namespace A242962.P1176946968135318995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 (n + 1) + 1) (A028310 (A024816 (n + 1)).toNat)

end

end A242962.P1176946968135318995

namespace A242962

/-- `(A039653(n+1)+1)%A028310(A024816(n+1))` -/
def P1176946968135318995.Spec : Prop :=
  ∀ n, P1176946968135318995.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P12951809755055723366

`(A088580(n+1)-1)%A028310(A024816(n+1))`
-/

namespace A242962.P12951809755055723366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 1) - 1) (A028310 (A024816 (n + 1)).toNat)

end

end A242962.P12951809755055723366

namespace A242962

/-- `(A088580(n+1)-1)%A028310(A024816(n+1))` -/
def P12951809755055723366.Spec : Prop :=
  ∀ n, P12951809755055723366.a n = A242962 (n + 1)

end A242962

/-! ## A242962.P5007336615265452993

`A216626(A266304(n)+1)%(1-A266304(n)+n)`
-/

namespace A242962.P5007336615265452993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216626 (A266304 n + 1).toNat) (1 - A266304 n + (n : ℤ))

end

end A242962.P5007336615265452993

namespace A242962

/-- `A216626(A266304(n)+1)%(1-A266304(n)+n)` -/
def P5007336615265452993.Spec : Prop :=
  ∀ n, P5007336615265452993.a n = A242962 (n + 1)

end A242962

/-!
# A242963: Numbers n such that A242962(n) = sigma(n) = A000203(n).

The programs for A242963, the canonical program `A242963.P8606712474769051266` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242963 has offset 1).

The definition of A242963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242963.P8606712474769051266

`floor(∑[cosh(acot(n)²)])`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242963

/-- `floor(∑[cosh(acot(n)²)])` -/
def P8606712474769051266.Spec : Prop :=
  ∀ n, P8606712474769051266.a n = A242963 (n + 1)

theorem P8606712474769051266.correct : P8606712474769051266.Spec := by
  intro n
  simp only [A242963, Nat.add_sub_cancel]

end A242963

/-!
# A242966: Composite numbers whose anti-divisors are all primes.

The programs for A242966, there is no canonical definition to state claims against.
-/

/-! ## A242966.P6894701803942019934

`A000079(A345899(n+3)-1)`
-/

namespace A242966.P6894701803942019934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A345899 (n + 3) - 1).toNat

end

end A242966.P6894701803942019934

/-! ## A242966.P3401747823189648511

`A177269(A107036(n+1))`
-/

namespace A242966.P3401747823189648511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177269 (A107036 (n + 1)).toNat

end

end A242966.P3401747823189648511

/-! ## A242966.P16971592215687782216

`A273109(A042966(n+1)+1)`
-/

namespace A242966.P16971592215687782216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273109 (A042966 (n + 1) + 1).toNat

end

end A242966.P16971592215687782216

/-! ## A242966.P6523695605701889670

`A273109(A219528(n+1)+1)`
-/

namespace A242966.P6523695605701889670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273109 (A219528 (n + 1) + 1).toNat

end

end A242966.P6523695605701889670

/-! ## A242966.P11915196571703922304

`∩[A383649(n+1), A029746(n)]`
-/

namespace A242966.P11915196571703922304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242966.P11915196571703922304

/-!
# A242971: Alternate n+1, 2^n.

The programs for A242971, the canonical program `A242971.P10928428424285472222` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242971 has offset 0).

The definition of A242971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242971.P10928428424285472222

`(n+1)%2*(n/2+1)+n%2*2^((n-1)/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242971

/-- `(n+1)%2*(n/2+1)+n%2*2^((n-1)/2)` -/
def P10928428424285472222.Spec : Prop :=
  ∀ n, P10928428424285472222.a n = (A242971 n : ℝ)

end A242971

/-! ## A242971.P3007141147253914190

`a((n-2)*n%2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A242971.P3007141147253914190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (((n : ℤ) - 2) * ((n % 2 : ℕ) : ℤ)).toNat + a (n - 2)

end

end A242971.P3007141147253914190

namespace A242971

/-- `a((n-2)*n%2)+a(n-2)` -/
def P3007141147253914190.Spec : Prop :=
  ∀ n, (P3007141147253914190.a n : ℤ) = A242971 n

end A242971

/-! ## A242971.P6599497643626063987

`a((n-2)*and(1, n))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A242971.P6599497643626063987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (((n : ℤ) - 2) * (Nat.land 1 n : ℤ)).toNat + a (n - 2)

end

end A242971.P6599497643626063987

namespace A242971

/-- `a((n-2)*and(1, n))+a(n-2)` -/
def P6599497643626063987.Spec : Prop :=
  ∀ n, (P6599497643626063987.a n : ℤ) = A242971 n

end A242971

/-! ## A242971.P3743658546932884196

`a((xor(1, n)-1)%n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A242971.P3743658546932884196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (Int.tmod ((Nat.xor 1 n : ℤ) - 1) (n : ℤ)).toNat + a (n - 2)

end

end A242971.P3743658546932884196

namespace A242971

/-- `a((xor(1, n)-1)%n)+a(n-2)` -/
def P3743658546932884196.Spec : Prop :=
  ∀ n, (P3743658546932884196.a n : ℤ) = A242971 n

end A242971

/-! ## A242971.P5553639091847725810

`(a(n-2)-1)*gcd(2, n+1)+2` with `a(0)=1, a(1)=1`
-/

namespace A242971.P5553639091847725810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 2) - 1) * (Nat.gcd 2 (n + 1) : ℤ) + 2

end

end A242971.P5553639091847725810

namespace A242971

/-- `(a(n-2)-1)*gcd(2, n+1)+2` -/
def P5553639091847725810.Spec : Prop :=
  ∀ n, P5553639091847725810.a n = A242971 n

end A242971

/-! ## A242971.P16228753932421556540

`1-(gcd(n, a(n-2))-2*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A242971.P16228753932421556540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - ((Int.gcd (n : ℤ) (a (n - 2)) : ℤ) - 2 * a (n - 2))

end

end A242971.P16228753932421556540

namespace A242971

/-- `1-(gcd(n, a(n-2))-2*a(n-2))` -/
def P16228753932421556540.Spec : Prop :=
  ∀ n, P16228753932421556540.a n = A242971 n

end A242971

/-! ## A242971.P1646276274032117088

`a(n-2)+a(n-2)^((n+2)%2)` with `a(0)=1, a(1)=1`
-/

namespace A242971.P1646276274032117088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 2) ^ ((n + 2) % 2)

end

end A242971.P1646276274032117088

namespace A242971

/-- `a(n-2)+a(n-2)^((n+2)%2)` -/
def P1646276274032117088.Spec : Prop :=
  ∀ n, (P1646276274032117088.a n : ℤ) = A242971 n

end A242971

/-! ## A242971.P11422464886602303240

`A390532(n)+A059841(n)`
-/

namespace A242971.P11422464886602303240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 n + A059841 n

end

end A242971.P11422464886602303240

namespace A242971

/-- `A390532(n)+A059841(n)` -/
def P11422464886602303240.Spec : Prop :=
  ∀ n, P11422464886602303240.a n = A242971 n

end A242971

/-! ## A242971.P4144760023918287073

`gcd(A027656(n), A131575(n))`
-/

namespace A242971.P4144760023918287073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A131575 n)

end

end A242971.P4144760023918287073

namespace A242971

/-- `gcd(A027656(n), A131575(n))` -/
def P4144760023918287073.Spec : Prop :=
  ∀ n, (P4144760023918287073.a n : ℤ) = A242971 n

end A242971

/-! ## A242971.P13905411780205347310

`A057979(n+1)+A000225(A057979(n))`
-/

namespace A242971.P13905411780205347310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 1) + A000225 (A057979 n).toNat

end

end A242971.P13905411780205347310

namespace A242971

/-- `A057979(n+1)+A000225(A057979(n))` -/
def P13905411780205347310.Spec : Prop :=
  ∀ n, P13905411780205347310.a n = A242971 n

end A242971

/-! ## A242971.P7516645072328039477

`A142150(n)+A011782(A142150(n+1))`
-/

namespace A242971.P7516645072328039477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A011782 (A142150 (n + 1)).toNat

end

end A242971.P7516645072328039477

namespace A242971

/-- `A142150(n)+A011782(A142150(n+1))` -/
def P7516645072328039477.Spec : Prop :=
  ∀ n, P7516645072328039477.a n = A242971 n

end A242971

/-! ## A242971.P4589493618409928826

`A390532(A014681(n+1))`
-/

namespace A242971.P4589493618409928826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A014681 (n + 1)).toNat

end

end A242971.P4589493618409928826

namespace A242971

/-- `A390532(A014681(n+1))` -/
def P4589493618409928826.Spec : Prop :=
  ∀ n, P4589493618409928826.a n = A242971 n

end A242971

/-! ## A242971.P6440996555859034913

`A390532(A103889(n+1))`
-/

namespace A242971.P6440996555859034913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A103889 (n + 1)).toNat

end

end A242971.P6440996555859034913

namespace A242971

/-- `A390532(A103889(n+1))` -/
def P6440996555859034913.Spec : Prop :=
  ∀ n, P6440996555859034913.a n = A242971 n

end A242971

/-! ## A242971.P6125571170621003135

`A390532(A114112(n+1))`
-/

namespace A242971.P6125571170621003135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A114112 (n + 1)).toNat

end

end A242971.P6125571170621003135

namespace A242971

/-- `A390532(A114112(n+1))` -/
def P6125571170621003135.Spec : Prop :=
  ∀ n, P6125571170621003135.a n = A242971 n

end A242971

/-! ## A242971.P13506763868674800207

`a(n-2)+C(a(n-2), and(1, n))` with `a(0)=1, a(1)=1`
-/

namespace A242971.P13506763868674800207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.choose (a (n - 2)) (Nat.land 1 n)

end

end A242971.P13506763868674800207

namespace A242971

/-- `a(n-2)+C(a(n-2), and(1, n))` -/
def P13506763868674800207.Spec : Prop :=
  ∀ n, (P13506763868674800207.a n : ℤ) = A242971 n

end A242971

/-! ## A242971.P7951461026222160254

`(A193356(n+1)+A072345(n))/2`
-/

namespace A242971.P7951461026222160254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193356 (n + 1) + A072345 n : ℚ) / 2

end

end A242971.P7951461026222160254

namespace A242971

/-- `(A193356(n+1)+A072345(n))/2` -/
def P7951461026222160254.Spec : Prop :=
  ∀ n, P7951461026222160254.a n = (A242971 n : ℚ)

end A242971

/-! ## A242971.P16583686919167599738

`a(n-2)+lcm(n, a(n-2))/n` with `a(0)=1, a(1)=1`
-/

namespace A242971.P16583686919167599738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) / (n : ℚ)

end

end A242971.P16583686919167599738

namespace A242971

/-- `a(n-2)+lcm(n, a(n-2))/n` -/
def P16583686919167599738.Spec : Prop :=
  ∀ n, P16583686919167599738.a n = (A242971 n : ℚ)

end A242971

/-! ## A242971.P13456718797876652247

`floor(a(n-2)²/a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A242971.P13456718797876652247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 3] fun n a =>
  ⌊(a (n - 2) ^ 2 : ℚ) / (a (n - 4) : ℚ)⌋

end

end A242971.P13456718797876652247

namespace A242971

/-- `floor(a(n-2)²/a(n-4))` -/
def P13456718797876652247.Spec : Prop :=
  ∀ n, P13456718797876652247.a n = A242971 n

end A242971

/-! ## A242971.P17926670710287066578

`A130128(A055802(n+3))`
-/

namespace A242971.P17926670710287066578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (A055802 (n + 3)).toNat

end

end A242971.P17926670710287066578

namespace A242971

/-- `A130128(A055802(n+3))` -/
def P17926670710287066578.Spec : Prop :=
  ∀ n, P17926670710287066578.a n = A242971 n

end A242971

/-! ## A242971.P17126522267973477107

`A128181(A134519(n+1))`
-/

namespace A242971.P17126522267973477107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128181 (A134519 (n + 1)).toNat

end

end A242971.P17126522267973477107

namespace A242971

/-- `A128181(A134519(n+1))` -/
def P17126522267973477107.Spec : Prop :=
  ∀ n, P17126522267973477107.a n = A242971 n

end A242971

/-!
# A242973: Positions in both e and Pi where both digits in the same position are prime.

The programs for A242973, there is no canonical definition to state claims against.
-/

/-! ## A242973.P16665684499278754409

`∩[A073302(n+1), A073303(n)]+1`
-/

namespace A242973.P16665684499278754409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073303 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A242973.P16665684499278754409

/-! ## A242973.P13649790087000939689

`∩[A073302(n+1)+1, A153031(n+1)]`
-/

namespace A242973.P13649790087000939689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073302 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242973.P13649790087000939689

/-!
# A242974: Let M_n = A002110(n) (the n-th primorial), let N*(n)(N**(n), respectively) be the number of numbers k in [1, M_n] for which lpf(k-3) > lpf(k-1) >= prime(n) (lpf(k-1) > lpf(k-3) >= prime(n), respectively) such that k-3, k-1 are not twin primes, where lpf=least prime factor. Then a(n) = N*(n) - N**(n).

The programs for A242974, there is no canonical definition to state claims against.
-/

/-! ## A242974.P3483268833568923781

`∑[∑[∑[A114611((n+4)²)]]]+1`
-/

namespace A242974.P3483268833568923781
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 ((n + 4) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A242974.P3483268833568923781

/-! ## A242974.P10447591533063839630

`A019276(A127048(n+1)-A333257(n))`
-/

namespace A242974.P10447591533063839630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019276 (A127048 (n + 1) - A333257 n).toNat

end

end A242974.P10447591533063839630

/-!
# A242975: Positions in e and Pi where the digit at each position is equal and prime.

The programs for A242975, there is no canonical definition to state claims against.
-/

/-! ## A242975.P5233845685990186644

`∩[A052055(n+1), A242973(n+1)]`
-/

namespace A242975.P5233845685990186644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242975.P5233845685990186644

/-! ## A242975.P8775940531214231778

`∩[A068394(n+1)+1, A242973(n+1)]`
-/

namespace A242975.P8775940531214231778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242975.P8775940531214231778

/-! ## A242975.P648274302035811995

`∩[A052055(n+1), A073303(n)+1]`
-/

namespace A242975.P648274302035811995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073303 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242975.P648274302035811995

/-! ## A242975.P16737036700138248799

`∩[A068394(n+1), A073303(n)]+1`
-/

namespace A242975.P16737036700138248799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073303 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A242975.P16737036700138248799

/-! ## A242975.P5994317696834556635

`∩[A052055(n+1), A153031(n+1)]`
-/

namespace A242975.P5994317696834556635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242975.P5994317696834556635

/-! ## A242975.P1097429861667544920

`∩[A068394(n+1)+1, A153031(n+1)]`
-/

namespace A242975.P1097429861667544920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068394 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242975.P1097429861667544920

/-!
# A242976: Number of ways to write n = i + j + k with 0 < i <= j <= k such that prime(i) mod i, prime(j) mod j and prime(k) mod k are all triangular numbers, where prime(m) mod m denotes the least nonnegative residue of prime(m) modulo m.

The programs for A242976, there is no canonical definition to state claims against.
-/

/-! ## A242976.P3809449617124525808

`∑[A215029(A250468(n+1)+A215029(n))]`
-/

namespace A242976.P3809449617124525808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A250468 (n + 1) + A215029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242976.P3809449617124525808

/-!
# A242979: Primes p such that p^3-2 and p^2-2 are both primes.

The programs for A242979, there is no canonical definition to state claims against.
-/

/-! ## A242979.P13597010784511397493

`p?[A330438(n+1)]`
-/

namespace A242979.P13597010784511397493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242979.P13597010784511397493

/-! ## A242979.P18343044250523752423

`p?[record[A330438(A133310(n))]]`
-/

namespace A242979.P18343044250523752423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330438 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242979.P18343044250523752423

/-! ## A242979.P2527833343224090205

`p?[A033999(n)*A330438(A008619(n))]`
-/

namespace A242979.P2527833343224090205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A330438 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242979.P2527833343224090205

/-! ## A242979.P5032450293407815318

`p?[A087960(n)*A330438(A008619(n))]`
-/

namespace A242979.P5032450293407815318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A330438 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242979.P5032450293407815318

/-! ## A242979.P17292584724702916118

`∩[A062326(n+1), A330438(n+1)]`
-/

namespace A242979.P17292584724702916118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242979.P17292584724702916118

/-! ## A242979.P9434679392896777134

`∩[A038599(n+1), A062326(n+1)]`
-/

namespace A242979.P9434679392896777134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242979.P9434679392896777134

/-! ## A242979.P12479937861861371802

`∩[A062326(n+1), A178251(n+1)]`
-/

namespace A242979.P12479937861861371802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242979.P12479937861861371802

/-! ## A242979.P4803898947887475578

`∩[A178251(n+1), A330438(n+1)]`
-/

namespace A242979.P4803898947887475578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242979.P4803898947887475578

/-! ## A242979.P10965659160540488950

`record[A006530(A330438(n+3))]`
-/

namespace A242979.P10965659160540488950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A330438 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242979.P10965659160540488950

/-! ## A242979.P10849997809409353113

`filter[A330438(n+1), A010051(#)]`
-/

namespace A242979.P10849997809409353113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A242979.P10849997809409353113

/-!
# A242983: a(n) = (n/2) * (n^3 - 2*n^2 - 2*n + 5).

The programs for A242983, the canonical program `A242983.P5343338815252454514` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242983 has offset 0).

The definition of A242983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242983.P5343338815252454514

`n/2*(n^3-2*n²-2*n+5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242983

/-- `n/2*(n^3-2*n²-2*n+5)` -/
def P5343338815252454514.Spec : Prop :=
  ∀ n, P5343338815252454514.a n = (A242983 n : ℚ)

end A242983

/-! ## A242983.P5505099679586809839

`C(n²-n, 2)-n*(n-2)`
-/

namespace A242983.P5505099679586809839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) * ((n : ℤ) - 2)

end

end A242983.P5505099679586809839

namespace A242983

/-- `C(n²-n, 2)-n*(n-2)` -/
def P5505099679586809839.Spec : Prop :=
  ∀ n, P5505099679586809839.a n = A242983 n

end A242983

/-! ## A242983.P4016475193352478220

`∑[A377663(abs(1-n))]`
-/

namespace A242983.P4016475193352478220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377663 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242983.P4016475193352478220

namespace A242983

/-- `∑[A377663(abs(1-n))]` -/
def P4016475193352478220.Spec : Prop :=
  ∀ n, P4016475193352478220.a n = A242983 n

end A242983

/-! ## A242983.P16168794822006073115

`A117665(n)-A000326(n)`
-/

namespace A242983.P16168794822006073115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117665 n - A000326 n

end

end A242983.P16168794822006073115

namespace A242983

/-- `A117665(n)-A000326(n)` -/
def P16168794822006073115.Spec : Prop :=
  ∀ n, P16168794822006073115.a n = A242983 n

end A242983

/-! ## A242983.P5989126185187460497

`A387525(n)-A081441(n)`
-/

namespace A242983.P5989126185187460497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387525 n - A081441 n

end

end A242983.P5989126185187460497

namespace A242983

/-- `A387525(n)-A081441(n)` -/
def P5989126185187460497.Spec : Prop :=
  ∀ n, P5989126185187460497.a n = A242983 n

end A242983

/-! ## A242983.P12859987283551629586

`A212135(n)-A326725(n)`
-/

namespace A242983.P12859987283551629586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n - A326725 n

end

end A242983.P12859987283551629586

namespace A242983

/-- `A212135(n)-A326725(n)` -/
def P12859987283551629586.Spec : Prop :=
  ∀ n, P12859987283551629586.a n = A242983 n

end A242983

/-! ## A242983.P16058800096604666587

`A101375(n)-A212343(n+2)`
-/

namespace A242983.P16058800096604666587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101375 n - A212343 (n + 2)

end

end A242983.P16058800096604666587

namespace A242983

/-- `A101375(n)-A212343(n+2)` -/
def P16058800096604666587.Spec : Prop :=
  ∀ n, P16058800096604666587.a n = A242983 n

end A242983

/-! ## A242983.P2870412095691544933

`∑[A280058(n)+2-(A000038(n)+n)]`
-/

namespace A242983.P2870412095691544933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n + 2 - (A000038 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242983.P2870412095691544933

namespace A242983

/-- `∑[A280058(n)+2-(A000038(n)+n)]` -/
def P2870412095691544933.Spec : Prop :=
  ∀ n, P2870412095691544933.a n = A242983 n

end A242983

/-!
# A242985: a(n) = 4^n + 2^(n+1).

The programs for A242985, the canonical program `A242985.P924288704119484347` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242985 has offset 0).

The definition of A242985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+2^(n+1)` (program `A242985.P924288704119484347`, by `A242985.P924288704119484347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242985.P924288704119484347

`4^n+2^(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242985

/-- `4^n+2^(n+1)` -/
def P924288704119484347.Spec : Prop :=
  ∀ n, (P924288704119484347.a n : ℤ) = A242985 n

theorem P924288704119484347.correct : P924288704119484347.Spec := by
  intro n
  simp only [A242985]

end A242985

/-! ## A242985.P11426604514543104356

`ogf((3-10x)/(1-6x+8x^2))`
-/

namespace A242985.P11426604514543104356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10] [1, -6, 8] n

end

end A242985.P11426604514543104356

namespace A242985

/-- `ogf((3-10x)/(1-6x+8x^2))` -/
def P11426604514543104356.Spec : Prop :=
  ∀ n, P11426604514543104356.a n = A242985 n

end A242985

/-! ## A242985.P5400454689911105345

`abs(1-xor(-1, 2^n)²)`
-/

namespace A242985.P5400454689911105345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.xor (-1) (2 ^ n : ℤ) ^ 2|

end

end A242985.P5400454689911105345

namespace A242985

/-- `abs(1-xor(-1, 2^n)²)` -/
def P5400454689911105345.Spec : Prop :=
  ∀ n, P5400454689911105345.a n = A242985 n

end A242985

/-! ## A242985.P11861456556104954323

`2*(2*a(n-1)-2^n)` with `a(0)=3`
-/

namespace A242985.P11861456556104954323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (2 * a (n - 1) - (2 ^ n : ℤ))

end

end A242985.P11861456556104954323

namespace A242985

/-- `2*(2*a(n-1)-2^n)` -/
def P11861456556104954323.Spec : Prop :=
  ∀ n, P11861456556104954323.a n = A242985 n

theorem P11861456556104954323.correct : P11861456556104954323.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A242985, Nat.add_sub_cancel, A242985.P11861456556104954323.a, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A242985, Nat.add_sub_cancel, A242985.P11861456556104954323.a, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A242985

/-! ## A242985.P320064527904694117

`abs(floor(∑[2*a(n-1)]²)-1)` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A242985.P320064527904694117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1|

end

end A242985.P320064527904694117

namespace A242985

/-- `abs(floor(∑[2*a(n-1)]²)-1)` -/
def P320064527904694117.Spec : Prop :=
  ∀ n, P320064527904694117.a n = A242985 n

end A242985

/-! ## A242985.P64337199593842013

`floor(2*(3*a(n-1)-4*a(n-2)))` with `a(0)=3, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A242985.P64337199593842013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  2 * (3 * a (n - 1) - 4 * a (n - 2))

end

end A242985.P64337199593842013

namespace A242985

/-- `floor(2*(3*a(n-1)-4*a(n-2)))` -/
def P64337199593842013.Spec : Prop :=
  ∀ n, P64337199593842013.a n = A242985 n

theorem P64337199593842013.correct : P64337199593842013.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A242985, Nat.add_sub_cancel, A242985.P64337199593842013.a, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A242985, Nat.add_sub_cancel, A242985.P64337199593842013.a, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A242985

/-! ## A242985.P13299550585296366189

`abs(1-A028400(n))`
-/

namespace A242985.P13299550585296366189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A028400 n|

end

end A242985.P13299550585296366189

namespace A242985

/-- `abs(1-A028400(n))` -/
def P13299550585296366189.Spec : Prop :=
  ∀ n, P13299550585296366189.a n = A242985 n

end A242985

/-! ## A242985.P10532672431621275327

`A290075(2*(n+2))`
-/

namespace A242985.P10532672431621275327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (2 * (n + 2))

end

end A242985.P10532672431621275327

namespace A242985

/-- `A290075(2*(n+2))` -/
def P10532672431621275327.Spec : Prop :=
  ∀ n, P10532672431621275327.a n = A242985 n

end A242985

/-! ## A242985.P8628934798422411034

`2^n*A052548(n)`
-/

namespace A242985.P8628934798422411034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052548 n

end

end A242985.P8628934798422411034

namespace A242985

/-- `2^n*A052548(n)` -/
def P8628934798422411034.Spec : Prop :=
  ∀ n, P8628934798422411034.a n = A242985 n

end A242985

/-! ## A242985.P7448727592564310257

`record[A052552(n)²-1]`
-/

namespace A242985.P7448727592564310257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242985.P7448727592564310257

namespace A242985

/-- `record[A052552(n)²-1]` -/
def P7448727592564310257.Spec : Prop :=
  ∀ n, P7448727592564310257.a n = A242985 n

end A242985

/-! ## A242985.P295967214009111526

`(A000051(n)+1)*2^n`
-/

namespace A242985.P295967214009111526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n + 1) * (2 ^ n : ℤ)

end

end A242985.P295967214009111526

namespace A242985

/-- `(A000051(n)+1)*2^n` -/
def P295967214009111526.Spec : Prop :=
  ∀ n, P295967214009111526.a n = A242985 n

end A242985

/-! ## A242985.P10150128864960053052

`2^n*A056469(n+1)`
-/

namespace A242985.P10150128864960053052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056469 (n + 1)

end

end A242985.P10150128864960053052

namespace A242985

/-- `2^n*A056469(n+1)` -/
def P10150128864960053052.Spec : Prop :=
  ∀ n, P10150128864960053052.a n = A242985 n

end A242985

/-! ## A242985.P10570391070217925929

`abs((A000225(n)+2)²-1)`
-/

namespace A242985.P10570391070217925929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000225 n + 2) ^ 2 - 1|

end

end A242985.P10570391070217925929

namespace A242985

/-- `abs((A000225(n)+2)²-1)` -/
def P10570391070217925929.Spec : Prop :=
  ∀ n, P10570391070217925929.a n = A242985 n

end A242985

/-! ## A242985.P9444386953081191238

`A094373(n)*A198633(n)`
-/

namespace A242985.P9444386953081191238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n * A198633 n

end

end A242985.P9444386953081191238

namespace A242985

/-- `A094373(n)*A198633(n)` -/
def P9444386953081191238.Spec : Prop :=
  ∀ n, P9444386953081191238.a n = A242985 n

end A242985

/-! ## A242985.P6103706831329800018

`A052548(n)*A131577(n+1)`
-/

namespace A242985.P6103706831329800018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n * A131577 (n + 1)

end

end A242985.P6103706831329800018

namespace A242985

/-- `A052548(n)*A131577(n+1)` -/
def P6103706831329800018.Spec : Prop :=
  ∀ n, P6103706831329800018.a n = A242985 n

end A242985

/-! ## A242985.P16894132112385405578

`(A000079(n)+2)*A000079(n)`
-/

namespace A242985.P16894132112385405578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + 2) * A000079 n

end

end A242985.P16894132112385405578

namespace A242985

/-- `(A000079(n)+2)*A000079(n)` -/
def P16894132112385405578.Spec : Prop :=
  ∀ n, P16894132112385405578.a n = A242985 n

end A242985

/-! ## A242985.P17843155848151237367

`Δ[A188129(n)/3]`
-/

namespace A242985.P17843155848151237367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188129 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A242985.P17843155848151237367

namespace A242985

/-- `Δ[A188129(n)/3]` -/
def P17843155848151237367.Spec : Prop :=
  ∀ n, P17843155848151237367.a n = (A242985 n : ℚ)

end A242985

/-!
# A242986: a(n) = 6*(n+1)!/((3+floor(n/2))*(floor(n/2)!)^2).

The programs for A242986, the canonical program `A242986.P9667508585129435527` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242986 has offset 0).

The definition of A242986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242986.P9667508585129435527

`6*(n+1)/(3+floor(n/2))*A056040(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242986

/-- `6*(n+1)/(3+floor(n/2))*A056040(n)` -/
def P9667508585129435527.Spec : Prop :=
  ∀ n, P9667508585129435527.a n = (A242986 n : ℚ)

end A242986

/-! ## A242986.P9521775334575704116

`6*(n+1)!/((3+floor(n/2))*floor(n/2)!²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242986.P9521775334575704116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.factorial (n + 1) : ℚ) / ((3 + ⌊(n : ℚ) / 2⌋) * (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℤ) : ℚ)

end

end A242986.P9521775334575704116

namespace A242986

/-- `6*(n+1)!/((3+floor(n/2))*floor(n/2)!²)` -/
def P9521775334575704116.Spec : Prop :=
  ∀ n, P9521775334575704116.a n = (A242986 n : ℚ)

end A242986

/-! ## A242986.P11152587482959136838

`(n+1)^and(1, n)*A007946(floor(n/2))`
-/

namespace A242986.P11152587482959136838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.land 1 n : ℤ) * A007946 ⌊(n : ℚ) / 2⌋.toNat

end

end A242986.P11152587482959136838

namespace A242986

/-- `(n+1)^and(1, n)*A007946(floor(n/2))` -/
def P11152587482959136838.Spec : Prop :=
  ∀ n, P11152587482959136838.a n = A242986 n

end A242986

/-!
# A242990: Numbers n such that concatenating 1 with five instances of n produces a prime.

The programs for A242990, there is no canonical definition to state claims against.
-/

/-! ## A242990.P18110051023510697837

`A324695(A002383(n+1))+2`
-/

namespace A242990.P18110051023510697837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A002383 (n + 1)).toNat + 2

end

end A242990.P18110051023510697837

/-!
# A242991: Smallest prime p such that p - floor(sqrt(p))^2 = n^2.

The programs for A242991, there is no canonical definition to state claims against.
-/

/-! ## A242991.P10999719617613529207

`A056893((n+1)²)`
-/

namespace A242991.P10999719617613529207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056893 ((n + 1) ^ 2)

end

end A242991.P10999719617613529207

/-! ## A242991.P3630818463760936964

`A056894((n+1)²)+(n+1)²`
-/

namespace A242991.P3630818463760936964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056894 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A242991.P3630818463760936964

/-! ## A242991.P12192961254787224088

`(n+1)²+A056895((n+1)²)²`
-/

namespace A242991.P12192961254787224088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A056895 ((n + 1) ^ 2) ^ 2

end

end A242991.P12192961254787224088

/-! ## A242991.P6538383041673332068

`A007318(C(2, n+2))*A056893(∑[2*n+1])`
-/

namespace A242991.P6538383041673332068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A056893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242991.P6538383041673332068

/-! ## A242991.P244430269082399742

`A056893(A056838(3*(n+1)))%A024166(n+4)`
-/

namespace A242991.P244430269082399742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056893 (A056838 (3 * (n + 1))).toNat) (A024166 (n + 4))

end

end A242991.P244430269082399742

/-!
# A242992: Least k>n/2, k

The programs for A242992, there is no canonical definition to state claims against.
-/

/-! ## A242992.P8231873466439056822

`A219029(2^n)%round(1/acot(n))`
-/

namespace A242992.P8231873466439056822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219029 (2 ^ n)) (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)))

end

end A242992.P8231873466439056822

/-! ## A242992.P17648529860668861545

`A057353(2^n-1)%round(acot(n)+n)`
-/

namespace A242992.P17648529860668861545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057353 (2 ^ n - 1)) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))

end

end A242992.P17648529860668861545

/-! ## A242992.P4580456264437592273

`A030065(2^n-1)%round(sqrt(n²+1))`
-/

namespace A242992.P4580456264437592273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030065 (2 ^ n - 1)) (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)))

end

end A242992.P4580456264437592273

/-! ## A242992.P15172565629686041583

`A233277(ceil(2^(n-1)))%round(sqrt(n²+1))`
-/

namespace A242992.P15172565629686041583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233277 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)))

end

end A242992.P15172565629686041583

/-! ## A242992.P3491981540985066603

`A046699(floor(3*2^(n-1)-n))%round(1/acot(n))`
-/

namespace A242992.P3491981540985066603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046699 ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ)⌋.toNat) (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)))

end

end A242992.P3491981540985066603

/-!
# A242995: a(n) = a(n-1)^2 + a(n-1)*a(n-2)^2 - a(n-2)^4 with a(1) = 2, a(2) = 3.

The programs for A242995, the canonical program `A242995.P4656095044107920795` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242995 has offset 1).

The definition of A242995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+a(n-1)*a(n-2)²-a(n-2)^4` (program `A242995.P4656095044107920795`, by `A242995.P4656095044107920795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242995.P4656095044107920795

`a(n-1)²+a(n-1)*a(n-2)²-a(n-2)^4` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242995

/-- `a(n-1)²+a(n-1)*a(n-2)²-a(n-2)^4` -/
def P4656095044107920795.Spec : Prop :=
  ∀ n, P4656095044107920795.a n = A242995 (n + 1)

theorem P4656095044107920795.correct : P4656095044107920795.Spec := by
  intro n
  simp only [A242995, Nat.add_sub_cancel]

end A242995

/-! ## A242995.P4082567868019306370

`A242996(n+2)/A242996(n+1)`
-/

namespace A242995.P4082567868019306370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242996 (n + 2) : ℚ) / (A242996 (n + 1) : ℚ)

end

end A242995.P4082567868019306370

namespace A242995

/-- `A242996(n+2)/A242996(n+1)` -/
def P4082567868019306370.Spec : Prop :=
  ∀ n, P4082567868019306370.a n = (A242995 (n + 1) : ℚ)

end A242995

/-! ## A242995.P6557586254574358281

`A127814(n+1)*A163806(A140215(n+1))`
-/

namespace A242995.P6557586254574358281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127814 (n + 1) * A163806 (A140215 (n + 1)).toNat

end

end A242995.P6557586254574358281

namespace A242995

/-- `A127814(n+1)*A163806(A140215(n+1))` -/
def P6557586254574358281.Spec : Prop :=
  ∀ n, P6557586254574358281.a n = A242995 (n + 1)

end A242995

/-! ## A242995.P2245339135366825972

`ratio[A242996(n+1)]`
-/

namespace A242995.P2245339135366825972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242996 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A242995.P2245339135366825972

namespace A242995

/-- `ratio[A242996(n+1)]` -/
def P2245339135366825972.Spec : Prop :=
  ∀ n, P2245339135366825972.a n = (A242995 (n + 1) : ℚ)

end A242995

/-!
# A242996: a(n) = (a(n-1)^2 - a(n-2)^4) * a(n-1) / a(n-2)^2 with a(1) = 1, a(2) = 2.

The programs for A242996, the canonical program `A242996.P3573773781677204842` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242996 has offset 1).

The definition of A242996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242996.P3573773781677204842

`(a(n-1)²-a(n-2)^4)*a(n-1)/a(n-2)²` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242996

/-- `(a(n-1)²-a(n-2)^4)*a(n-1)/a(n-2)²` -/
def P3573773781677204842.Spec : Prop :=
  ∀ n, P3573773781677204842.a n = (A242996 (n + 1) : ℚ)

end A242996

/-! ## A242996.P18008031283044239181

`A065357(A023416(n))*A127815(n+1)`
-/

namespace A242996.P18008031283044239181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 (A023416 n).toNat * A127815 (n + 1)

end

end A242996.P18008031283044239181

namespace A242996

/-- `A065357(A023416(n))*A127815(n+1)` -/
def P18008031283044239181.Spec : Prop :=
  ∀ n, P18008031283044239181.a n = A242996 (n + 1)

end A242996

/-! ## A242996.P16528094243910811459

`A033999(A243001(n))*A127815(n+1)`
-/

namespace A242996.P16528094243910811459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A243001 (n + 1583)).toNat * A127815 (n + 1)

end

end A242996.P16528094243910811459

namespace A242996

/-- `A033999(A243001(n))*A127815(n+1)` -/
def P16528094243910811459.Spec : Prop :=
  ∀ n, P16528094243910811459.a n = A242996 (n + 1)

end A242996

/-! ## A242996.P12955086892453750016

`A127814(n+1)/A242995(n+1)*A127815(n+1)`
-/

namespace A242996.P12955086892453750016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127814 (n + 1) : ℚ) / (A242995 (n + 1) : ℚ) * (A127815 (n + 1) : ℚ)

end

end A242996.P12955086892453750016

namespace A242996

/-- `A127814(n+1)/A242995(n+1)*A127815(n+1)` -/
def P12955086892453750016.Spec : Prop :=
  ∀ n, P12955086892453750016.a n = (A242996 (n + 1) : ℚ)

end A242996

/-! ## A242996.P6704257655077857674

`∏[A242995(n+1)]/A242995(n+1)`
-/

namespace A242996.P6704257655077857674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242995 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A242995 (n + 1) : ℚ)

end

end A242996.P6704257655077857674

namespace A242996

/-- `∏[A242995(n+1)]/A242995(n+1)` -/
def P6704257655077857674.Spec : Prop :=
  ∀ n, P6704257655077857674.a n = (A242996 (n + 1) : ℚ)

end A242996

/-!
# A242997: a(n) is the order of the group of invertible elements in the semigroup M whose elements are the closed binary operations on an n-point set S and whose operation (on operations, in this case) is given by x AB y = (x B y) A (y B x) for operations A and B on S and points x and y in S.

The programs for A242997, the canonical program `A242997.P11314463843651373648` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242997 has offset 1).

The definition of A242997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242997.P11314463843651373648

`(n+1)!*((n+1)*n/2)!*2^((n+1)*n/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242997

/-- `(n+1)!*((n+1)*n/2)!*2^((n+1)*n/2)` -/
def P11314463843651373648.Spec : Prop :=
  ∀ n, P11314463843651373648.a n = (A242997 (n + 1) : ℝ)

end A242997

/-! ## A242997.P7246981624669639471

`A000142(n+1)*A000165(A000217(n))`
-/

namespace A242997.P7246981624669639471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A000165 (A000217 n).toNat

end

end A242997.P7246981624669639471

namespace A242997

/-- `A000142(n+1)*A000165(A000217(n))` -/
def P7246981624669639471.Spec : Prop :=
  ∀ n, P7246981624669639471.a n = A242997 (n + 1)

end A242997

/-!
# A242998: Number of integers k such that R = (2^k*Q - Q - 1)/(Q + 1 - 2^k) is a prime number, when Q = A000668(n) is the n-th Mersenne prime.

The programs for A242998, there is no canonical definition to state claims against.
-/

/-! ## A242998.P11251793770654004680

`round(n%10/cosh(∑[char[4*n]]))`
-/

namespace A242998.P11251793770654004680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n % 10 : ℕ) : ℝ) / Real.cosh ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A242998.P11251793770654004680

/-! ## A242998.P11325355657442454536

`floor(atan(a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=1, a(6)=2, a(7)=2`
-/

namespace A242998.P11325355657442454536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 1, 2, 2] fun n a =>
  ⌊Real.arctan (a (n - 2) : ℝ)⌋

end

end A242998.P11325355657442454536

/-! ## A242998.P16438331188546168808

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=1, a(6)=2, a(7)=2, a(8)=1, a(9)=1, a(10)=0`
-/

namespace A242998.P16438331188546168808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 1, 2, 2, 1, 1, 0] fun n a =>
  a (n - 1)

end

end A242998.P16438331188546168808

/-! ## A242998.P3086562953614697367

`round(2*n/2^round(n-∑[and(6, n)/6]))`
-/

namespace A242998.P3086562953614697367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 6 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A242998.P3086562953614697367

/-! ## A242998.P6276779398697655847

`round(n/cosh(A212218(n)))`
-/

namespace A242998.P6276779398697655847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.cosh (A212218 n : ℝ))

end

end A242998.P6276779398697655847

/-!
# A242999: Mersenne prime exponents p in A000043 such that R=2^k-1+(2^k-2)/(2^(p-k)-1) is prime for some k < p, listed with multiplicity (number of k's), see A243003 for the k-values.

The programs for A242999, there is no canonical definition to state claims against.
-/

/-! ## A242999.P9301043765301498994

`A174265(A347649(n+1))`
-/

namespace A242999.P9301043765301498994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (A347649 (n + 1)).toNat

end

end A242999.P9301043765301498994

/-! ## A242999.P11743041755827072854

`A174265(A005229(n+2))`
-/

namespace A242999.P11743041755827072854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (A005229 (n + 2)).toNat

end

end A242999.P11743041755827072854

/-! ## A242999.P5014574671337393781

`A000043(A156874(∑[n+3]))`
-/

namespace A242999.P5014574671337393781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A156874 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A242999.P5014574671337393781

/-! ## A242999.P15835725558364007352

`A000043(A347649(n+1)+1)`
-/

namespace A242999.P15835725558364007352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A347649 (n + 1) + 1).toNat

end

end A242999.P15835725558364007352

/-! ## A242999.P3978427865509585893

`A000043(A005229(n+2)+1)`
-/

namespace A242999.P3978427865509585893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A005229 (n + 2) + 1).toNat

end

end A242999.P3978427865509585893

