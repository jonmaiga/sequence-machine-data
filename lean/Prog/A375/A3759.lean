import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A375900: E.g.f. satisfies A(x) = 1 / (1 + log(1 - x * A(x)^(1/3)))^3.

The programs for A375900, there is no canonical definition to state claims against.
-/

/-! ## A375900.P2345509948339275138

`A067535(A346555(n+1)+A057500(n+2))`
-/

namespace A375900.P2345509948339275138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A346555 (n + 1) + A057500 (n + 2)).toNat

end

end A375900.P2345509948339275138

/-!
# A375904: E.g.f. satisfies A(x) = (1 - log(1 - x * A(x)^(1/2)))^2.

The programs for A375904, there is no canonical definition to state claims against.
-/

/-! ## A375904.P7690274034439276274

`A224399(A026119(n))`
-/

namespace A375904.P7690274034439276274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224399 (A026119 n).toNat

end

end A375904.P7690274034439276274

/-!
# A375905: E.g.f. satisfies A(x) = (1 - log(1 - x * A(x)^(1/3)))^3.

The programs for A375905, there is no canonical definition to state claims against.
-/

/-! ## A375905.P7664745629871047885

`A133310(A113351(n)+1)`
-/

namespace A375905.P7664745629871047885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A113351 n + 1).toNat

end

end A375905.P7664745629871047885

/-!
# A375906: Positions of primes in the sequence of numbers of the form 2^t * 3^u + 1 (A055600).

The programs for A375906, there is no canonical definition to state claims against.
-/

/-! ## A375906.P17677373122447388792

`record[A322026(A006093(n+1))]`
-/

namespace A375906.P17677373122447388792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375906.P17677373122447388792

/-! ## A375906.P15267384289201374560

`A322026(A005109(n+1)-1)`
-/

namespace A375906.P15267384289201374560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A005109 (n + 1) - 1).toNat

end

end A375906.P15267384289201374560

/-! ## A375906.P12698524486594536053

`record[A322026(record[A000010(n+1)])]`
-/

namespace A375906.P12698524486594536053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375906.P12698524486594536053

/-! ## A375906.P16954011924154522239

`eq[1, A318828(A003586(n+1)+1)]+1`
-/

namespace A375906.P16954011924154522239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (A003586 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375906.P16954011924154522239

/-! ## A375906.P8610094417349932377

`eq[2, A000005(A003586(n+1)+1)]+1`
-/

namespace A375906.P8610094417349932377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003586 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375906.P8610094417349932377

/-!
# A375912: Primes p such that p*nextprime(p)+1 and p + nextprime(p)+1 are both perfect squares where nextprime(p) is the smallest prime that is larger than p.

The programs for A375912, there is no canonical definition to state claims against.
-/

/-! ## A375912.P2542511185199106095

`p?[p?[∑[or(1, n)]]-2]`
-/

namespace A375912.P2542511185199106095
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P2542511185199106095

/-! ## A375912.P1011533049448372156

`A166564(Δ[n²])`
-/

namespace A375912.P1011533049448372156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A375912.P1011533049448372156

/-! ## A375912.P17106710334803612404

`p?[record[A252096(n+1)]]`
-/

namespace A375912.P17106710334803612404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P17106710334803612404

/-! ## A375912.P5983332546935395080

`p?[p?[A000982(n)]-2]`
-/

namespace A375912.P5983332546935395080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P5983332546935395080

/-! ## A375912.P5286953206339355617

`p?[p?[A001844(n)]-2]`
-/

namespace A375912.P5286953206339355617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P5286953206339355617

/-!
# A375914: Base-5 Euler-Jacobi pseudoprimes: odd composite k coprime to 5 such that 5^((k-1)/2) == (5/k) (mod k), where (5/k) is the Jacobi symbol (or Kronecker symbol).

The programs for A375914, there is no canonical definition to state claims against.
-/

/-! ## A375914.P2534539155749004705

`∪[A020231(n+1), A375915(n+1)]`
-/

namespace A375914.P2534539155749004705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375914.P2534539155749004705

/-! ## A375914.P3457360215085071216

`∪[A375915(n+1), A375916(n+1)]`
-/

namespace A375914.P3457360215085071216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375914.P3457360215085071216

/-! ## A375914.P13391204123817063299

`A262052(A351870(n)+2)`
-/

namespace A375914.P13391204123817063299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (A351870 n + 2).toNat

end

end A375914.P13391204123817063299

/-! ## A375914.P14522479084782199953

`record[A262052(A348389(n+2))]`
-/

namespace A375914.P14522479084782199953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (A348389 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375914.P14522479084782199953

/-! ## A375914.P1444017741844928368

`A262052(C(A085079(n+1), n)+1)`
-/

namespace A375914.P1444017741844928368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (Nat.choose (A085079 (n + 1)).toNat n + 1)

end

end A375914.P1444017741844928368

/-!
# A375917: Composite numbers k == 1, 11 (mod 12) such that 3^((k-1)/2) == 1 (mod k).

The programs for A375917, there is no canonical definition to state claims against.
-/

/-! ## A375917.P9421802341992430603

`filter[A329705(n+1), A373978(#)]`
-/

namespace A375917.P9421802341992430603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A375917.P9421802341992430603

/-!
# A375918: Composite numbers k == 5, 7 (mod 12) such that 3^((k-1)/2) == -1 (mod k).

The programs for A375918, there is no canonical definition to state claims against.
-/

/-! ## A375918.P17680383432161097317

`record[A020229(A066099(3*n+2))]`
-/

namespace A375918.P17680383432161097317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (A066099 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375918.P17680383432161097317

/-! ## A375918.P10066133058253642872

`record[A020229(∏{e}[A347578(n)+1, #+1])]`
-/

namespace A375918.P10066133058253642872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375918.P10066133058253642872

/-!
# A375921: a(n) = LCM(1,2, ..., 2n+1)/6.

The programs for A375921, the canonical program `A375921.P491962245321920222` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375921 has offset 1).

The definition of A375921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375921.P491962245321920222

`A003418(2*(n+1)+1)/6`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375921

/-- `A003418(2*(n+1)+1)/6` -/
def P491962245321920222.Spec : Prop :=
  ∀ n, P491962245321920222.a n = (A375921 (n + 1) : ℚ)

end A375921

/-! ## A375921.P4625856677379292920

`lcm(a(n-1), ∑[(2*n+1)²])` with `a(0)=1`
-/

namespace A375921.P4625856677379292920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375921.P4625856677379292920

namespace A375921

/-- `lcm(a(n-1), ∑[(2*n+1)²])` -/
def P4625856677379292920.Spec : Prop :=
  ∀ n, (P4625856677379292920.a n : ℤ) = A375921 (n + 1)

end A375921

/-! ## A375921.P1799010900092461023

`A076100(n+2)/6`
-/

namespace A375921.P1799010900092461023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076100 (n + 2) : ℚ) / 6

end

end A375921.P1799010900092461023

namespace A375921

/-- `A076100(n+2)/6` -/
def P1799010900092461023.Spec : Prop :=
  ∀ n, P1799010900092461023.a n = (A375921 (n + 1) : ℚ)

end A375921

/-! ## A375921.P17565665839038507353

`A025555(2*(n+1))/3`
-/

namespace A375921.P17565665839038507353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025555 (2 * (n + 1)) : ℚ) / 3

end

end A375921.P17565665839038507353

namespace A375921

/-- `A025555(2*(n+1))/3` -/
def P17565665839038507353.Spec : Prop :=
  ∀ n, P17565665839038507353.a n = (A375921 (n + 1) : ℚ)

end A375921

/-! ## A375921.P10272179025068335059

`A120108(A096376(n+1))`
-/

namespace A375921.P10272179025068335059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A096376 (n + 1)).toNat

end

end A375921.P10272179025068335059

namespace A375921

/-- `A120108(A096376(n+1))` -/
def P10272179025068335059.Spec : Prop :=
  ∀ n, P10272179025068335059.a n = A375921 (n + 1)

end A375921

/-!
# A375924: Number A(n,k) of partitions of [n] such that the element sum of each block is one more than a multiple of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A375924, there is no canonical definition to state claims against.
-/

/-! ## A375924.P12125413639325766535

`A326680(n+2)+A118514(A245397(n))`
-/

namespace A375924.P12125413639325766535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 (n + 2) + A118514 (A245397 n).toNat

end

end A375924.P12125413639325766535

/-! ## A375924.P9916662422055750077

`A190615(lcm(A062383(n), A244142(n)))`
-/

namespace A375924.P9916662422055750077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (Int.lcm (A062383 n) (A244142 n))

end

end A375924.P9916662422055750077

/-!
# A375925: Squares visited by a king moving on a walled, spirally numbered board, where a wall must be jumped on each move, always to the lowest available unvisited square.

The programs for A375925, there is no canonical definition to state claims against.
-/

/-! ## A375925.P10261225613484257518

`A383185(n)+1`
-/

namespace A375925.P10261225613484257518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383185 n + 1

end

end A375925.P10261225613484257518

/-! ## A375925.P7808841537314553170

`A008619(2*A383185(n))`
-/

namespace A375925.P7808841537314553170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A383185 n).toNat

end

end A375925.P7808841537314553170

/-! ## A375925.P218655567215313169

`A029579(2*A383185(n))`
-/

namespace A375925.P218655567215313169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A383185 n).toNat

end

end A375925.P218655567215313169

/-!
# A375926: Numbers k such that A018252(k+1) = A018252(k) + 1. In other words, the k-th nonprime number is 1 less than the next.

The programs for A375926, there is no canonical definition to state claims against.
-/

/-! ## A375926.P15600625370843047395

`comp[p?[comp[2*n]]-(n+3)]+1`
-/

namespace A375926.P15600625370843047395
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375926.P15600625370843047395

/-! ## A375926.P17467710677364579810

`record[A205793(n+3)]`
-/

namespace A375926.P17467710677364579810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375926.P17467710677364579810

/-! ## A375926.P1959279737877093055

`comp[A073170(n+1)]`
-/

namespace A375926.P1959279737877093055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P1959279737877093055

/-! ## A375926.P11634823454870847386

`comp[n-A284114(n)]`
-/

namespace A375926.P11634823454870847386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P11634823454870847386

/-! ## A375926.P7118316359762342402

`A375929(n+1)+1`
-/

namespace A375926.P7118316359762342402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375929 (n + 1) + 1

end

end A375926.P7118316359762342402

/-! ## A375926.P8189832648696314534

`comp[Δ[A082500(n+1)]]`
-/

namespace A375926.P8189832648696314534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P8189832648696314534

/-! ## A375926.P18129887451469168426

`comp[record[A047814(n)]-n]`
-/

namespace A375926.P18129887451469168426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P18129887451469168426

/-! ## A375926.P10934052731001985436

`∑[A373403(n+1)]+1`
-/

namespace A375926.P10934052731001985436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A375926.P10934052731001985436

/-! ## A375926.P6442621884003854799

`comp[A065890(n+1)]+1`
-/

namespace A375926.P6442621884003854799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375926.P6442621884003854799

/-!
# A375927: Numbers k such that A005117(k+1) - A005117(k) = 1. In other words, the k-th squarefree number is 1 less than the next.

The programs for A375927, the canonical program `A375927.P3509821031608274898` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375927 has offset 1).

The definition of A375927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375927.P12301904606625077532

`comp[∑[A120992(n+1)]-1]+1`
-/

namespace A375927.P12301904606625077532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375927.P12301904606625077532

namespace A375927

/-- `comp[∑[A120992(n+1)]-1]+1` -/
def P12301904606625077532.Spec : Prop :=
  ∀ n, (P12301904606625077532.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P3509821031608274898

`comp[A013929(n+1)-(n+2)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375927

/-- `comp[A013929(n+1)-(n+2)]+1` -/
def P3509821031608274898.Spec : Prop :=
  ∀ n, (P3509821031608274898.a n : ℤ) = A375927 (n + 1)

theorem P3509821031608274898.correct : P3509821031608274898.Spec := by
  intro n
  simp only [A375927, Nat.add_sub_cancel]

end A375927

/-! ## A375927.P10329635571236986446

`A013928(A007674(n+1)+1)`
-/

namespace A375927.P10329635571236986446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A007674 (n + 1) + 1).toNat

end

end A375927.P10329635571236986446

namespace A375927

/-- `A013928(A007674(n+1)+1)` -/
def P10329635571236986446.Spec : Prop :=
  ∀ n, P10329635571236986446.a n = A375927 (n + 1)

end A375927

/-! ## A375927.P4929987544211703179

`eq[1, A076259(n+1)]+1`
-/

namespace A375927.P4929987544211703179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375927.P4929987544211703179

namespace A375927

/-- `eq[1, A076259(n+1)]+1` -/
def P4929987544211703179.Spec : Prop :=
  ∀ n, (P4929987544211703179.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P4288732140990383755

`eq[1, Δ[record[∏{p}[n, #]]]]+1`
-/

namespace A375927.P4288732140990383755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375927.P4288732140990383755

namespace A375927

/-- `eq[1, Δ[record[∏{p}[n, #]]]]+1` -/
def P4288732140990383755.Spec : Prop :=
  ∀ n, (P4288732140990383755.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P2780590901208576650

`A100112(A007674(n+1))`
-/

namespace A375927.P2780590901208576650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A007674 (n + 1)).toNat

end

end A375927.P2780590901208576650

namespace A375927

/-- `A100112(A007674(n+1))` -/
def P2780590901208576650.Spec : Prop :=
  ∀ n, P2780590901208576650.a n = A375927 (n + 1)

end A375927

/-! ## A375927.P3665084490512846752

`record[A027656(2*n)/A076259(n+1)]`
-/

namespace A375927.P3665084490512846752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 (2 * n) : ℚ) / (A076259 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375927.P3665084490512846752

namespace A375927

/-- `record[A027656(2*n)/A076259(n+1)]` -/
def P3665084490512846752.Spec : Prop :=
  ∀ n, P3665084490512846752.a n = (A375927 (n + 1) : ℚ)

end A375927

/-! ## A375927.P2950907974539487238

`A262869(A295243(n+1))`
-/

namespace A375927.P2950907974539487238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A295243 (n + 1)).toNat

end

end A375927.P2950907974539487238

namespace A375927

/-- `A262869(A295243(n+1))` -/
def P2950907974539487238.Spec : Prop :=
  ∀ n, P2950907974539487238.a n = A375927 (n + 1)

end A375927

/-! ## A375927.P8397705520760664588

`∑[A373127(n+1)]`
-/

namespace A375927.P8397705520760664588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375927.P8397705520760664588

namespace A375927

/-- `∑[A373127(n+1)]` -/
def P8397705520760664588.Spec : Prop :=
  ∀ n, P8397705520760664588.a n = A375927 (n + 1)

end A375927

/-! ## A375927.P3645237131947957762

`lt[A076259(n+1), A020639(A046801(2*n+3))]+1`
-/

namespace A375927.P3645237131947957762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046801 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A375927.P3645237131947957762

namespace A375927

/-- `lt[A076259(n+1), A020639(A046801(2*n+3))]+1` -/
def P3645237131947957762.Spec : Prop :=
  ∀ n, (P3645237131947957762.a n : ℤ) = A375927 (n + 1)

end A375927

/-!
# A375928: Positions of adjacent non-prime-powers (exclusive) differing by more than 1.

The programs for A375928, there is no canonical definition to state claims against.
-/

/-! ## A375928.P13585230592492311605

`∑[A110969(n+1)]`
-/

namespace A375928.P13585230592492311605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375928.P13585230592492311605

/-! ## A375928.P5001066786269529973

`record[Δ[A305976(n+1)]]`
-/

namespace A375928.P5001066786269529973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P5001066786269529973

/-! ## A375928.P11965721590784578436

`record[A322841(n+1)+1]`
-/

namespace A375928.P11965721590784578436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P11965721590784578436

/-! ## A375928.P11972300136709524602

`lt[1, A375708(n+1)]+1`
-/

namespace A375928.P11972300136709524602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375928.P11972300136709524602

/-! ## A375928.P11990267733091512568

`record[n-A330292(n+1)]+1`
-/

namespace A375928.P11990267733091512568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A375928.P11990267733091512568

/-! ## A375928.P324837054105752991

`record[A356068(A047994(n+1))]`
-/

namespace A375928.P324837054105752991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A047994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P324837054105752991

/-! ## A375928.P8082950028032522110

`record[A356068(A068794(n+1))]`
-/

namespace A375928.P8082950028032522110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A068794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P8082950028032522110

/-! ## A375928.P6594982619479641939

`record[A000961(n+1)-A254667(n)]`
-/

namespace A375928.P6594982619479641939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P6594982619479641939

/-! ## A375928.P16184228544576960448

`record[A034699(n+1)-A025528(n+1)]`
-/

namespace A375928.P16184228544576960448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A025528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P16184228544576960448

/-!
# A375929: Numbers k such that A002808(k+1) = A002808(k) + 1. In other words, the k-th composite number is 1 less than the next.

The programs for A375929, there is no canonical definition to state claims against.
-/

/-! ## A375929.P589031635175308093

`A375926(n+1)-1`
-/

namespace A375929.P589031635175308093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375926 (n + 1) - 1

end

end A375929.P589031635175308093

/-! ## A375929.P6509776625831837382

`comp[p?[comp[2*n]]-(n+3)]`
-/

namespace A375929.P6509776625831837382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375929.P6509776625831837382

/-! ## A375929.P7450840909057839213

`∑[A373403(n+1)]`
-/

namespace A375929.P7450840909057839213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375929.P7450840909057839213

/-! ## A375929.P9848914961222642954

`comp[A065890(n+1)]`
-/

namespace A375929.P9848914961222642954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375929.P9848914961222642954

/-! ## A375929.P12586644523106038083

`comp[A162177(n+1)]`
-/

namespace A375929.P12586644523106038083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375929.P12586644523106038083

/-! ## A375929.P9729549826851386321

`eq[1, A065310(n+1)]`
-/

namespace A375929.P9729549826851386321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375929.P9729549826851386321

/-! ## A375929.P15899952529517761203

`eq[1, A054546(n+2)]`
-/

namespace A375929.P15899952529517761203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375929.P15899952529517761203

/-!
# A375930: Numbers k such that A005117(k+1) - A005117(k) > 1. In other words, the k-th squarefree number is more than 1 less than the next.

The programs for A375930, the canonical program `A375930.P7525023561221465794` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375930 has offset 1).

The definition of A375930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375930.P7525023561221465794

`∑[A120992(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A375930

/-- `∑[A120992(n+1)]` -/
def P7525023561221465794.Spec : Prop :=
  ∀ n, P7525023561221465794.a n = A375930 (n + 1)

theorem P7525023561221465794.correct : P7525023561221465794.Spec := by
  intro n
  simp only [A375930, Nat.add_sub_cancel]

end A375930

/-! ## A375930.P6229842817952172574

`A013928(A053806(n+1))`
-/

namespace A375930.P6229842817952172574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A053806 (n + 1)).toNat

end

end A375930.P6229842817952172574

namespace A375930

/-- `A013928(A053806(n+1))` -/
def P6229842817952172574.Spec : Prop :=
  ∀ n, P6229842817952172574.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P85812950449695553

`A013928(A376164(n+1))`
-/

namespace A375930.P85812950449695553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A376164 (n + 1)).toNat

end

end A375930.P85812950449695553

namespace A375930

/-- `A013928(A376164(n+1))` -/
def P85812950449695553.Spec : Prop :=
  ∀ n, P85812950449695553.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P11839113447215552003

`A013928(A072284(n+2))`
-/

namespace A375930.P11839113447215552003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A072284 (n + 2)).toNat

end

end A375930.P11839113447215552003

namespace A375930

/-- `A013928(A072284(n+2))` -/
def P11839113447215552003.Spec : Prop :=
  ∀ n, P11839113447215552003.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P15635054697434325103

`A013928(A162902(2*(n+1)))`
-/

namespace A375930.P15635054697434325103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A162902 (2 * (n + 1))).toNat

end

end A375930.P15635054697434325103

namespace A375930

/-- `A013928(A162902(2*(n+1)))` -/
def P15635054697434325103.Spec : Prop :=
  ∀ n, P15635054697434325103.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P15250931154907535761

`lt[1, A076259(n+1)]+1`
-/

namespace A375930.P15250931154907535761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375930.P15250931154907535761

namespace A375930

/-- `lt[1, A076259(n+1)]+1` -/
def P15250931154907535761.Spec : Prop :=
  ∀ n, (P15250931154907535761.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P14696282730350652601

`A100112(A373415(n+1))`
-/

namespace A375930.P14696282730350652601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A373415 (n + 1)).toNat

end

end A375930.P14696282730350652601

namespace A375930

/-- `A100112(A373415(n+1))` -/
def P14696282730350652601.Spec : Prop :=
  ∀ n, P14696282730350652601.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P11789253573527057730

`A013928(A373415(n+1)+1)`
-/

namespace A375930.P11789253573527057730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A373415 (n + 1) + 1).toNat

end

end A375930.P11789253573527057730

namespace A375930

/-- `A013928(A373415(n+1)+1)` -/
def P11789253573527057730.Spec : Prop :=
  ∀ n, P11789253573527057730.a n = A375930 (n + 1)

end A375930

/-!
# A375931: The product of the prime powers in the prime factorization of n that have an exponent that is equal to the maximum exponent in this factorization.

The programs for A375931, the canonical program `A375931.P9740495412486584682` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375931 has offset 1).

The definition of A375931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375931.P16168222377896143920

`(n+1)/A375932(n+1)`
-/

namespace A375931.P16168222377896143920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A375932 (n + 1) : ℚ)

end

end A375931.P16168222377896143920

namespace A375931

/-- `(n+1)/A375932(n+1)` -/
def P16168222377896143920.Spec : Prop :=
  ∀ n, P16168222377896143920.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P9740495412486584682

`A261969(n+1)^A051903(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A375931

/-- `A261969(n+1)^A051903(n+1)` -/
def P9740495412486584682.Spec : Prop :=
  ∀ n, P9740495412486584682.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P16315087746845718527

`A261969(n+1)^A061395(A181819(n+1))`
-/

namespace A375931.P16315087746845718527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A061395 (A181819 (n + 1)).toNat : ℤ)

end

end A375931.P16315087746845718527

namespace A375931

/-- `A261969(n+1)^A061395(A181819(n+1))` -/
def P16315087746845718527.Spec : Prop :=
  ∀ n, P16315087746845718527.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P2165238223003471772

`A261969(n+1)^(A070941(A297404(n+1))-1)`
-/

namespace A375931.P2165238223003471772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A070941 (A297404 (n + 1)).toNat - 1 : ℤ)

end

end A375931.P2165238223003471772

namespace A375931

/-- `A261969(n+1)^(A070941(A297404(n+1))-1)` -/
def P2165238223003471772.Spec : Prop :=
  ∀ n, P2165238223003471772.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P826224907937677593

`gcd(n+1, A351365(A085731(n+1)))`
-/

namespace A375931.P826224907937677593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351365 (A085731 (n + 1)).toNat)

end

end A375931.P826224907937677593

namespace A375931

/-- `gcd(n+1, A351365(A085731(n+1)))` -/
def P826224907937677593.Spec : Prop :=
  ∀ n, (P826224907937677593.a n : ℤ) = A375931 (n + 1)

end A375931

/-!
# A375932: The largest unitary k-free divisor of n where k = A051903(n) is the maximum exponent in the prime factorization of n.

The programs for A375932, the canonical program `A375932.P15622445158983307868` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375932 has offset 1).

The definition of A375932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375932.P15622445158983307868

`(n+1)/A375931(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375932

/-- `(n+1)/A375931(n+1)` -/
def P15622445158983307868.Spec : Prop :=
  ∀ n, P15622445158983307868.a n = (A375932 (n + 1) : ℚ)

end A375932

/-! ## A375932.P5208457536229154879

`gcd(n+1, A000578(A066636(n+1)))`
-/

namespace A375932.P5208457536229154879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000578 (A066636 (n + 1)).toNat)

end

end A375932.P5208457536229154879

namespace A375932

/-- `gcd(n+1, A000578(A066636(n+1)))` -/
def P5208457536229154879.Spec : Prop :=
  ∀ n, (P5208457536229154879.a n : ℤ) = A375932 (n + 1)

end A375932

/-! ## A375932.P14044519913162432847

`gcd(∑[2*n], A066636((n+1)²/∏{p}[n+1, #]))`
-/

namespace A375932.P14044519913162432847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A066636 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat)

end

end A375932.P14044519913162432847

namespace A375932

/-- `gcd(∑[2*n], A066636((n+1)²/∏{p}[n+1, #]))` -/
def P14044519913162432847.Spec : Prop :=
  ∀ n, (P14044519913162432847.a n : ℤ) = A375932 (n + 1)

end A375932

/-! ## A375932.P9268038406517843270

`A066636(A285769(n+1)/A304328(n+1))`
-/

namespace A375932.P9268038406517843270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (SequenceMachineLib.roundAway ((A285769 (n + 1) : ℚ) / (A304328 (n + 1) : ℚ))).toNat

end

end A375932.P9268038406517843270

namespace A375932

/-- `A066636(A285769(n+1)/A304328(n+1))` -/
def P9268038406517843270.Spec : Prop :=
  ∀ n, P9268038406517843270.a n = A375932 (n + 1)

end A375932

/-! ## A375932.P1962802519000781734

`A006530(A066636(n+1)%A184399(n+1))`
-/

namespace A375932.P1962802519000781734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A066636 (n + 1)) (A184399 (n + 1))).toNat

end

end A375932.P1962802519000781734

namespace A375932

/-- `A006530(A066636(n+1)%A184399(n+1))` -/
def P1962802519000781734.Spec : Prop :=
  ∀ n, P1962802519000781734.a n = A375932 (n + 1)

end A375932

/-! ## A375932.P12015392810926758029

`gcd(A066636(n+1), A106741(A166247(n+1)))`
-/

namespace A375932.P12015392810926758029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066636 (n + 1)) (A106741 (A166247 (n + 1)).toNat)

end

end A375932.P12015392810926758029

namespace A375932

/-- `gcd(A066636(n+1), A106741(A166247(n+1)))` -/
def P12015392810926758029.Spec : Prop :=
  ∀ n, (P12015392810926758029.a n : ℤ) = A375932 (n + 1)

end A375932

/-! ## A375932.P9993828891621025104

`A006530(A066636(n+1)^3)`
-/

namespace A375932.P9993828891621025104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066636 (n + 1) ^ 3).toNat

end

end A375932.P9993828891621025104

namespace A375932

/-- `A006530(A066636(n+1)^3)` -/
def P9993828891621025104.Spec : Prop :=
  ∀ n, P9993828891621025104.a n = A375932 (n + 1)

end A375932

/-!
# A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

The programs for A375933, the canonical program `A375933.P3247189904836465685` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375933 has offset 1).

The definition of A375933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375933.P3247189904836465685

`A051903(A375932(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375933

/-- `A051903(A375932(n+1))` -/
def P3247189904836465685.Spec : Prop :=
  ∀ n, P3247189904836465685.a n = A375933 (n + 1)

theorem P3247189904836465685.correct : P3247189904836465685.Spec := by
  intro n
  simp only [A375933, Nat.add_sub_cancel]

end A375933

/-! ## A375933.P10424609916062426852

`val(A328400(n+1), 3)`
-/

namespace A375933.P10424609916062426852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (n + 1)).toNat 3

end

end A375933.P10424609916062426852

namespace A375933

/-- `val(A328400(n+1), 3)` -/
def P10424609916062426852.Spec : Prop :=
  ∀ n, (P10424609916062426852.a n : ℤ) = A375933 (n + 1)

end A375933

/-! ## A375933.P5738400307377847061

`A051903(n+1)-A067029(A238745(n+1))`
-/

namespace A375933.P5738400307377847061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P5738400307377847061

namespace A375933

/-- `A051903(n+1)-A067029(A238745(n+1))` -/
def P5738400307377847061.Spec : Prop :=
  ∀ n, P5738400307377847061.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P5709520692105439296

`A067132(n+1)-1-A067029(A238745(n+1))`
-/

namespace A375933.P5709520692105439296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - 1 - A067029 (A238745 (n + 1)).toNat

end

end A375933.P5709520692105439296

namespace A375933

/-- `A067132(n+1)-1-A067029(A238745(n+1))` -/
def P5709520692105439296.Spec : Prop :=
  ∀ n, P5709520692105439296.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P5463436318011614561

`val(A046523(n+1), 2)-A067029(A238745(n+1))`
-/

namespace A375933.P5463436318011614561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P5463436318011614561

namespace A375933

/-- `val(A046523(n+1), 2)-A067029(A238745(n+1))` -/
def P5463436318011614561.Spec : Prop :=
  ∀ n, P5463436318011614561.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P11178458752279416846

`val(A359600(n+1), 3)-A067029(A238745(n+1))`
-/

namespace A375933.P11178458752279416846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A359600 (n + 1)).toNat 3 : ℤ) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P11178458752279416846

namespace A375933

/-- `val(A359600(n+1), 3)-A067029(A238745(n+1))` -/
def P11178458752279416846.Spec : Prop :=
  ∀ n, P11178458752279416846.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P6372288814478746079

`val(A278254(n+1), 4)-A067029(A238745(n+1))`
-/

namespace A375933.P6372288814478746079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4 : ℤ) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P6372288814478746079

namespace A375933

/-- `val(A278254(n+1), 4)-A067029(A238745(n+1))` -/
def P6372288814478746079.Spec : Prop :=
  ∀ n, P6372288814478746079.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P10232850139954965059

`A392276(A375932(n+1)²)`
-/

namespace A375933.P10232850139954965059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392276 (A375932 (n + 1) ^ 2).toNat

end

end A375933.P10232850139954965059

namespace A375933

/-- `A392276(A375932(n+1)²)` -/
def P10232850139954965059.Spec : Prop :=
  ∀ n, P10232850139954965059.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P6707007646806861842

`A347440(A347440(n+1)+A034444(n+1))`
-/

namespace A375933.P6707007646806861842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A347440 (n + 1) + A034444 (n + 1)).toNat

end

end A375933.P6707007646806861842

namespace A375933

/-- `A347440(A347440(n+1)+A034444(n+1))` -/
def P6707007646806861842.Spec : Prop :=
  ∀ n, P6707007646806861842.a n = A375933 (n + 1)

end A375933

/-!
# A375934: 

The programs for A375934, there is no canonical definition to state claims against.
-/

/-! ## A375934.P9875740353671820697

`filter[A375142(n+1), A389905(#)]`
-/

namespace A375934.P9875740353671820697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A375934.P9875740353671820697

/-! ## A375934.P14092612869316458666

`∩[A303946(n+1), A375142(n+1)]`
-/

namespace A375934.P14092612869316458666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P14092612869316458666

/-! ## A375934.P15585878043949720235

`∩[A059404(n+1), A375142(n+1)]`
-/

namespace A375934.P15585878043949720235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P15585878043949720235

/-! ## A375934.P13655469659169212218

`∩[A106543(n+1), A375142(n+1)]`
-/

namespace A375934.P13655469659169212218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P13655469659169212218

/-! ## A375934.P16099068059366139463

`∩[A052485(n+1), A375142(n+1)]`
-/

namespace A375934.P16099068059366139463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P16099068059366139463

/-! ## A375934.P9916321481322950386

`∩[A007916(n+1), A375142(n+1)]`
-/

namespace A375934.P9916321481322950386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P9916321481322950386

/-! ## A375934.P49385816450588255

`filter[A375142(n+1), A132350(#)]`
-/

namespace A375934.P49385816450588255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A375934.P49385816450588255

/-!
# A375936: Prime numbers p such that there exists a base b < 10 in which p is written as a number that is divisible by p when read as a decimal number.

The programs for A375936, there is no canonical definition to state claims against.
-/

/-! ## A375936.P349765988181019872

`A178991(A268349(n))`
-/

namespace A375936.P349765988181019872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178991 (A268349 n).toNat

end

end A375936.P349765988181019872

/-!
# A375937: Odd numbers which are the largest odd number in their Collatz trajectory.

The programs for A375937, there is no canonical definition to state claims against.
-/

/-! ## A375937.P16637932488655590251

`record[A082983(n)]`
-/

namespace A375937.P16637932488655590251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375937.P16637932488655590251

/-! ## A375937.P10453303029848481958

`eq[n, A075684(A000265(n+1))]`
-/

namespace A375937.P10453303029848481958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375937.P10453303029848481958

/-! ## A375937.P12817770950923512118

`lt[A025586(lcm(2, 3*n+1)/2), lcm(4, 3*n+2)/4]`
-/

namespace A375937.P12817770950923512118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.roundAway ((Nat.lcm 2 (3 * n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (3 * n + 2) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A375937.P12817770950923512118

/-! ## A375937.P15827367890572338197

`A096605(A176869(n+1))`
-/

namespace A375937.P15827367890572338197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (A176869 (n + 1)).toNat

end

end A375937.P15827367890572338197

/-! ## A375937.P9047928027594274294

`lt[A025586(lcm(2, 3*n+1)/2), A165988(n)]`
-/

namespace A375937.P9047928027594274294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.roundAway ((Nat.lcm 2 (3 * n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375937.P9047928027594274294

/-! ## A375937.P2486766183114669929

`record[A004273(2*n+3)-A025586(3*n+4)]`
-/

namespace A375937.P2486766183114669929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n + 3) - A025586 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375937.P2486766183114669929

/-! ## A375937.P6478042807118567597

`eq[n, A075684(A051724(3*(n+1)))]`
-/

namespace A375937.P6478042807118567597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (A051724 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375937.P6478042807118567597

/-! ## A375937.P4204725272765267054

`record[gcd(A025586(n+1), A087232(n+1))]`
-/

namespace A375937.P4204725272765267054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025586 (n + 1)) (A087232 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375937.P4204725272765267054

/-!
# A375939: Number of partitions of [n] such that the element sum of each block is one more than a multiple of four.

The programs for A375939, there is no canonical definition to state claims against.
-/

/-! ## A375939.P6280354521401984718

`A375924(A055999(n+2)+1)`
-/

namespace A375939.P6280354521401984718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A055999 (n + 2) + 1).toNat

end

end A375939.P6280354521401984718

/-! ## A375939.P1785629928815222056

`A375924(A034856(n+4)-3)`
-/

namespace A375939.P1785629928815222056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A034856 (n + 4) - 3).toNat

end

end A375939.P1785629928815222056

/-! ## A375939.P13843529501770019285

`A375924(A000217(n+4)+n)`
-/

namespace A375939.P13843529501770019285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A375939.P13843529501770019285

/-! ## A375939.P8596805038733338571

`A375924(Δ[Δ[A022815(n+1)]])`
-/

namespace A375939.P8596805038733338571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (f1 (n + 1) - f1 n).toNat

end

end A375939.P8596805038733338571

/-!
# A375940: Number of partitions of [n] such that the element sum of each block is one more than a multiple of five.

The programs for A375940, there is no canonical definition to state claims against.
-/

/-! ## A375940.P3784728831359742705

`A375924(A056119(n)+15)`
-/

namespace A375940.P3784728831359742705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A056119 n + 15).toNat

end

end A375940.P3784728831359742705

/-! ## A375940.P10778631526262536045

`A375924(A052905(n+3)-1)`
-/

namespace A375940.P10778631526262536045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A052905 (n + 3) - 1).toNat

end

end A375940.P10778631526262536045

/-! ## A375940.P11175754277684048751

`A375924(A087156(2*(n+2))+A000124(n+4))`
-/

namespace A375940.P11175754277684048751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A087156 (2 * (n + 2)) + A000124 (n + 4)).toNat

end

end A375940.P11175754277684048751

/-!
# A375941: Number of partitions of [n] such that the element sum of each block is one more than a multiple of six.

The programs for A375941, there is no canonical definition to state claims against.
-/

/-! ## A375941.P10499910659100782362

`A375924(eq[6, A193592(n)]-1)`
-/

namespace A375941.P10499910659100782362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A375941.P10499910659100782362

/-! ## A375941.P11603280670164743616

`A375924(A112355(n+4)+n)`
-/

namespace A375941.P11603280670164743616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A112355 (n + 4) + (n : ℤ)).toNat

end

end A375941.P11603280670164743616

/-! ## A375941.P17274500529874379082

`A193592(A000108(n))-A373387(n)`
-/

namespace A375941.P17274500529874379082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A000108 n).toNat - A373387 n

end

end A375941.P17274500529874379082

/-! ## A375941.P1558193685683969821

`A025581(A144200(n+3)+A000108(n))`
-/

namespace A375941.P1558193685683969821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A144200 (n + 3) + A000108 n).toNat

end

end A375941.P1558193685683969821

/-! ## A375941.P4656459056645388068

`A025581(A124762(2*n)+A000108(n))`
-/

namespace A375941.P4656459056645388068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A124762 (2 * n) + A000108 n).toNat

end

end A375941.P4656459056645388068

/-!
# A375942: Number of partitions of [n] such that the element sum of each block is one more than a multiple of seven.

The programs for A375942, there is no canonical definition to state claims against.
-/

/-! ## A375942.P18415363947953755147

`A375924(A221921(2*n+7)+A000217(n))`
-/

namespace A375942.P18415363947953755147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A221921 (2 * n + 7) + A000217 n).toNat

end

end A375942.P18415363947953755147

/-! ## A375942.P3619702712958858338

`and(A143763(A102276(n)), A208453(n))`
-/

namespace A375942.P3619702712958858338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143763 (A102276 n).toNat) (A208453 n)

end

end A375942.P3619702712958858338

/-! ## A375942.P14389152900254704458

`A339059(A053637(n+1)-A339059(n))`
-/

namespace A375942.P14389152900254704458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 (A053637 (n + 1) - A339059 n).toNat

end

end A375942.P14389152900254704458

/-! ## A375942.P5571368792534020249

`A179957(n)^A050326(A178868(n+5))`
-/

namespace A375942.P5571368792534020249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179957 n : ℚ) ^ (A050326 (A178868 (n + 5)).toNat : ℤ)

end

end A375942.P5571368792534020249

/-!
# A375943: Number of partitions of [n] such that the element sum of each block is one more than a multiple of eight.

The programs for A375943, there is no canonical definition to state claims against.
-/

/-! ## A375943.P11203076140502981391

`A375924(A000217(n+9)-9)`
-/

namespace A375943.P11203076140502981391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000217 (n + 9) - 9).toNat

end

end A375943.P11203076140502981391

/-!
# A375945: Expansion of e.g.f. 1 / (1 + 2 * log(1 - x))^(3/2).

The programs for A375945, there is no canonical definition to state claims against.
-/

/-! ## A375945.P7026460333151632748

`A059561(A135746(n+1))`
-/

namespace A375945.P7026460333151632748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A135746 (n + 1)).toNat

end

end A375945.P7026460333151632748

/-!
# A375948: Expansion of e.g.f. 1 / (3 - 2 * exp(x))^(3/2).

The programs for A375948, there is no canonical definition to state claims against.
-/

/-! ## A375948.P11546787121965462430

`A018252(A003580(n))-n`
-/

namespace A375948.P11546787121965462430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A003580 n).toNat - (n : ℤ)

end

end A375948.P11546787121965462430

/-!
# A375949: Expansion of e.g.f. 1 / (4 - 3 * exp(x))^(4/3).

The programs for A375949, there is no canonical definition to state claims against.
-/

/-! ## A375949.P8644556392972638703

`A008574(A081624(n)-A341027(n))`
-/

namespace A375949.P8644556392972638703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A081624 n - A341027 (n + 220)).toNat

end

end A375949.P8644556392972638703

/-!
# A375953: Expansion of e.g.f. 1 / (1 + 2 * log(1 - x))^(5/2).

The programs for A375953, there is no canonical definition to state claims against.
-/

/-! ## A375953.P9391115777833322562

`A003144(A141006(n))-A157051(n)`
-/

namespace A375953.P9391115777833322562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A141006 n).toNat - A157051 n

end

end A375953.P9391115777833322562

/-!
# A375955: T(n,k) for n >= 1, k <= n is the maximum value in the intersection of the Collatz trajectories of n and k, where a trajectory ends when it reaches 1. T(n,k) is a triangle read by rows.

The programs for A375955, there is no canonical definition to state claims against.
-/

/-! ## A375955.P7337858224924947541

`A183760(2*A119265(n+1))`
-/

namespace A375955.P7337858224924947541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183760 (2 * A119265 (n + 1)).toNat

end

end A375955.P7337858224924947541

/-! ## A375955.P5903455754630967711

`∏{e}[A049682(A116925(n)), #]`
-/

namespace A375955.P5903455754630967711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049682 (A116925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375955.P5903455754630967711

/-! ## A375955.P2805533607559180585

`gcd(A138814(n+1), A143890(A143844(n)))`
-/

namespace A375955.P2805533607559180585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138814 (n + 1)) (A143890 (A143844 n).toNat)

end

end A375955.P2805533607559180585

/-! ## A375955.P15057441755639895962

`A103438(n)+A062760(A284760(n+1)+1)`
-/

namespace A375955.P15057441755639895962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 n + A062760 (A284760 (n + 1) + 1).toNat

end

end A375955.P15057441755639895962

/-!
# A375957: Number of partitions of [n] such that the element sum of each block is one more than a multiple of ten.

The programs for A375957, there is no canonical definition to state claims against.
-/

/-! ## A375957.P4488821507632338865

`A375924(A000217(n+11)-11)`
-/

namespace A375957.P4488821507632338865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000217 (n + 11) - 11).toNat

end

end A375957.P4488821507632338865

/-! ## A375957.P4454308803783353997

`A375924(A000096(n+9)+n+1)`
-/

namespace A375957.P4454308803783353997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A375957.P4454308803783353997

/-! ## A375957.P13463975991817665503

`A375924(A052905(n+7)+n+5)`
-/

namespace A375957.P13463975991817665503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A052905 (n + 7) + (n + 5 : ℤ)).toNat

end

end A375957.P13463975991817665503

/-!
# A375959: Partial products of A006257.

The programs for A375959, there is no canonical definition to state claims against.
-/

/-! ## A375959.P3156080266287554352

`∏[2*a(floor(n/2))-(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A375959.P3156080266287554352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P3156080266287554352

/-! ## A375959.P11792634271496708431

`∏[or(1, A006257(n))]`
-/

namespace A375959.P11792634271496708431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006257 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P11792634271496708431

/-! ## A375959.P7119344617673248798

`a(n-1)*A053645(2*n+1)` with `a(0)=1`
-/

namespace A375959.P7119344617673248798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A053645 (2 * n + 1)

end

end A375959.P7119344617673248798

/-! ## A375959.P964318550401029576

`∏[A028310(A006257(n))]`
-/

namespace A375959.P964318550401029576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P964318550401029576

/-! ## A375959.P14589171491440606103

`∏[A004277(n)-A003817(n)]`
-/

namespace A375959.P14589171491440606103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P14589171491440606103

/-! ## A375959.P2143804081535295605

`∏[A062383(n)-A261693(n)]`
-/

namespace A375959.P2143804081535295605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - A261693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P2143804081535295605

/-! ## A375959.P10798638272159918320

`∏[A028310(A053645(2*n+1))]`
-/

namespace A375959.P10798638272159918320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053645 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P10798638272159918320

/-!
# A375960: Numbers whose product of proper divisors is a cube.

The programs for A375960, the canonical program `A375960.P2597128475225749997` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375960 has offset 1).

The definition of A375960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375960.P2597128475225749997

`∪[A211338(n+1), ∑[A003215(n)]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A375960

/-- `∪[A211338(n+1), ∑[A003215(n)]]` -/
def P2597128475225749997.Spec : Prop :=
  ∀ n, (P2597128475225749997.a n : ℤ) = A375960 (n + 1)

theorem P2597128475225749997.correct : P2597128475225749997.Spec := by
  intro n
  simp only [A375960, Nat.add_sub_cancel]

end A375960

/-! ## A375960.P12434256052564896173

`∪[A000040(n+1), A229972(n+1)]`
-/

namespace A375960.P12434256052564896173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P12434256052564896173

namespace A375960

/-- `∪[A000040(n+1), A229972(n+1)]` -/
def P12434256052564896173.Spec : Prop :=
  ∀ n, (P12434256052564896173.a n : ℤ) = A375960 (n + 1)

end A375960

/-! ## A375960.P1244288800629103838

`∪[A008578(n+1), A229972(n+1)]`
-/

namespace A375960.P1244288800629103838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P1244288800629103838

namespace A375960

/-- `∪[A008578(n+1), A229972(n+1)]` -/
def P1244288800629103838.Spec : Prop :=
  ∀ n, (P1244288800629103838.a n : ℤ) = A375960 (n + 1)

end A375960

/-! ## A375960.P17057325261624596250

`∪[A030059(n+1), A229972(n+1)]`
-/

namespace A375960.P17057325261624596250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P17057325261624596250

namespace A375960

/-- `∪[A030059(n+1), A229972(n+1)]` -/
def P17057325261624596250.Spec : Prop :=
  ∀ n, (P17057325261624596250.a n : ℤ) = A375960 (n + 1)

end A375960

/-!
# A375961: 2-adic valuation of 6*n + 2.

The programs for A375961, the canonical program `A375961.P871565758720273220` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375961 has offset 0).

The definition of A375961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375961.P11016166873367121581

`val(6*n+2, 2)`
-/

namespace A375961.P11016166873367121581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (6 * n + 2) 2

end

end A375961.P11016166873367121581

namespace A375961

/-- `val(6*n+2, 2)` -/
def P11016166873367121581.Spec : Prop :=
  ∀ n, (P11016166873367121581.a n : ℤ) = A375961 n

end A375961

/-! ## A375961.P871565758720273220

`A371093(n)+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A375961

/-- `A371093(n)+1` -/
def P871565758720273220.Spec : Prop :=
  ∀ n, P871565758720273220.a n = A375961 n

theorem P871565758720273220.correct : P871565758720273220.Spec := by
  intro n
  simp only [A375961]

end A375961

/-! ## A375961.P2809971119406027399

`A087229(n)-1`
-/

namespace A375961.P2809971119406027399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 n - 1

end

end A375961.P2809971119406027399

namespace A375961

/-- `A087229(n)-1` -/
def P2809971119406027399.Spec : Prop :=
  ∀ n, P2809971119406027399.a n = A375961 n

end A375961

/-! ## A375961.P5112462208812669920

`A007814(6*n+2)`
-/

namespace A375961.P5112462208812669920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (6 * n + 2)

end

end A375961.P5112462208812669920

namespace A375961

/-- `A007814(6*n+2)` -/
def P5112462208812669920.Spec : Prop :=
  ∀ n, P5112462208812669920.a n = A375961 n

end A375961

/-! ## A375961.P50965653458494483

`val(A016777(n), 2)+1`
-/

namespace A375961.P50965653458494483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016777 n).toNat 2 + 1

end

end A375961.P50965653458494483

namespace A375961

/-- `val(A016777(n), 2)+1` -/
def P50965653458494483.Spec : Prop :=
  ∀ n, (P50965653458494483.a n : ℤ) = A375961 n

end A375961

/-! ## A375961.P945468001630901408

`val(A017197(n), 2)+1`
-/

namespace A375961.P945468001630901408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A017197 n).toNat 2 + 1

end

end A375961.P945468001630901408

namespace A375961

/-- `val(A017197(n), 2)+1` -/
def P945468001630901408.Spec : Prop :=
  ∀ n, (P945468001630901408.a n : ℤ) = A375961 n

end A375961

/-! ## A375961.P11579305752096098547

`val(A139607(n), 2)+1`
-/

namespace A375961.P11579305752096098547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139607 n).toNat 2 + 1

end

end A375961.P11579305752096098547

namespace A375961

/-- `val(A139607(n), 2)+1` -/
def P11579305752096098547.Spec : Prop :=
  ∀ n, (P11579305752096098547.a n : ℤ) = A375961 n

end A375961

/-! ## A375961.P3611876266809591064

`val(A047230(n+1), 2)+1`
-/

namespace A375961.P3611876266809591064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A047230 (n + 1)).toNat 2 + 1

end

end A375961.P3611876266809591064

namespace A375961

/-- `val(A047230(n+1), 2)+1` -/
def P3611876266809591064.Spec : Prop :=
  ∀ n, (P3611876266809591064.a n : ℤ) = A375961 n

end A375961

/-! ## A375961.P7581576997910983358

`A330393(2*A371093(n))`
-/

namespace A375961.P7581576997910983358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 (2 * A371093 n).toNat

end

end A375961.P7581576997910983358

namespace A375961

/-- `A330393(2*A371093(n))` -/
def P7581576997910983358.Spec : Prop :=
  ∀ n, P7581576997910983358.a n = A375961 n

end A375961

/-! ## A375961.P2376256938357850465

`A371092(2*A371093(n))`
-/

namespace A375961.P2376256938357850465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (2 * A371093 n).toNat

end

end A375961.P2376256938357850465

namespace A375961

/-- `A371092(2*A371093(n))` -/
def P2376256938357850465.Spec : Prop :=
  ∀ n, P2376256938357850465.a n = A375961 n

end A375961

/-! ## A375961.P12016466411247877520

`A322584(3*n+1)`
-/

namespace A375961.P12016466411247877520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (3 * n + 1)

end

end A375961.P12016466411247877520

namespace A375961

/-- `A322584(3*n+1)` -/
def P12016466411247877520.Spec : Prop :=
  ∀ n, P12016466411247877520.a n = A375961 n

end A375961

/-! ## A375961.P14637355018659209378

`A072078(3*n+1)`
-/

namespace A375961.P14637355018659209378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (3 * n + 1)

end

end A375961.P14637355018659209378

namespace A375961

/-- `A072078(3*n+1)` -/
def P14637355018659209378.Spec : Prop :=
  ∀ n, P14637355018659209378.a n = A375961 n

end A375961

/-! ## A375961.P6237490343163625931

`A085058(3*n)-1`
-/

namespace A375961.P6237490343163625931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (3 * n) - 1

end

end A375961.P6237490343163625931

namespace A375961

/-- `A085058(3*n)-1` -/
def P6237490343163625931.Spec : Prop :=
  ∀ n, P6237490343163625931.a n = A375961 n

end A375961

/-! ## A375961.P1103524766744420140

`A087230(2*n)-1`
-/

namespace A375961.P1103524766744420140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (2 * n) - 1

end

end A375961.P1103524766744420140

namespace A375961

/-- `A087230(2*n)-1` -/
def P1103524766744420140.Spec : Prop :=
  ∀ n, P1103524766744420140.a n = A375961 n

end A375961

/-! ## A375961.P12363236952847655654

`A268727(A396059(n))`
-/

namespace A375961.P12363236952847655654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (A396059 n).toNat

end

end A375961.P12363236952847655654

namespace A375961

/-- `A268727(A396059(n))` -/
def P12363236952847655654.Spec : Prop :=
  ∀ n, P12363236952847655654.a n = A375961 n

end A375961

/-! ## A375961.P1118802524529626245

`A001511(A065621(n+1)+2)`
-/

namespace A375961.P1118802524529626245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A065621 (n + 1) + 2).toNat

end

end A375961.P1118802524529626245

namespace A375961

/-- `A001511(A065621(n+1)+2)` -/
def P1118802524529626245.Spec : Prop :=
  ∀ n, P1118802524529626245.a n = A375961 n

end A375961

/-! ## A375961.P15103654292581420196

`A001511(A003188(2*n)+1)`
-/

namespace A375961.P15103654292581420196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003188 (2 * n) + 1).toNat

end

end A375961.P15103654292581420196

namespace A375961

/-- `A001511(A003188(2*n)+1)` -/
def P15103654292581420196.Spec : Prop :=
  ∀ n, P15103654292581420196.a n = A375961 n

end A375961

/-! ## A375961.P9780606011621136409

`A001511(3*n+1)`
-/

namespace A375961.P9780606011621136409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (3 * n + 1)

end

end A375961.P9780606011621136409

namespace A375961

/-- `A001511(3*n+1)` -/
def P9780606011621136409.Spec : Prop :=
  ∀ n, P9780606011621136409.a n = A375961 n

end A375961

/-! ## A375961.P11373887470998067304

`A089309(A271114(n))`
-/

namespace A375961.P11373887470998067304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A271114 n).toNat

end

end A375961.P11373887470998067304

namespace A375961

/-- `A089309(A271114(n))` -/
def P11373887470998067304.Spec : Prop :=
  ∀ n, P11373887470998067304.a n = A375961 n

end A375961

/-! ## A375961.P16661860102101046259

`A375782(A016813(n))`
-/

namespace A375961.P16661860102101046259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375782 (A016813 n).toNat

end

end A375961.P16661860102101046259

namespace A375961

/-- `A375782(A016813(n))` -/
def P16661860102101046259.Spec : Prop :=
  ∀ n, P16661860102101046259.a n = A375961 n

end A375961

/-!
# A375962: Numbers whose product of proper divisors is not a cube.

The programs for A375962, the canonical program `A375962.P14051908958568052838` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375962 has offset 1).

The definition of A375962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375962.P14051908958568052838

`∩[A018252(n+1), comp[A375960(n+1)]]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375962

/-- `∩[A018252(n+1), comp[A375960(n+1)]]` -/
def P14051908958568052838.Spec : Prop :=
  ∀ n, (P14051908958568052838.a n : ℤ) = A375962 (n + 1)

theorem P14051908958568052838.correct : P14051908958568052838.Spec := by
  intro n
  simp only [A375962, Nat.add_sub_cancel]

end A375962

/-! ## A375962.P13427689819907582789

`∩[A018252(n+1), comp[A229972(n+1)]]`
-/

namespace A375962.P13427689819907582789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A375962.P13427689819907582789

namespace A375962

/-- `∩[A018252(n+1), comp[A229972(n+1)]]` -/
def P13427689819907582789.Spec : Prop :=
  ∀ n, (P13427689819907582789.a n : ℤ) = A375962 (n + 1)

end A375962

/-!
# A375966: Powers of 3 alternating with powers of 4.

The programs for A375966, the canonical program `A375966.P5315892783615141827` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375966 has offset 0).

The definition of A375966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375966.P5315892783615141827

`7*a(n-2)-12*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375966

/-- `7*a(n-2)-12*a(n-4)` -/
def P5315892783615141827.Spec : Prop :=
  ∀ n, P5315892783615141827.a n = A375966 n

theorem P5315892783615141827.correct : P5315892783615141827.Spec := by
  intro n
  simp only [A375966]

end A375966

/-! ## A375966.P13684544247856365933

`(4*3^(n/2)*A059841(n)-(-2)^n+2^n)/4`
-/

namespace A375966.P13684544247856365933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * (3 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (A059841 n : ℝ) - ((-2) ^ n : ℝ) + (2 ^ n : ℝ)) / 4

end

end A375966.P13684544247856365933

namespace A375966

/-- `(4*3^(n/2)*A059841(n)-(-2)^n+2^n)/4` -/
def P13684544247856365933.Spec : Prop :=
  ∀ n, P13684544247856365933.a n = (A375966 n : ℝ)

end A375966

/-! ## A375966.P11004540072520058062

`(n%2+3)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A375966.P11004540072520058062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n % 2 + 3) * a (n - 2)

end

end A375966.P11004540072520058062

namespace A375966

/-- `(n%2+3)*a(n-2)` -/
def P11004540072520058062.Spec : Prop :=
  ∀ n, (P11004540072520058062.a n : ℤ) = A375966 n

end A375966

/-! ## A375966.P14157695522973710808

`(gcd(2, n+1)+2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A375966.P14157695522973710808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.gcd 2 (n + 1) + 2) * a (n - 2)

end

end A375966.P14157695522973710808

namespace A375966

/-- `(gcd(2, n+1)+2)*a(n-2)` -/
def P14157695522973710808.Spec : Prop :=
  ∀ n, (P14157695522973710808.a n : ℤ) = A375966 n

end A375966

/-! ## A375966.P11935096602046587615

`(3-(2-n)%2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A375966.P11935096602046587615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 - Int.tmod (2 - (n : ℤ)) 2) * a (n - 2)

end

end A375966.P11935096602046587615

namespace A375966

/-- `(3-(2-n)%2)*a(n-2)` -/
def P11935096602046587615.Spec : Prop :=
  ∀ n, P11935096602046587615.a n = A375966 n

end A375966

/-! ## A375966.P18402899357526631738

`A118263(A001651(n+1))`
-/

namespace A375966.P18402899357526631738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A001651 (n + 1)).toNat

end

end A375966.P18402899357526631738

namespace A375966

/-- `A118263(A001651(n+1))` -/
def P18402899357526631738.Spec : Prop :=
  ∀ n, P18402899357526631738.a n = A375966 n

end A375966

/-! ## A375966.P15541125929754982627

`A118263(A032766(n)+1)`
-/

namespace A375966.P15541125929754982627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A032766 n + 1).toNat

end

end A375966.P15541125929754982627

namespace A375966

/-- `A118263(A032766(n)+1)` -/
def P15541125929754982627.Spec : Prop :=
  ∀ n, P15541125929754982627.a n = A375966 n

end A375966

/-! ## A375966.P8635113295678685441

`A118263(A097482(n+1))`
-/

namespace A375966.P8635113295678685441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A097482 (n + 1)).toNat

end

end A375966.P8635113295678685441

namespace A375966

/-- `A118263(A097482(n+1))` -/
def P8635113295678685441.Spec : Prop :=
  ∀ n, P8635113295678685441.a n = A375966 n

end A375966

/-! ## A375966.P5473385136884777653

`A118263(A114119(n)-1)`
-/

namespace A375966.P5473385136884777653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A114119 n - 1).toNat

end

end A375966.P5473385136884777653

namespace A375966

/-- `A118263(A114119(n)-1)` -/
def P5473385136884777653.Spec : Prop :=
  ∀ n, P5473385136884777653.a n = A375966 n

end A375966

/-! ## A375966.P3723415917155055537

`gcd(A131575(n)², A254006(n))`
-/

namespace A375966.P3723415917155055537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131575 n ^ 2) (A254006 n)

end

end A375966.P3723415917155055537

namespace A375966

/-- `gcd(A131575(n)², A254006(n))` -/
def P3723415917155055537.Spec : Prop :=
  ∀ n, (P3723415917155055537.a n : ℤ) = A375966 n

end A375966

/-! ## A375966.P6968577967433739155

`A118263(A007494(n+1)-1)`
-/

namespace A375966.P6968577967433739155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A007494 (n + 1) - 1).toNat

end

end A375966.P6968577967433739155

namespace A375966

/-- `A118263(A007494(n+1)-1)` -/
def P6968577967433739155.Spec : Prop :=
  ∀ n, P6968577967433739155.a n = A375966 n

end A375966

/-! ## A375966.P12131673481080444419

`A118263(A294732(n+3)-1)`
-/

namespace A375966.P12131673481080444419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A294732 (n + 3) - 1).toNat

end

end A375966.P12131673481080444419

namespace A375966

/-- `A118263(A294732(n+3)-1)` -/
def P12131673481080444419.Spec : Prop :=
  ∀ n, P12131673481080444419.a n = A375966 n

end A375966

/-! ## A375966.P6953499187894637655

`A258439(A227906(n))`
-/

namespace A375966.P6953499187894637655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 (A227906 n).toNat

end

end A375966.P6953499187894637655

namespace A375966

/-- `A258439(A227906(n))` -/
def P6953499187894637655.Spec : Prop :=
  ∀ n, P6953499187894637655.a n = A375966 n

end A375966

/-! ## A375966.P14264166384442837360

`A051128(A165157(n+1))`
-/

namespace A375966.P14264166384442837360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A165157 (n + 1)).toNat

end

end A375966.P14264166384442837360

namespace A375966

/-- `A051128(A165157(n+1))` -/
def P14264166384442837360.Spec : Prop :=
  ∀ n, P14264166384442837360.a n = A375966 n

end A375966

/-! ## A375966.P9020118734443250954

`gcd(A092270(n), A282022(n))`
-/

namespace A375966.P9020118734443250954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092270 n) (A282022 n)

end

end A375966.P9020118734443250954

namespace A375966

/-- `gcd(A092270(n), A282022(n))` -/
def P9020118734443250954.Spec : Prop :=
  ∀ n, (P9020118734443250954.a n : ℤ) = A375966 n

end A375966

/-! ## A375966.P12880590531456400843

`a(n-2)²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A375966.P12880590531456400843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  a (n - 2) ^ 2 / a (n - 4)

end

end A375966.P12880590531456400843

namespace A375966

/-- `a(n-2)²/a(n-4)` -/
def P12880590531456400843.Spec : Prop :=
  ∀ n, P12880590531456400843.a n = (A375966 n : ℚ)

end A375966

/-!
# A375967: a(n) is the least number > n with the same digit average as n.

The programs for A375967, there is no canonical definition to state claims against.
-/

/-! ## A375967.P779300018115846774

`A161561(A100800(n+1))`
-/

namespace A375967.P779300018115846774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A100800 (n + 1)).toNat

end

end A375967.P779300018115846774

/-! ## A375967.P17177401880867946601

`A161561(A110725(n+1))`
-/

namespace A375967.P17177401880867946601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A110725 (n + 1)).toNat

end

end A375967.P17177401880867946601

/-! ## A375967.P17841658886582468857

`A161561(A169919(n+1))`
-/

namespace A375967.P17841658886582468857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A169919 (n + 1)).toNat

end

end A375967.P17841658886582468857

/-! ## A375967.P11816773923470722507

`A161561(A169921(n+1))`
-/

namespace A375967.P11816773923470722507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A169921 (n + 1)).toNat

end

end A375967.P11816773923470722507

/-! ## A375967.P10689058643860900354

`A161561(A292512(n+1))`
-/

namespace A375967.P10689058643860900354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A292512 (n + 1)).toNat

end

end A375967.P10689058643860900354

/-!
# A375969: Lexicographically earliest sequence of nonnegative integers with distinct digit averages.

The programs for A375969, there is no canonical definition to state claims against.
-/

/-! ## A375969.P8271887577685926528

`record[A375968(n)]`
-/

namespace A375969.P8271887577685926528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375969.P8271887577685926528

/-! ## A375969.P8225579067052832401

`eq[A106620(n), A375968(n)]`
-/

namespace A375969.P8225579067052832401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375969.P8225579067052832401

/-! ## A375969.P1623744791475118458

`A375968(eq[n, A375968(n)])`
-/

namespace A375969.P1623744791475118458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375969.P1623744791475118458

/-! ## A375969.P4056544758492325207

`comp[A375967(n+1)]`
-/

namespace A375969.P4056544758492325207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375969.P4056544758492325207

/-! ## A375969.P16301091828157439451

`lt[A000045(n), A206268(A375968(n)+2)]`
-/

namespace A375969.P16301091828157439451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 (A375968 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375969.P16301091828157439451

/-!
# A375970: a(n) is the largest number k such that k^2 divides the square pyramidal number A000330(n).

The programs for A375970, the canonical program `A375970.P9061839122044189861` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375970 has offset 1).

The definition of A375970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375970.P9061839122044189861

`A000188(A000330(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375970

/-- `A000188(A000330(n+1))` -/
def P9061839122044189861.Spec : Prop :=
  ∀ n, P9061839122044189861.a n = A375970 (n + 1)

theorem P9061839122044189861.correct : P9061839122044189861.Spec := by
  intro n
  simp only [A375970, Nat.add_sub_cancel]

end A375970

/-! ## A375970.P17678836200657329540

`sqrt(A008833(∑[∑[2*n+1]]))`
-/

namespace A375970.P17678836200657329540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A375970.P17678836200657329540

namespace A375970

/-- `sqrt(A008833(∑[∑[2*n+1]]))` -/
def P17678836200657329540.Spec : Prop :=
  ∀ n, P17678836200657329540.a n = (A375970 (n + 1) : ℝ)

end A375970

/-! ## A375970.P17343342352607861057

`A000188(∑[(n+1)²])`
-/

namespace A375970.P17343342352607861057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375970.P17343342352607861057

namespace A375970

/-- `A000188(∑[(n+1)²])` -/
def P17343342352607861057.Spec : Prop :=
  ∀ n, P17343342352607861057.a n = A375970 (n + 1)

end A375970

/-! ## A375970.P17467045435641859459

`A071773(∑[(n+1)²])`
-/

namespace A375970.P17467045435641859459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375970.P17467045435641859459

namespace A375970

/-- `A071773(∑[(n+1)²])` -/
def P17467045435641859459.Spec : Prop :=
  ∀ n, P17467045435641859459.a n = A375970 (n + 1)

end A375970

/-! ## A375970.P15269492736654420140

`A308993(∑[(n+1)²])`
-/

namespace A375970.P15269492736654420140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375970.P15269492736654420140

namespace A375970

/-- `A308993(∑[(n+1)²])` -/
def P15269492736654420140.Spec : Prop :=
  ∀ n, P15269492736654420140.a n = A375970 (n + 1)

end A375970

/-!
# A375971: Positions of records in A375970.

The programs for A375971, there is no canonical definition to state claims against.
-/

/-! ## A375971.P12674153508279872574

`A345915(2*a(n-1))` with `a(0)=1, a(1)=7, a(2)=12, a(3)=24`
-/

namespace A375971.P12674153508279872574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 12, 24] fun n a =>
  A345915 (2 * a (n - 1)).toNat

end

end A375971.P12674153508279872574

/-!
# A375972: a(n) = binomial(n,k(n)), where k(2) = 1, k(n) = k(n-1) + (a(n-1) mod 2).

The programs for A375972, the canonical program `A375972.P18053615468605080457` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375972 has offset 2).

The definition of A375972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375972.P18053615468605080457

`C(n+2, A078881(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375972

/-- `C(n+2, A078881(n+1))` -/
def P18053615468605080457.Spec : Prop :=
  ∀ n, (P18053615468605080457.a n : ℤ) = A375972 (n + 2)

theorem P18053615468605080457.correct : P18053615468605080457.Spec := by
  intro n
  simp only [A375972, Nat.add_sub_cancel]

end A375972

/-! ## A375972.P767799898629123612

`C(n+2, A162751(n+1))`
-/

namespace A375972.P767799898629123612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A162751 (n + 1)).toNat

end

end A375972.P767799898629123612

namespace A375972

/-- `C(n+2, A162751(n+1))` -/
def P767799898629123612.Spec : Prop :=
  ∀ n, (P767799898629123612.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P13721984734810609423

`C(n+2, A006165(n+2))`
-/

namespace A375972.P13721984734810609423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A006165 (n + 2)).toNat

end

end A375972.P13721984734810609423

namespace A375972

/-- `C(n+2, A006165(n+2))` -/
def P13721984734810609423.Spec : Prop :=
  ∀ n, (P13721984734810609423.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P11589254811627613121

`C(n+2, A060973(n+2))`
-/

namespace A375972.P11589254811627613121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A060973 (n + 2)).toNat

end

end A375972.P11589254811627613121

namespace A375972

/-- `C(n+2, A060973(n+2))` -/
def P11589254811627613121.Spec : Prop :=
  ∀ n, (P11589254811627613121.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P13871017302405754054

`C(n+2, A352228(n+3))`
-/

namespace A375972.P13871017302405754054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A352228 (n + 3)).toNat

end

end A375972.P13871017302405754054

namespace A375972

/-- `C(n+2, A352228(n+3))` -/
def P13871017302405754054.Spec : Prop :=
  ∀ n, (P13871017302405754054.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P7779802543133980650

`C(n+2, A306390(n+3))`
-/

namespace A375972.P7779802543133980650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A306390 (n + 3)).toNat

end

end A375972.P7779802543133980650

namespace A375972

/-- `C(n+2, A306390(n+3))` -/
def P7779802543133980650.Spec : Prop :=
  ∀ n, (P7779802543133980650.a n : ℤ) = A375972 (n + 2)

end A375972

/-!
# A375973: Record values in A375970.

The programs for A375973, there is no canonical definition to state claims against.
-/

/-! ## A375973.P4425799419854759099

`A375970(A375971(n+1))`
-/

namespace A375973.P4425799419854759099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375970 (A375971 (n + 1)).toNat

end

end A375973.P4425799419854759099

/-! ## A375973.P14692518316599776196

`record[A375970(n+1)]`
-/

namespace A375973.P14692518316599776196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375973.P14692518316599776196

/-!
# A375974: Primes p_1 where products m of k = 4 consecutive primes p_1..p_k are such that only p_1 < m^(1/k).

The programs for A375974, there is no canonical definition to state claims against.
-/

/-! ## A375974.P1650858082674932668

`A145300(A075422(n+1))`
-/

namespace A375974.P1650858082674932668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145300 (A075422 (n + 1)).toNat

end

end A375974.P1650858082674932668

/-!
# A375976: Sum of squares of the decimal digits of 2^n.

The programs for A375976, the canonical program `A375976.P12460029172972807041` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375976 has offset 0).

The definition of A375976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375976.P12460029172972807041

`A003132(A000079(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375976

/-- `A003132(A000079(n))` -/
def P12460029172972807041.Spec : Prop :=
  ∀ n, P12460029172972807041.a n = A375976 n

theorem P12460029172972807041.correct : P12460029172972807041.Spec := by
  intro n
  simp only [A375976]

end A375976

/-! ## A375976.P10331954751453253880

`∑{digits}[A028909(n), #²]`
-/

namespace A375976.P10331954751453253880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A375976.P10331954751453253880

namespace A375976

/-- `∑{digits}[A028909(n), #²]` -/
def P10331954751453253880.Spec : Prop :=
  ∀ n, (P10331954751453253880.a n : ℤ) = A375976 n

end A375976

/-! ## A375976.P885121794953689242

`∑{digits}[2^n, #²]`
-/

namespace A375976.P885121794953689242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A375976.P885121794953689242

namespace A375976

/-- `∑{digits}[2^n, #²]` -/
def P885121794953689242.Spec : Prop :=
  ∀ n, (P885121794953689242.a n : ℤ) = A375976 n

end A375976

/-! ## A375976.P6240161951757348166

`∑{digits}[2^n, A001105(#)]/2`
-/

namespace A375976.P6240161951757348166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2

end

end A375976.P6240161951757348166

namespace A375976

/-- `∑{digits}[2^n, A001105(#)]/2` -/
def P6240161951757348166.Spec : Prop :=
  ∀ n, P6240161951757348166.a n = (A375976 n : ℚ)

end A375976

/-! ## A375976.P8432116614625918089

`ceil(∑{digits}[A000079(n), A001105(#)]/2)`
-/

namespace A375976.P8432116614625918089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2⌉

end

end A375976.P8432116614625918089

namespace A375976

/-- `ceil(∑{digits}[A000079(n), A001105(#)]/2)` -/
def P8432116614625918089.Spec : Prop :=
  ∀ n, P8432116614625918089.a n = A375976 n

end A375976

/-!
# A375977: Number of subsets of {1,2,...,n} such that no two elements differ by 2 or 5.

The programs for A375977, there is no canonical definition to state claims against.
-/

/-! ## A375977.P684860152015142008

`A343779(A086566(n+1))`
-/

namespace A375977.P684860152015142008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A086566 (n + 1)).toNat

end

end A375977.P684860152015142008

/-! ## A375977.P13234317704179623931

`A343779(A235213(n+2))`
-/

namespace A375977.P13234317704179623931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A235213 (n + 2)).toNat

end

end A375977.P13234317704179623931

/-! ## A375977.P8338303377238774295

`∑[A367329(∑[A013610(n)])]`
-/

namespace A375977.P8338303377238774295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367329 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375977.P8338303377238774295

/-! ## A375977.P15788891844893779943

`∑[A018261(∑[A364912(n)])]`
-/

namespace A375977.P15788891844893779943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375977.P15788891844893779943

/-! ## A375977.P17538993759632220183

`A005105(n+1)-A124766(A262987(n))`
-/

namespace A375977.P17538993759632220183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005105 (n + 1) - A124766 (A262987 n).toNat

end

end A375977.P17538993759632220183

/-!
# A375978: Number of subsets of {1,2,...,n} such that no two elements differ by 3 or 5.

The programs for A375978, there is no canonical definition to state claims against.
-/

/-! ## A375978.P9655502773875699132

`A353430(2*n+3)+comp[∑[n+2]-3]`
-/

namespace A375978.P9655502773875699132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A375978.P9655502773875699132

/-! ## A375978.P11375173100231598305

`A337769(A046185(n))`
-/

namespace A375978.P11375173100231598305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A046185 n).toNat

end

end A375978.P11375173100231598305

/-! ## A375978.P10031850383004706992

`A337769(A005282(n+1))`
-/

namespace A375978.P10031850383004706992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A005282 (n + 1)).toNat

end

end A375978.P10031850383004706992

/-! ## A375978.P1286513775774125697

`A337769(A259964(n+1))`
-/

namespace A375978.P1286513775774125697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A259964 (n + 1)).toNat

end

end A375978.P1286513775774125697

/-! ## A375978.P8128206617507590984

`A337769(A384729(n+1))`
-/

namespace A375978.P8128206617507590984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A384729 (n + 1)).toNat

end

end A375978.P8128206617507590984

/-!
# A375979: Number of subsets of {1,2,...,n} such that no two elements differ by 4 or 5.

The programs for A375979, there is no canonical definition to state claims against.
-/

/-! ## A375979.P11803373254874111874

`A049445(A020899(n+1)%A096347(2*n+3))`
-/

namespace A375979.P11803373254874111874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (Int.tmod (A020899 (n + 1)) (A096347 (2 * n + 3))).toNat

end

end A375979.P11803373254874111874

/-!
# A375980: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 2, or 5.

The programs for A375980, the canonical program `A375980.P11129936878851640901` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375980 has offset 0).

The definition of A375980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375980.P11129936878851640901

`a(n-1)+a(n-3)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=9`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375980

/-- `a(n-1)+a(n-3)-a(n-5)+a(n-6)` -/
def P11129936878851640901.Spec : Prop :=
  ∀ n, P11129936878851640901.a n = A375980 n

theorem P11129936878851640901.correct : P11129936878851640901.Spec := by
  intro n
  simp only [A375980]

end A375980

/-! ## A375980.P7138831603139809292

`record[A000196(A336269(n))]`
-/

namespace A375980.P7138831603139809292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336269 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375980.P7138831603139809292

namespace A375980

/-- `record[A000196(A336269(n))]` -/
def P7138831603139809292.Spec : Prop :=
  ∀ n, P7138831603139809292.a n = A375980 n

end A375980

/-! ## A375980.P1469727030804095060

`A071626(A115975(n+1)+A114901(2*(n+1)))`
-/

namespace A375980.P1469727030804095060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A115975 (n + 1) + A114901 (2 * (n + 1))).toNat

end

end A375980.P1469727030804095060

namespace A375980

/-- `A071626(A115975(n+1)+A114901(2*(n+1)))` -/
def P1469727030804095060.Spec : Prop :=
  ∀ n, P1469727030804095060.a n = A375980 n

end A375980

/-! ## A375980.P2712934576540938070

`A000196(xor(A064989(n+1), A193286(3*n+2)))`
-/

namespace A375980.P2712934576540938070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A064989 (n + 1)) (A193286 (3 * n + 2))).toNat

end

end A375980.P2712934576540938070

namespace A375980

/-- `A000196(xor(A064989(n+1), A193286(3*n+2)))` -/
def P2712934576540938070.Spec : Prop :=
  ∀ n, P2712934576540938070.a n = A375980 n

end A375980

/-! ## A375980.P17594447739029978247

`A180447(A131577(n+3)-(A248574(n)-floor(2^(n-1))))`
-/

namespace A375980.P17594447739029978247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A131577 (n + 3) - (A248574 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋)).toNat

end

end A375980.P17594447739029978247

namespace A375980

/-- `A180447(A131577(n+3)-(A248574(n)-floor(2^(n-1))))` -/
def P17594447739029978247.Spec : Prop :=
  ∀ n, P17594447739029978247.a n = A375980 n

end A375980

/-!
# A375981: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 4, or 5.

The programs for A375981, there is no canonical definition to state claims against.
-/

/-! ## A375981.P277021522894510604

`A357409(A175305(n+1))`
-/

namespace A375981.P277021522894510604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A175305 (n + 1)).toNat

end

end A375981.P277021522894510604

/-! ## A375981.P8672339270511942510

`∑[A200651(∑[A370169(n)])]`
-/

namespace A375981.P8672339270511942510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200651 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375981.P8672339270511942510

/-! ## A375981.P7064845688296427658

`∑[A048881(A289653(n+1))+1]`
-/

namespace A375981.P7064845688296427658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A289653 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375981.P7064845688296427658

/-! ## A375981.P4743593784782359085

`∑[∑[A076493(A000045(2*(n+1)))]]`
-/

namespace A375981.P4743593784782359085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 (A000045 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375981.P4743593784782359085

/-! ## A375981.P1036089017365776015

`A123740(A191605(n))+A036469(n)`
-/

namespace A375981.P1036089017365776015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A191605 n).toNat + A036469 n

end

end A375981.P1036089017365776015

/-!
# A375982: Number of subsets of {1,2,...,n} such that no two elements differ by 2, 3, or 5.

The programs for A375982, there is no canonical definition to state claims against.
-/

/-! ## A375982.P16944150744823950502

`∑[A163352(∑[A336022(n+1)])]`
-/

namespace A375982.P16944150744823950502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336022 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375982.P16944150744823950502

/-!
# A375983: Number of subsets of {1,2,...,n} such that no two elements differ by 2, 4, or 5.

The programs for A375983, the canonical program `A375983.P8616890972294068502` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375983 has offset 0).

The definition of A375983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375983.P8616890972294068502

`a(n-1)+a(n-3)-a(n-4)+a(n-6)+a(n-7)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=9, a(5)=12, a(6)=15, a(7)=20, a(8)=28, a(9)=40`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375983

/-- `a(n-1)+a(n-3)-a(n-4)+a(n-6)+a(n-7)-a(n-10)` -/
def P8616890972294068502.Spec : Prop :=
  ∀ n, P8616890972294068502.a n = A375983 n

theorem P8616890972294068502.correct : P8616890972294068502.Spec := by
  intro n
  simp only [A375983]

end A375983

/-! ## A375983.P7623374561832999388

`A347623(∑[∑[A053445(n)]])`
-/

namespace A375983.P7623374561832999388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375983.P7623374561832999388

namespace A375983

/-- `A347623(∑[∑[A053445(n)]])` -/
def P7623374561832999388.Spec : Prop :=
  ∀ n, P7623374561832999388.a n = A375983 n

end A375983

/-! ## A375983.P33275003958600929

`∑[A070080(A382181(n)+3)]`
-/

namespace A375983.P33275003958600929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (A382181 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375983.P33275003958600929

namespace A375983

/-- `∑[A070080(A382181(n)+3)]` -/
def P33275003958600929.Spec : Prop :=
  ∀ n, P33275003958600929.a n = A375983 n

end A375983

/-! ## A375983.P18276728191405706245

`∑[∑[A037856(A087110(n+3))]]`
-/

namespace A375983.P18276728191405706245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (A087110 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375983.P18276728191405706245

namespace A375983

/-- `∑[∑[A037856(A087110(n+3))]]` -/
def P18276728191405706245.Spec : Prop :=
  ∀ n, P18276728191405706245.a n = A375983 n

end A375983

/-! ## A375983.P18400207237197981994

`lt[A033103(n+2), Δ[A002107(n)]]`
-/

namespace A375983.P18400207237197981994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375983.P18400207237197981994

namespace A375983

/-- `lt[A033103(n+2), Δ[A002107(n)]]` -/
def P18400207237197981994.Spec : Prop :=
  ∀ n, (P18400207237197981994.a n : ℤ) = A375983 n

end A375983

/-!
# A375984: Number of subsets of {1,2,...,n} such that no two elements differ by 3, 4, or 5.

The programs for A375984, the canonical program `A375984.P2292174793063052379` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375984 has offset 0).

The definition of A375984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375984.P2292174793063052379

`a(n-1)+a(n-6)+a(n-7)+2*a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=16, a(6)=20, a(7)=25`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375984

/-- `a(n-1)+a(n-6)+a(n-7)+2*a(n-8)` -/
def P2292174793063052379.Spec : Prop :=
  ∀ n, (P2292174793063052379.a n : ℤ) = A375984 n

theorem P2292174793063052379.correct : P2292174793063052379.Spec := by
  intro n
  simp only [A375984]

end A375984

/-! ## A375984.P17467665124885548224

`A286044(A002805(n+1))+A160408(n+1)`
-/

namespace A375984.P17467665124885548224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (A002805 (n + 1)).toNat + A160408 (n + 1)

end

end A375984.P17467665124885548224

namespace A375984

/-- `A286044(A002805(n+1))+A160408(n+1)` -/
def P17467665124885548224.Spec : Prop :=
  ∀ n, P17467665124885548224.a n = A375984 n

end A375984

/-! ## A375984.P2219949313217449066

`A376665(∑[∑[A275973(n+1)]])`
-/

namespace A375984.P2219949313217449066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376665 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375984.P2219949313217449066

namespace A375984

/-- `A376665(∑[∑[A275973(n+1)]])` -/
def P2219949313217449066.Spec : Prop :=
  ∀ n, P2219949313217449066.a n = A375984 n

end A375984

/-! ## A375984.P2381022486212489010

`∑[A179751(∏[A171528(n+1)])]`
-/

namespace A375984.P2381022486212489010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375984.P2381022486212489010

namespace A375984

/-- `∑[A179751(∏[A171528(n+1)])]` -/
def P2381022486212489010.Spec : Prop :=
  ∀ n, P2381022486212489010.a n = A375984 n

end A375984

/-! ## A375984.P3946617400862638565

`∑[∑[A319000(A374427(n+4))]]`
-/

namespace A375984.P3946617400862638565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A374427 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375984.P3946617400862638565

namespace A375984

/-- `∑[∑[A319000(A374427(n+4))]]` -/
def P3946617400862638565.Spec : Prop :=
  ∀ n, P3946617400862638565.a n = A375984 n

end A375984

/-!
# A375985: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 3, 4, or 5.

The programs for A375985, the canonical program `A375985.P12001066988126278054` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375985 has offset 0).

The definition of A375985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375985.P12001066988126278054

`a(n-1)+a(n-6)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=11, a(7)=14`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375985

/-- `a(n-1)+a(n-6)+a(n-8)` -/
def P12001066988126278054.Spec : Prop :=
  ∀ n, (P12001066988126278054.a n : ℤ) = A375985 n

theorem P12001066988126278054.correct : P12001066988126278054.Spec := by
  intro n
  simp only [A375985]

end A375985

/-! ## A375985.P8498814903701412089

`∑[∑[A160381(A188775(n+1))]]`
-/

namespace A375985.P8498814903701412089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A188775 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375985.P8498814903701412089

namespace A375985

/-- `∑[∑[A160381(A188775(n+1))]]` -/
def P8498814903701412089.Spec : Prop :=
  ∀ n, P8498814903701412089.a n = A375985 n

end A375985

/-! ## A375985.P588469401699280466

`A293230(n)-A124762(A201625(n+1))`
-/

namespace A375985.P588469401699280466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - A124762 (A201625 (n + 1)).toNat

end

end A375985.P588469401699280466

namespace A375985

/-- `A293230(n)-A124762(A201625(n+1))` -/
def P588469401699280466.Spec : Prop :=
  ∀ n, P588469401699280466.a n = A375985 n

end A375985

/-!
# A375988: Expansion of e.g.f. (1 + 3 * log(1 - x))^(4/3).

The programs for A375988, there is no canonical definition to state claims against.
-/

/-! ## A375988.P331708335931575879

`A370382(a(n-1))` with `a(0)=1, a(1)=-4, a(2)=0, a(3)=12`
-/

namespace A375988.P331708335931575879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 0, 12] fun n a =>
  A370382 (a (n - 1)).toNat

end

end A375988.P331708335931575879

/-!
# A375992: Expansion of e.g.f. (4 - 3 * exp(x))^(4/3).

The programs for A375992, there is no canonical definition to state claims against.
-/

/-! ## A375992.P11638786778277863044

`A224821(A180789(n+1))`
-/

namespace A375992.P11638786778277863044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224821 (A180789 (n + 1)).toNat

end

end A375992.P11638786778277863044

/-!
# A375993: Expansion of e.g.f. (4 - 3 * exp(x))^(5/3).

The programs for A375993, there is no canonical definition to state claims against.
-/

/-! ## A375993.P10350009227400834719

`A219973(n)+A056141(A047701(2*(n+2)))`
-/

namespace A375993.P10350009227400834719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219973 n + A056141 (A047701 (2 * (n + 2))).toNat

end

end A375993.P10350009227400834719

/-!
# A375995: Number of subwords of the form UUUU in nondecreasing Dyck paths of length 2n.

The programs for A375995, there is no canonical definition to state claims against.
-/

/-! ## A375995.P15161825320857366283

`A127036(A293064(n))`
-/

namespace A375995.P15161825320857366283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127036 (A293064 n).toNat

end

end A375995.P15161825320857366283

/-! ## A375995.P13913408739573620464

`A065719(A129369(n))`
-/

namespace A375995.P13913408739573620464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A129369 n).toNat

end

end A375995.P13913408739573620464

/-! ## A375995.P13945905624132972561

`A165927(A217699(n))`
-/

namespace A375995.P13945905624132972561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (A217699 n).toNat

end

end A375995.P13945905624132972561

/-! ## A375995.P13314156458400914973

`A165927(A226022(n))`
-/

namespace A375995.P13314156458400914973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (A226022 n).toNat

end

end A375995.P13314156458400914973

/-!
# A375996: Number of integers y > 0 such that y < (n/2+x)*sqrt(3) and y < (n/2-x)*sqrt(3).

The programs for A375996, there is no canonical definition to state claims against.
-/

/-! ## A375996.P12493995493832426088

`floor((A003215(n)*A296121(A106856(3*n+2))+1)/7)`
-/

namespace A375996.P12493995493832426088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003215 n * A296121 (A106856 (3 * n + 2)).toNat + 1 : ℚ) / 7⌋

end

end A375996.P12493995493832426088

/-! ## A375996.P6081635846917527810

`floor((A003215(n)*A296121(A005471(n+1))+1)/7)`
-/

namespace A375996.P6081635846917527810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003215 n * A296121 (A005471 (n + 1)).toNat + 1 : ℚ) / 7⌋

end

end A375996.P6081635846917527810

/-! ## A375996.P4233311643535384109

`A057356(∑[record[A322041(n+1)]])`
-/

namespace A375996.P4233311643535384109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322041 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375996.P4233311643535384109

/-! ## A375996.P11519611014793263915

`eq[1, A260355(A366701(2*(n+1)))]`
-/

namespace A375996.P11519611014793263915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 (A366701 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375996.P11519611014793263915

/-! ## A375996.P11756122626877704460

`∑[n+1-A354578(n²)]`
-/

namespace A375996.P11756122626877704460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A354578 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375996.P11756122626877704460

/-!
# A375999: Narayana numbers (A001263), sorted, duplicates removed.

The programs for A375999, the canonical program `A375999.P7786675138920784206` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375999 has offset 1).

The definition of A375999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375999.P7786675138920784206

`lt[0, char[A001263(n+1)]]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A375999

/-- `lt[0, char[A001263(n+1)]]` -/
def P7786675138920784206.Spec : Prop :=
  ∀ n, (P7786675138920784206.a n : ℤ) = A375999 (n + 1)

theorem P7786675138920784206.correct : P7786675138920784206.Spec := by
  intro n
  simp only [A375999, Nat.add_sub_cancel]

end A375999

/-! ## A375999.P2385429972706798155

`eq[1, char[A001263(n+2)]]`
-/

namespace A375999.P2385429972706798155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375999.P2385429972706798155

namespace A375999

/-- `eq[1, char[A001263(n+2)]]` -/
def P2385429972706798155.Spec : Prop :=
  ∀ n, (P2385429972706798155.a n : ℤ) = A375999 (n + 1)

end A375999

/-! ## A375999.P11480519810282564173

`lt[A007376(A347645(n)), A143320(n+1)]`
-/

namespace A375999.P11480519810282564173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A347645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375999.P11480519810282564173

namespace A375999

/-- `lt[A007376(A347645(n)), A143320(n+1)]` -/
def P11480519810282564173.Spec : Prop :=
  ∀ n, (P11480519810282564173.a n : ℤ) = A375999 (n + 1)

end A375999

/-! ## A375999.P829945906878353611

`lt[A056595(A131344(2*(n+2))), A143320(n+1)]`
-/

namespace A375999.P829945906878353611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A131344 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375999.P829945906878353611

namespace A375999

/-- `lt[A056595(A131344(2*(n+2))), A143320(n+1)]` -/
def P829945906878353611.Spec : Prop :=
  ∀ n, (P829945906878353611.a n : ℤ) = A375999 (n + 1)

end A375999

/-! ## A375999.P16196361737006972755

`lt[A071026(A069529(2*n+3)), A143318(n+1)]`
-/

namespace A375999.P16196361737006972755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071026 (A069529 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375999.P16196361737006972755

namespace A375999

/-- `lt[A071026(A069529(2*n+3)), A143318(n+1)]` -/
def P16196361737006972755.Spec : Prop :=
  ∀ n, (P16196361737006972755.a n : ℤ) = A375999 (n + 1)

end A375999

